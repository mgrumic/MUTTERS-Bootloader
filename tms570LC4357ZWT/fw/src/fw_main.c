#include "common.h"
#include "serial.h"

int fw_main() {
	while(1) {
		uart_send((uint8_t*) "Hello from FW!!!\r\n");
	}
	return 0;
}
