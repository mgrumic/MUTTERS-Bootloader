#ifndef __SERIAL_H
#define __SERIAL_H

#include <stdint.h>
#include "common.h"

extern MUT_Error uart_send(uint8_t* message);

#endif // __SERIAL_H
