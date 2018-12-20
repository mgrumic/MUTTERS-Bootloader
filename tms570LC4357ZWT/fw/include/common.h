#ifndef __COMMON_H
#define __COMMON_H

#define STRLEN_MAX (128U)

typedef enum _MUT_Err_t_ {
	MUT_NO_ERROR		= 0,
	MUT_ERROR 			= 1,
	MUT_DATA_ERROR  = 2
} MUT_Error;

#endif // __COMMON_H
