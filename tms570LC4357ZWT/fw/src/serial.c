#include "common.h"
#include "hal_serial.h"

MUT_Error uart_send(uint8_t* message) {
	return hal_uart_send(message);
}

MUT_Error uart_init() {
	return hal_uart_init();
}

