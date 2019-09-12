#include "mutters.h"
#include "mutters_serial.h"
#include "HL_sci.h"

#include <stddef.h>

static uint8_t __mutt_ser_initialized = 0;

MUTT_Error_t mutt_serial_init() {
	sciInit();
	__mutt_ser_initialized = 1;
	return MUTT_OK;
}

static size_t strlen(uint8_t* str) {
	size_t ret = 0;
	while (str[ret++] != '\0') {
		if (ret > 256U) {
			ret = 0;
			break;
		}
	}
	return ret;
}

MUTT_Error_t mutt_serial_send(uint8_t* message) {
	size_t sz = 0;
	MUTT_Error_t ret = MUTT_OK;
	
	if (__mutt_ser_initialized == 0) {
		ret = MUTT_ERROR;
	}

	if (ret == MUTT_OK) {
		sz = strlen(message);
		if (sz > 0) {
			sciSend(sciREG1, sz, message);
		} else {
			ret = MUTT_ERROR;
		}
	} else {
		ret = MUTT_ERROR;
	}

	return ret;
}
