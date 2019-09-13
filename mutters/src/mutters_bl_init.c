/*
 * mutters_bl_init.c
 *
 *  Created on: 7 Dec 2018
 *      Author: mgrumic
 */

#include <string.h>
#include <stdio.h>

#include "mutters.h"
#include "mutters_flash.h"
#include "mutters_serial.h"
#include "mutters_crc.h"

void exit(int);

extern uint32_t __mutt_flash_start;
extern uint32_t __mutt_flash_end;
extern uint32_t __mutt_flash_run_start;
extern MUTT_Firmware_t* __mutt_firmware_address;


void copyRamFuncs() {
	uint8_t* start = (uint8_t*) &__mutt_flash_start;
	uint8_t* end   = (uint8_t*) &__mutt_flash_end;
	uint8_t* dest  = (uint8_t*) &__mutt_flash_run_start;

	while (start != end) {
		*dest++ = *start++;
	}
}


static MUTT_Error_t MUTT_Verify(MUTT_Firmware_t* fw) {
	// Find crc
	// Calculate crc
	// Equal ? OK : ERROR
	//
	mutt_crc64_t crc = 0ULL;
	mutt_crc64_t calc_crc = 0ULL;
	uint32_t length = 0;
	char buffer[128];
	MUTT_Error_t ret = MUTT_OK;

	crc = (mutt_crc64_t)(((uint64_t)fw->crc64_h) << 32 | (uint64_t)fw->crc64_l);

	length = fw->length;	
	
	mutt_crc64_t* fw_bin = (mutt_crc64_t*)(fw + 1);

	mutters_crc_calculate(((uint8_t*)fw) + sizeof(MUTT_Firmware_t), length / 8, &calc_crc);
	
	if (crc != calc_crc) {
		ret = MUTT_ERROR;
	}

	return ret;
}

static void MUTT_Start(MUTT_Firmware_t* fw) {
	if (fw != NULL) {
		((void (*)()) (fw + 1))();
	}
}

int mutters_bl_init() {
	
	copyRamFuncs();

	mutt_serial_init();
	mutters_crc_init();

	if (MUTT_OK == MUTT_Verify(__mutt_firmware_address)) {
		MUTT_Start(__mutt_firmware_address);
	} else {
		mutt_serial_send("Firmware Verification failed, halting the system!!!\r\n");
	}

	exit(1);

	return 0;
}


