#include <stddef.h>
#include "hal_serial.h"
#include "common.h"
#include "HL_sci.h"

static uint8_t uart_initialized = 0;

MUT_Error uart_init() {
	sciInit();
	uart_initialized = 1;
	return MUT_NO_ERROR;
}

size_t strlen(uint8_t* str) {
	size_t ret = 0;
	while (str[ret++] != '\0') {
		if (ret > STRLEN_MAX) {
			ret = 0;
			break;
		}
	}
	return ret;
}

MUT_Error hal_uart_send(uint8_t* message) {
	size_t sz = 0;
	MUT_Error ret = MUT_NO_ERROR;
	
	if (uart_initialized == 0) {
		ret = MUT_ERROR;
	}
	sz = strlen(message);
	if (ret == MUT_NO_ERROR && sz != 0) {
		sciSend(sciREG1, sz, message);
	} else {
		ret = MUT_ERROR;
	}

	return ret;
}
