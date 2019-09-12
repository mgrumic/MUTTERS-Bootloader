#ifndef __MUTTERS_SERIAL
#define __MUTTERS_SERIAL

extern MUTT_Error_t mutt_serial_init();

extern MUTT_Error_t mutt_serial_send(uint8_t* str);

#endif // __MUTTERS_SERIAL
