#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
typedef uint64_t crc_t;

#define LE32_TO_BE32(X) (((X & 0x000000FFU) << 24) | \
						 ((X & 0x0000FF00U) <<  8) | \
						 ((X & 0x00FF0000U) >>  8) | \
						 ((X & 0xFF000000U) >> 24))

#define LE64_TO_BE64(X) ( ((uint64_t)(X) << 32) | \
			              (((uint64_t)(X) >> 32) & 0x00000000FFFFFFFFUL))


crc_t crc_update_word(crc_t crc, crc_t data)

{

	int i, j;

    crc_t nextCrc = 0;
	
	// BE->LE magic
	uint32_t* ptr = (uint32_t*)&data;

	ptr[0] = LE32_TO_BE32(ptr[0]);
	ptr[1] = LE32_TO_BE32(ptr[1]);

    // for i in 63 to 0 loop

    for(i = 63; i >= 0; i--)

    {

        // NEXT_CRC_VAL(0) := CRC_VAL(63) xor DATA(i);

        nextCrc = (nextCrc & (crc_t)0xfffffffffffffffe) | ((crc >> 63) ^ (data >> i));

        // for j in 1 to 63 loop

        for(j = 1; j < 64; j++)

        {

            //case j is

            // when 1|3|4 =>

            if(j == 1 || j == 3 || j == 4)

            {

                // NEXT_CRC_VAL(j) := CRC_VAL(j - 1) xor CRC_VAL(63) xor DATA(i);

                nextCrc = (nextCrc & ~((crc_t)1 << j)) | ((((crc >> (j-1)) ^ (crc >> 63) ^ (data >> i)) & 1) << j);

            }

            else

            { // when others =>

                // NEXT_CRC_VAL(j) := CRC_VAL(j - 1);

                nextCrc = (nextCrc & ~((crc_t)1 << j)) | (((crc >> (j-1)) & 1) << j);

            }

            // end case;

        } // end loop;

        crc = nextCrc;

    } // end loop

    return crc;

}

typedef enum {
	E_USAGE 	= 1,
	E_IN_FILE 	= 2,
	E_OUT_FILE 	= 3,
	E_NO_MEM 	= 4,
	E_READ      = 5,
	E_WRITE     = 6,
	E_ALIGN     = 7
} crc_err_t;

// Must be aligned to 8 bytes
typedef struct _firmware_header {
	uint32_t length;
	uint32_t reserved_1;
	uint32_t crc_h;
	uint32_t crc_l;
	uint32_t reserved_2;
	uint32_t reserved_3;
	uint32_t reserved_4;
	uint32_t reserved_5;
} firmware_header_t;

void init_fw_header(firmware_header_t* header) {
	header->length = 0;
	header->crc_l = 0;
	header->crc_h = 0;

	header->reserved_1 = 0x55AA55AA;
	header->reserved_2 = 0x55AA55AA;
	header->reserved_3 = 0x55AA55AA;
	header->reserved_4 = 0x55AA55AA;
	header->reserved_5 = 0x55AA55AA;
}

int main(int argc, char** argv) {
	crc_t crc = 0;
	FILE* fin = NULL;
	FILE* fout = NULL;
	size_t flen = 0;
	size_t read_len = 0;
	crc_t* buffer = NULL;
	firmware_header_t header = { 0 };

	init_fw_header(&header);

	if (argc != 3) {
		fprintf(stderr, "Usage: ./pack_delivery firmware.bin firmware.delivery\n\n");
		return -E_USAGE;
	}

	fin = fopen(argv[1], "rb");

	if (fin == NULL) {
		fprintf(stderr, "Cannot open file %s\n\n", argv[1]);
		return -E_IN_FILE;
	}

	fseek(fin, 0L, SEEK_END);
	flen = ftell(fin);
	fseek(fin, 0L, SEEK_SET);

	if (flen % 8 != 0) {
		fprintf(stderr, "Input file must be aligned to 8 bytes\n\n");
		fclose(fin);
		return -E_ALIGN;
	}

	buffer = (crc_t*)malloc(flen);

	if (buffer == NULL) {
		fprintf(stderr, "Cannot allocate %lu buytes\n\n", flen);
		fclose(fin);
		return -E_NO_MEM;
	}

	if ((read_len = fread(buffer, 1, flen, fin)) != flen) {
		fprintf(stderr, "Input file read error (flen = %lu)\n\n", read_len);
		fclose(fin);
		free(buffer);
		return -E_READ;
	}

	fout = fopen(argv[2], "wb");

	if (fout == NULL) {
		fprintf(stderr, "Cannot open out file for write\n\n");
		fclose(fin);
		free(buffer);
		return -E_OUT_FILE;
	}

	for (int i = 0; i < (flen / 8); i++) {
		crc = crc_update_word(crc, buffer[i]);
	}

	fprintf(stdout, "Calculated crc for file %s = 0x%08X%08X\n\n", argv[1], (uint32_t) crc, (uint32_t)(crc >> 32));

	header.length = LE32_TO_BE32(flen);
	header.crc_h = (uint32_t) crc;
	header.crc_l = (uint32_t) (crc >> 32);
	
	header.crc_l = LE32_TO_BE32(header.crc_l);
	header.crc_h = LE32_TO_BE32(header.crc_h);

	if (sizeof(firmware_header_t) != fwrite(&header, 1, sizeof(firmware_header_t), fout)) {
		fprintf(stderr, "Cannot write header to output file\n\n");
		fclose(fin);
		fclose(fout);
		free(buffer);
		return -E_WRITE;
	}

	if (flen != fwrite(buffer, 1, flen, fout)) {
		fprintf(stderr, "Cannot write firmware to output file\n\n");
		fclose(fin);
		fclose(fout);
		free(buffer);
		return -E_WRITE;
	}

	fclose(fin);
	fclose(fout);
	free(buffer);
	return 0;

}





