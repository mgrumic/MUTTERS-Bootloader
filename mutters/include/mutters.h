#ifndef __MUTTERS_H
#define __MUTTERS_H

#include <stdint.h>

// Structure of MUTT compatible firmware
typedef struct _MUTT_Firmware_t {
	uint32_t length;
	uint32_t reserved_1;
	uint32_t crc64_h;
	uint32_t crc64_l;
	uint32_t reserved_2;
	uint32_t reserved_3;
	uint32_t reserved_4;
	uint32_t reserved_5;
} MUTT_Firmware_t;

typedef enum _MUTT_Error_t {
	MUTT_OK,
	MUTT_ERROR
} MUTT_Error_t;

#endif // __MUTTERS_H
