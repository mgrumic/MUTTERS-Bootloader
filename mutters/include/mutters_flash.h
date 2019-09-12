#ifndef __MUTTERS_FLASH_H
#define __MUTTERS_FLASH_H

#define MUTT_BANK_0_NO_SECTORS (16)
#define MUTT_BANK_1_NO_SECTORS (16)
#define MUTT_BANK_2_NO_SECTORS (0)
#define MUTT_BANK_3_NO_SECTORS (0)
#define MUTT_BANK_4_NO_SECTORS (0)
#define MUTT_BANK_5_NO_SECTORS (0)
#define MUTT_BANK_6_NO_SECTORS (0)
#define MUTT_BANK_7_NO_SECTORS (32)

/* !!! ONLY FOR 16bit values !!! */
#define MUTT_SET_BITS(X,A,B) \
	X |= ((0xFFFFU >> (16 - A)) ^ (0xFFFFU >> (15 - B)))

#define MUTT_FLASH_NO_SECTORS ((MUTT_BANK_0_NO_SECTORS) + \
							   (MUTT_BANK_1_NO_SECTORS) + \
							   (MUTT_BANK_2_NO_SECTORS) + \
							   (MUTT_BANK_3_NO_SECTORS) + \
							   (MUTT_BANK_4_NO_SECTORS) + \
							   (MUTT_BANK_5_NO_SECTORS) + \
							   (MUTT_BANK_6_NO_SECTORS) + \
							   (MUTT_BANK_7_NO_SECTORS))

typedef enum _MUTT_Flash_Bank_t {
	MUTT_BANK_0 = 0,
	MUTT_BANK_1 = 1,
	MUTT_BANK_2 = 2,
	MUTT_BANK_3 = 3,
	MUTT_BANK_4 = 4,
	MUTT_BANK_5 = 5,
	MUTT_BANK_6 = 6,
	MUTT_BANK_7 = 7
} MUTT_Flash_Bank_t;

typedef struct _MUTT_Flash_Sector_t {
	/** Start address of the flash sector. */
	uint32_t           start;     
	/** Size of the flash sector in 32-bit words. */
	uint32_t           length;
	/** Flash bank on which the sector is located. */
	MUTT_Flash_Bank_t bank;     
	/** Sector number. */
	uint8_t            sector_number;

} MUTT_Flash_Sector_t;


/*
 * Function that takes address and fills corresponding sector structure
 * according to sector table for TMS570LC43x
 * @param addr Address for which sector structure is returned
 *
 * @return MUTT_Flash_Sector_t*
 * @retval NULL 	If addr is invalid
 * @retval OTHER	Pointer to sector structure
 */
const MUTT_Flash_Sector_t* MUTT_get_flash_sector(uint32_t addr);

/*
 * Function that initializes Flash driver and MUTT library
 *
 * @param hclk_frequency HCLK frequency of Hercules board
 *
 * @return uint32_t
 * @retval 0 		Initialization successful
 * @retval OTHER	Initialization failed
 */
uint32_t MUTT_flash_init(uint32_t hclk_frequency);

/*
 * Function that writes buffer from address buff and length len to address addr
 *
 * @param addr	Address in flash where buffer is written
 * @param len	Length of buffer
 * @param buff	Pointer to buffer which is written
 *
 * @return uint32_t
 * @retval len		If write is successful and len bytes are written
 * @retval OTHER 	If write failed
 */
uint32_t MUTT_flash_write(uint32_t* addr, uint32_t len, uint8_t* buff);

/*
 * Function that erases part of flash from address addr and len bytes
 *
 * @param addr	Address where function erases flash
 * @param len	Length of erase buffer (in bytes)
 *
 * @return uint32_t
 * @retval len		Function erased len bytes successfully
 * @retval OTHER	If erase failed
 */
uint32_t MUTT_flash_erase(uint32_t addr, uint32_t len);

#endif // __MUTTERS_FLASH_H
