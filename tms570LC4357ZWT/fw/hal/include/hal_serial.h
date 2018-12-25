#ifndef __HAL_SERIAL_H
#define __HAL_SERIAL_H

#include <stdint.h>
#include "common.h"

extern MUT_Error hal_uart_send(uint8_t* message);

extern MUT_Error hal_uart_init(void);

#endif // __HAL_SERIAL_H
