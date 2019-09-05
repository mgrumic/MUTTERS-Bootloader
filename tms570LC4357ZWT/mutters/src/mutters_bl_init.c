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
	
	copyRamFuncs();

	sciInit();

	// if (update_flag) {
	// 	update();
	// }
	


	fw_start();
	exit(1);

	return 0;
}


