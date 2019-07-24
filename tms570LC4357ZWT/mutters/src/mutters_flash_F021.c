// mutters_flash.c
//

#include <stdint.h>
#include <string.h>

#include "mutters_flash.h"

#include "F021.h"

extern MUTT_Flash_Sector_t MUTT_Flash_Sectors[MUTT_FLASH_NO_SECTORS];

static MUTT_Flash_Sector_t __private_MUTT_sec = { 0 };

//const MUTT_Flash_Sector_t* MUTT_get_flash_sector(uint32_t addr) __attribute__((section(".mutt_flash")));

//uint32_t MUTT_flash_init(uint32_t hclk) __attribute__((section(".mutt_flash"))) {



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

	return (ret != Fapi_Status_Success);
}
