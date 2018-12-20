/*
 * mutters_bl_init.c
 *
 *  Created on: 7 Dec 2018
 *      Author: mgrumic
 */

#include "HL_sci.h"

#define STR_MAX_SZ 255

void exit(int);

uint32 strlen(char* str) {
	int ret = 0;
	while (str[ret] != '\0' && ret < STR_MAX_SZ) {
		ret++;
	}
	return ret;
}

void uart_send(char* message) {
    sciSend((sciBASE_t*) sciREG1, strlen(message), (uint8_t*) message);
}

typedef void (*fw_start_t)(void);

fw_start_t fw_start = (fw_start_t) 0x13a34;

int mutters_bl_init() {
	char* message = "Starting FW...\r\n";
	sciInit();
	uart_send(message);
	fw_start();
	exit(1);
}

void exit(int a) {
    while(1);
}


