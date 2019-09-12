// mutters_flash_config.c
//

#include <stdint.h>
#include "mutters_flash.h"

const MUTT_Flash_Sector_t \
	MUTT_Flash_Sectors[MUTT_FLASH_NO_SECTORS] = {
		// Bank 0
		{
		  .start 		 = (uint32_t)0x00000000U,
		  .length 		 = (uint32_t)0x00004000U, 
		  .bank   		 = MUTT_BANK_0, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0x00004000U,
		  .length 		 = (uint32_t)0x00004000U, 
		  .bank   		 = MUTT_BANK_0, 
		  .sector_number = (uint8_t) 1U
		},
		{
		  .start 		 = (uint32_t)0x00008000U,
		  .length 		 = (uint32_t)0x00004000U, 
		  .bank   		 = MUTT_BANK_0, 
		  .sector_number = (uint8_t) 2U
		},
		{
		  .start 		 = (uint32_t)0x0000C000U,
		  .length 		 = (uint32_t)0x00004000U, 
		  .bank   		 = MUTT_BANK_0, 
		  .sector_number = (uint8_t) 3U
		},
		{
		  .start 		 = (uint32_t)0x00010000U,
		  .length 		 = (uint32_t)0x00004000U, 
		  .bank   		 = MUTT_BANK_0, 
		  .sector_number = (uint8_t) 4U
		},
		{
		  .start 		 = (uint32_t)0x00014000U,
		  .length 		 = (uint32_t)0x00004000U, 
		  .bank   		 = MUTT_BANK_0, 
		  .sector_number = (uint8_t) 5U
		},
		{
		  .start 		 = (uint32_t)0x00018000U,
		  .length 		 = (uint32_t)0x00008000U, 
		  .bank   		 = MUTT_BANK_0, 
		  .sector_number = (uint8_t) 6U
		},
		{
		  .start 		 = (uint32_t)0x00020000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_0, 
		  .sector_number = (uint8_t) 7U
		},
		{
		  .start 		 = (uint32_t)0x00040000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_0, 
		  .sector_number = (uint8_t) 8U
		},
		{
		  .start 		 = (uint32_t)0x00060000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_0, 
		  .sector_number = (uint8_t) 9U
		},
		{
		  .start 		 = (uint32_t)0x00080000U,
		  .length 		 = (uint32_t)0x00040000U, 
		  .bank   		 = MUTT_BANK_0, 
		  .sector_number = (uint8_t) 10U
		},
		{
		  .start 		 = (uint32_t)0x000C0000U,
		  .length 		 = (uint32_t)0x00040000U, 
		  .bank   		 = MUTT_BANK_0, 
		  .sector_number = (uint8_t) 11U
		},
		{
		  .start 		 = (uint32_t)0x00100000U,
		  .length 		 = (uint32_t)0x00040000U, 
		  .bank   		 = MUTT_BANK_0, 
		  .sector_number = (uint8_t) 12U
		},
		{
		  .start 		 = (uint32_t)0x00140000U,
		  .length 		 = (uint32_t)0x00040000U, 
		  .bank   		 = MUTT_BANK_0, 
		  .sector_number = (uint8_t) 13U
		},
		{
		  .start 		 = (uint32_t)0x00180000U,
		  .length 		 = (uint32_t)0x00040000U, 
		  .bank   		 = MUTT_BANK_0, 
		  .sector_number = (uint8_t) 14U
		},
		{
		  .start 		 = (uint32_t)0x001C0000U,
		  .length 		 = (uint32_t)0x00040000U, 
		  .bank   		 = MUTT_BANK_0, 
		  .sector_number = (uint8_t) 15U
		},
		// Bank 1
		{
		  .start 		 = (uint32_t)0x00200000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0x00220000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 1U
		},
		{
		  .start 		 = (uint32_t)0x00240000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 2U
		},
		{
		  .start 		 = (uint32_t)0x00260000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 3U
		},
		{
		  .start 		 = (uint32_t)0x00280000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 4U
		},
		{
		  .start 		 = (uint32_t)0x002A0000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 5U
		},
		{
		  .start 		 = (uint32_t)0x002C0000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 6U
		},
		{
		  .start 		 = (uint32_t)0x002E0000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 7U
		},
		{
		  .start 		 = (uint32_t)0x00300000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 8U
		},
		{
		  .start 		 = (uint32_t)0x00320000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 9U
		},
		{
		  .start 		 = (uint32_t)0x00340000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 10U
		},
		{
		  .start 		 = (uint32_t)0x00360000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 11U
		},
		{
		  .start 		 = (uint32_t)0x00380000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 12U
		},
		{
		  .start 		 = (uint32_t)0x003A0000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 13U
		},
		{
		  .start 		 = (uint32_t)0x003C0000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 14U
		},
		{
		  .start 		 = (uint32_t)0x003E0000U,
		  .length 		 = (uint32_t)0x00020000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 15U
		},
		// Bank 7
		{
		  .start 		 = (uint32_t)0xF0201000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0202000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0203000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0204000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0205000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0206000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0207000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0208000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0209000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF020A000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF020B000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF020C000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF020D000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF020E000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF020F000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0210000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0211000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0212000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0213000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0214000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0215000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0216000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0217000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0218000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF0219000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF021A000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF021B000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF021C000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF021D000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF021E000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		},
		{
		  .start 		 = (uint32_t)0xF021F000U,
		  .length 		 = (uint32_t)0x00001000U, 
		  .bank   		 = MUTT_BANK_1, 
		  .sector_number = (uint8_t) 0U
		}
	};
