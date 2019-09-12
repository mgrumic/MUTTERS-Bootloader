#ifndef __MUTTERS_CRC
#define __MUTTERS_CRC

#include <stddef.h>

#include "mutters.h"

typedef uint64_t mutt_crc64_t;

MUTT_Error_t mutters_crc_init();

MUTT_Error_t mutters_crc_calculate(mutt_crc64_t* crc_buffer, size_t length, mutt_crc64_t* crc);

#endif // __MUTERS_CRC
