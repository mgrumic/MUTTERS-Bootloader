/*
 * mutters_bl_init.c
 *
 *  Created on: 7 Dec 2018
 *      Author: mgrumic
 */

#include <string.h>
#include <stdio.h>
#include "HL_sci.h"
#include "HL_crc.h"
#include "mutters_flash.h"

#define STR_MAX_SZ 255

void exit(int);

void uart_send(char* message) {
    sciSend((sciBASE_t*) sciREG1, strlen(message), (uint8_t*) message);
}

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

typedef void (*fw_start_t)(void);

uint64_t crcBuff[16] = {
	0xBAADF00DBAADF00DULL,
	0xBAADF00DBAADF00DULL,
	0xBAADF00DBAADF00DULL,
	0xBAADF00DBAADF00DULL,
	0xBAADF00DBAADF00DULL,
	0xBAADF00DBAADF00DULL,
	0xBAADF00DBAADF00DULL,
	0xBAADF00DBAADF00DULL,
	0xBAADF00DBAADF00DULL,
	0xBAADF00DBAADF00DULL,
	0xBAADF00DBAADF00DULL,
	0xBAADF00DBAADF00DULL,
	0xBAADF00DBAADF00DULL,
	0xBAADF00DBAADF00DULL,
	0xBAADF00DBAADF00DULL,
	0xBAADF00DBAADF00DULL
};

char message[100] = { 0 };

void calculateCrc() {
	uint64_t crcResult = 0x0ULL;

	crcModConfig_t crcMod = { 0 };

	crcMod.mode = CRC_FULL_CPU;
	crcMod.crc_channel = 0;
	crcMod.src_data_pat = crcBuff;
	crcMod.data_length = 16;

	crcSignGen(crcREG1, &crcMod);
	
	crcResult = crcGetSectorSig(crcREG1, 0);

	snprintf(message, 100, "CRC Value:0x%08X%08X \r\n\r\n", (uint32_t)(crcResult >> 32), (uint32_t)(crcResult));
	uart_send(message);

}

fw_start_t fw_start = (fw_start_t) 0x10000;

int mutters_bl_init() {
	
	copyRamFuncs();

	sciInit();
	

	crcInit();

	
	calculateCrc();

	// if (update_flag) {
	// 	update();
	// }
	
	



	fw_start();
	exit(1);

	return 0;
}


