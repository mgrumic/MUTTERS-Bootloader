#include "mutters.h"
#include "mutters_crc.h"
#include "HL_crc.h"

#include <stddef.h>

MUTT_Error_t mutters_crc_init() {
	crcInit();
	
	crcChannelReset(crcREG1, 0);

	return MUTT_OK;

}

/*
void calculateCrc() {
	uint64_t crcResult = 0x0ULL;

	crcModConfig_t crcMod = { 0 };

	crcMod.mode = CRC_FULL_CPU;
	crcMod.crc_channel = 0;
	crcMod.src_data_pat = crcBuff;
	crcMod.data_length = 16;

	crcSignGen(crcREG1, &crcMod);
	
	crcResult = crcGetSectorSig(crcREG1, 0);

	uart_send(message);

}
*/

MUTT_Error_t mutters_crc_calculate(mutt_crc64_t* buffer, size_t length, mutt_crc64_t* crc) {
	crcModConfig_t crcMod = { 0 };

	crcMod.mode = CRC_FULL_CPU;
	crcMod.crc_channel = 0;
	crcMod.src_data_pat = buffer;
	crcMod.data_length = length;

	crcSignGen(crcREG1, &crcMod);

	*crc = crcGetSectorSig(crcREG1, 0);

	return MUTT_OK;
}

