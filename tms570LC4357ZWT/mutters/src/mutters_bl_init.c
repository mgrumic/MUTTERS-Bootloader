/*
 * mutters_bl_init.c
 *
 *  Created on: 7 Dec 2018
 *      Author: mgrumic
 */

#include <string.h>
#include <stdio.h>
#include "HL_sci.h"
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

fw_start_t fw_start = (fw_start_t) 0x10000;

int mutters_bl_init() {
	char message [100] = { 0x0 };
	uint32_t addr = 0x123480;
	const MUTT_Flash_Sector_t* sect = NULL;
	
	copyRamFuncs();

	sciInit();
	snprintf(message, 100, "Start: 0x%p   End: 0x%p\n\r\n\r", &__mutt_flash_start, &__mutt_flash_end);
	uart_send(message);
	MUTT_flash_init(300U);

	sect = MUTT_get_flash_sector(addr);
	
	snprintf(message, 100, "Sector for address: 0x%08X:\n\rStart: 0x%08X\n\r"
					  "Length:%08X\n\rBank: 0x%08X\n\rSector number: 0x%08X\n\n\r",
					  addr, sect->start, sect->length, sect->bank, sect->sector_number);
	uart_send(message);
	fw_start();
	exit(1);

	return 0;
}


