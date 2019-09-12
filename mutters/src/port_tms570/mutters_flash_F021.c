// mutters_flash.c
//

#include <stdint.h>
#include <string.h>

#include "mutters_flash.h"

#include "F021.h"

extern MUTT_Flash_Sector_t MUTT_Flash_Sectors[MUTT_FLASH_NO_SECTORS];

static MUTT_Flash_Sector_t __private_MUTT_sec = { 0 };


const MUTT_Flash_Sector_t* MUTT_get_flash_sector(uint32_t addr) {
	const MUTT_Flash_Sector_t* ret = NULL;
	uint32_t i = 0;


	for (i = 0; i < MUTT_FLASH_NO_SECTORS; i++) {
		const MUTT_Flash_Sector_t* sec = &MUTT_Flash_Sectors[i];
		if((sec->start <= addr) && (addr < sec->start + sec->length)) {
			__private_MUTT_sec.start = sec->start;
			__private_MUTT_sec.length = sec->length;
			__private_MUTT_sec.bank = sec->bank;
			__private_MUTT_sec.sector_number = sec->sector_number;
			break;
		}
	}
	
	if (i < MUTT_FLASH_NO_SECTORS) {
		ret = &__private_MUTT_sec;
	} else {
		ret = NULL;
	}

	return ret;
}

uint32_t MUTT_flash_init(uint32_t hclk) {
	Fapi_StatusType ret = Fapi_Status_Success;
	
	ret = Fapi_initializeFlashBanks(hclk);

	return (uint32_t) ret;
}


static Fapi_StatusType F021_prepare_flash_bank(const MUTT_Flash_Sector_t* start, const MUTT_Flash_Sector_t* end) {
	Fapi_StatusType fstatus = Fapi_Status_Success;

	fstatus = Fapi_setActiveFlashBank((Fapi_FlashBankType)start->bank);
	
	if (fstatus == Fapi_Status_Success) {
		uint16_t sectors = 0x0000;

		MUTT_SET_BITS(sectors, start->sector_number, end->sector_number);
		fstatus = Fapi_enableMainBankSectors(sectors);
	}

	if (fstatus == Fapi_Status_Success) {
		while (FAPI_CHECK_FSM_READY_BUSY != Fapi_Status_FsmReady);
	}

	return fstatus;

}

/*
 * Call MUTT_flash_init every time before calling this function (probably)
 */
uint32_t MUTT_flash_write(uint32_t* addr, uint32_t len, uint8_t* buffer) {
	Fapi_StatusType fstatus = Fapi_Status_Success;
	const MUTT_Flash_Sector_t* sector_start = MUTT_get_flash_sector((uint32_t)addr);
	const MUTT_Flash_Sector_t* sector_end   = MUTT_get_flash_sector((uint32_t)(addr + len - 1));
	uint32_t ret = 0;

	if (sector_start->bank == sector_end->bank) {
		fstatus = F021_prepare_flash_bank(sector_start, sector_end);

		if (fstatus == Fapi_Status_Success) {
			fstatus = Fapi_issueProgrammingCommand(addr, buffer, len, NULL, 0, Fapi_DataOnly);
		}
			
			
		if (fstatus == Fapi_Status_Success) {
			while (FAPI_CHECK_FSM_READY_BUSY == Fapi_Status_FsmBusy);
		}

		if (Fapi_getFsmStatus() != 0) {
			fstatus = Fapi_Error_Fail;
		}

	}
		
	return ret;
}

uint32_t MUTT_flash_erase(uint32_t addr, uint32_t len) {
	uint32_t ret = 0;

	Fapi_StatusType fstatus = Fapi_Status_Success;
	const MUTT_Flash_Sector_t* sector_start = MUTT_get_flash_sector(addr);
	const MUTT_Flash_Sector_t* sector_end	  =	MUTT_get_flash_sector(addr + len - 1);

	if (sector_start->bank == sector_end->bank) {
		const MUTT_Flash_Sector_t* iter_sector = sector_start;
		// Call Fapi_setActiveFlashBank() for current bank
		
		fstatus = F021_prepare_flash_bank(sector_start, sector_end);

		while((fstatus == Fapi_Status_Success) && (iter_sector->sector_number <= sector_end->sector_number)) {
			if (fstatus == Fapi_Status_Success) {
				fstatus = Fapi_issueAsyncCommandWithAddress(Fapi_EraseSector, sector_start->start);
			}
			
			
			if (fstatus == Fapi_Status_Success) {
				while (FAPI_CHECK_FSM_READY_BUSY == Fapi_Status_FsmBusy);
			}

			if (Fapi_getFsmStatus() != 0) {
				fstatus = Fapi_Error_Fail;
			}

			return fstatus;

			iter_sector++;
		}

	}

	return ret;
}





