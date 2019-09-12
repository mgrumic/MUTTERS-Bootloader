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

void copyRamFuncs() {
	uint8_t* start = (uint8_t*) &__mutt_flash_start;
	uint8_t* end   = (uint8_t*) &__mutt_flash_end;
	uint8_t* dest  = (uint8_t*) &__mutt_flash_run_start;

	while (start != end) {
		*dest++ = *start++;
	}
}


MUTT_Error_t MUTT_Verify(MUTT_Firmware_t* fw) {
	// Find crc
	// Calculate crc
	// Equal ? OK : ERROR
	//
	mutt_crc64_t crc = 0ULL;
	mutt_crc64_t calc_crc = 0ULL;
	uint32_t length = 0;
	char buffer[128];

	mutt_serial_init();
	mutters_crc_init();

	crc = (mutt_crc64_t)(((uint64_t)fw->crc64_h) << 32 | (uint64_t)fw->crc64_l);

	length = fw->length;	
	
	snprintf(buffer, 128, "Length: %d\r\n", length);
	mutt_serial_send(buffer);

	mutt_crc64_t* fw_bin = (mutt_crc64_t*)(fw + 1);

	mutters_crc_calculate(((uint8_t*)fw) + sizeof(MUTT_Firmware_t), length / 8, &calc_crc);
	int i;
	uint64_t* fw_ptr = (fw + 1);
	//for (i = 0; i < (length / 8); i++) {
	//	snprintf(buffer, 128, "0x%08X%08X\r\n", (uint32_t)(fw_ptr[i] >> 32), (uint32_t)fw_ptr[i]);
	//	mutt_serial_send(buffer);
	//}

	/*
	uint64_t data[64] = {
		0x1122334455667788ULL,
		0x8877665544332211ULL,
		0x1122334455667788ULL,
		0x8877665544332211ULL,
		0x1122334455667788ULL,
		0x8877665544332211ULL,
		0x1122334455667788ULL,
		0x8877665544332211ULL,
		0x1122334455667788ULL,
		0x8877665544332211ULL,
		0x1122334455667788ULL,
		0x8877665544332211ULL,
		0x1122334455667788ULL,
		0x8877665544332211ULL,
		0x1122334455667788ULL,
		0x8877665544332211ULL
	};

	mutters_crc_calculate(&data, 64, &calc_crc);
	*/
	snprintf(buffer, 128, "FW_BIN: 0x%p\r\n", fw_bin);
	mutt_serial_send(buffer);

	snprintf(buffer, 128, "CALCULATED CRC: 0x%08X%08X\r\n", ((uint32_t)(calc_crc >> 32)), (uint32_t)(calc_crc));
	mutt_serial_send(buffer);
	
	snprintf(buffer, 128, "DELIVERED CRC: 0x%08X%08X\r\n", ((uint32_t)(crc >> 32)), (uint32_t)(crc));
	mutt_serial_send(buffer);
}


MUTT_Firmware_t* fw = (MUTT_Firmware_t*) 0x10000;

int mutters_bl_init() {
	
	copyRamFuncs();

	if (MUTT_OK == MUTT_Verify(fw)) {

		//MUTT_Start(fw);
	}

	exit(1);

	return 0;
}


