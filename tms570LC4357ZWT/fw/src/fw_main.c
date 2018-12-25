#include "common.h"
#include "serial.h"

int fw_main() {
	uart_init();
	while(1) {
		uart_send((uint8_t*) "Hello from FW!!!\r\n");
	}
	return 0;
}

void exit(int _status)
{
	while(1);
}

