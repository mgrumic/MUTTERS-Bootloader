// mutters_flash_config.c
//

/*****************************************************************************/
/* STDINT.H                                                                  */
/*                                                                           */
/* Copyright (c) 2002 Texas Instruments Incorporated                         */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/

/*****************************************************************************/
/* _STDINT40.H                                                               */
/*                                                                           */
/* Copyright (c) 2018 Texas Instruments Incorporated                         */
/* http://www.ti.com/                                                        */
/*                                                                           */
/*  Redistribution and  use in source  and binary forms, with  or without    */
/*  modification,  are permitted provided  that the  following conditions    */
/*  are met:                                                                 */
/*                                                                           */
/*     Redistributions  of source  code must  retain the  above copyright    */
/*     notice, this list of conditions and the following disclaimer.         */
/*                                                                           */
/*     Redistributions in binary form  must reproduce the above copyright    */
/*     notice, this  list of conditions  and the following  disclaimer in    */
/*     the  documentation  and/or   other  materials  provided  with  the    */
/*     distribution.                                                         */
/*                                                                           */
/*     Neither the  name of Texas Instruments Incorporated  nor the names    */
/*     of its  contributors may  be used to  endorse or  promote products    */
/*     derived  from   this  software  without   specific  prior  written    */
/*     permission.                                                           */
/*                                                                           */
/*  THIS SOFTWARE  IS PROVIDED BY THE COPYRIGHT  HOLDERS AND CONTRIBUTORS    */
/*  "AS IS"  AND ANY  EXPRESS OR IMPLIED  WARRANTIES, INCLUDING,  BUT NOT    */
/*  LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR    */
/*  A PARTICULAR PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE COPYRIGHT    */
/*  OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,    */
/*  SPECIAL,  EXEMPLARY,  OR CONSEQUENTIAL  DAMAGES  (INCLUDING, BUT  NOT    */
/*  LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,    */
/*  DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY    */
/*  THEORY OF  LIABILITY, WHETHER IN CONTRACT, STRICT  LIABILITY, OR TORT    */
/*  (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE    */
/*  OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.     */
/*                                                                           */
/*****************************************************************************/


/* 
   According to footnotes in the 1999 C standard, "C++ implementations
   should define these macros only when __STDC_LIMIT_MACROS is defined
   before <stdint.h> is included." 
*/


/*-
 * SPDX-License-Identifier: BSD-2-Clause-FreeBSD
 *
 * Copyright (c) 2001 Mike Barcroft <mike@FreeBSD.org>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * $FreeBSD$
 */


/*-
 * SPDX-License-Identifier: BSD-3-Clause
 *
 * Copyright (c) 1991, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * This code is derived from software contributed to Berkeley by
 * Berkeley Software Design, Inc.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)cdefs.h	8.8 (Berkeley) 1/9/95
 * $FreeBSD$
 */


#pragma diag_push
#pragma CHECK_MISRA("none")

/*
 * Testing against Clang-specific extensions.
 */


/*
 * This code has been put in place to help reduce the addition of
 * compiler specific defines in FreeBSD code.  It helps to aid in
 * having a compiler-agnostic source tree.
 */







/*
 * Macro to test if we're using a specific version of gcc or later.
 */

/*
 * The __CONCAT macro is used to concatenate parts of symbol names, e.g.
 * with "#define OLD(foo) __CONCAT(old,foo)", OLD(foo) produces oldfoo.
 * The __CONCAT macro is a bit tricky to use if it must work in non-ANSI
 * mode -- there must be no spaces between its arguments, and for nested
 * __CONCAT's, all the __CONCAT's must be at the left.  __CONCAT can also
 * concatenate double-quoted strings produced by the __STRING macro, but
 * this only works with ANSI C.
 *
 * __XSTRING is like __STRING, but it expands any macros in its argument
 * first.  It is only available with ANSI C.
 */



/*
 * Compiler-dependent macros to help declare dead (non-returning) and
 * pure (no side effects) functions, and unused variables.  They are
 * null except for versions of gcc that are known to support the features
 * properly (old versions of gcc-2 supported the dead and pure features
 * in a different (wrong) way).  If we do not provide an implementation
 * for a given compiler, let the compile fail if it is told to use
 * a feature that we cannot live without.
 */

/*
 * TI ADD - check that __GNUC__ is defined before referencing it to avoid
 *          generating an error when __GNUC__ treated as zero warning is
 *          promoted to an error via -pdse195 option.
 */



/*
 * Keywords added in C11.
 */







/*
 * XXX: Some compilers (Clang 3.3, GCC 4.7) falsely announce C++11 mode
 * without actually supporting the thread_local keyword. Don't check for
 * the presence of C++11 when defining _Thread_local.
 */


/*
 * Emulation of C11 _Generic().  Unlike the previously defined C11
 * keywords, it is not possible to implement this using exactly the same
 * syntax.  Therefore implement something similar under the name
 * __generic().  Unlike _Generic(), this macro can only distinguish
 * between a single type, so it requires nested invocations to
 * distinguish multiple cases.
 */


/*
 * C99 Static array indices in function parameter declarations.  Syntax such as:
 * void bar(int myArray[static 10]);
 * is allowed in C99 but not in C++.  Define __min_size appropriately so
 * headers using it can be compiled in either language.  Use like this:
 * void bar(int myArray[__min_size(10)]);
 */







/* XXX: should use `#if __STDC_VERSION__ < 199901'. */


/* C++11 exposes a load of C99 stuff */

/*
 * GCC 2.95 provides `__restrict' as an extension to C90 to support the
 * C99-specific `restrict' type qualifier.  We happen to use `__restrict' as
 * a way to define the `restrict' type qualifier without disturbing older
 * software that is unaware of C99 keywords.
 * The TI compiler supports __restrict in all compilation modes.
 */

/*
 * GNU C version 2.96 adds explicit branch prediction so that
 * the CPU back-end can hint the processor and also so that
 * code blocks can be reordered such that the predicted path
 * sees a more linear flow, thus improving cache behavior, etc.
 *
 * The following two macros provide us with a way to utilize this
 * compiler feature.  Use __predict_true() if you expect the expression
 * to evaluate to true, and __predict_false() if you expect the
 * expression to evaluate to false.
 *
 * A few notes about usage:
 *
 *	* Generally, __predict_false() error condition checks (unless
 *	  you have some _strong_ reason to do otherwise, in which case
 *	  document it), and/or __predict_true() `no-error' condition
 *	  checks, assuming you want to optimize for the no-error case.
 *
 *	* Other than that, if you don't know the likelihood of a test
 *	  succeeding from empirical or other `hard' evidence, don't
 *	  make predictions.
 *
 *	* These are meant to be used in places that are run `a lot'.
 *	  It is wasteful to make predictions in code that is run
 *	  seldomly (e.g. at subsystem initialization time) as the
 *	  basic block reordering that this affects can often generate
 *	  larger code.
 */


/*
 * We define this here since <stddef.h>, <sys/queue.h>, and <sys/types.h>
 * require it.
 */

/*
 * Given the pointer x to the member m of the struct s, return
 * a pointer to the containing structure.  When using GCC, we first
 * assign pointer x to a local variable, to check that its type is
 * compatible with member m.
 */

/*
 * Compiler-dependent macros to declare that functions take printf-like
 * or scanf-like arguments.  They are null except for versions of gcc
 * that are known to support the features properly (old versions of gcc-2
 * didn't permit keeping the keywords out of the application namespace).
 */

/* Compiler-dependent macros that rely on FreeBSD-specific extensions. */



/*
 * The following definition might not work well if used in header files,
 * but it should be better than nothing.  If you want a "do nothing"
 * version, then it should generate some harmless declaration, such as:
 *    #define	__IDSTRING(name,string)	struct __hack
 */


/*
 * Embed the rcs id of a source file in the resulting library.  Note that in
 * more recent ELF binutils, we use .ident allowing the ID to be stripped.
 * Usage:
 *	__FBSDID("$FreeBSD$");
 */








/*-
 * The following definitions are an extension of the behavior originally
 * implemented in <sys/_posix.h>, but with a different level of granularity.
 * POSIX.1 requires that the macros we test be defined before any standard
 * header file is included.
 *
 * Here's a quick run-down of the versions:
 *  defined(_POSIX_SOURCE)		1003.1-1988
 *  _POSIX_C_SOURCE == 1		1003.1-1990
 *  _POSIX_C_SOURCE == 2		1003.2-1992 C Language Binding Option
 *  _POSIX_C_SOURCE == 199309		1003.1b-1993
 *  _POSIX_C_SOURCE == 199506		1003.1c-1995, 1003.1i-1995,
 *					and the omnibus ISO/IEC 9945-1: 1996
 *  _POSIX_C_SOURCE == 200112		1003.1-2001
 *  _POSIX_C_SOURCE == 200809		1003.1-2008
 *
 * In addition, the X/Open Portability Guide, which is now the Single UNIX
 * Specification, defines a feature-test macro which indicates the version of
 * that specification, and which subsumes _POSIX_C_SOURCE.
 *
 * Our macros begin with two underscores to avoid namespace screwage.
 */

/* Deal with IEEE Std. 1003.1-1990, in which _POSIX_C_SOURCE == 1. */

/* Deal with IEEE Std. 1003.2-1992, in which _POSIX_C_SOURCE == 2. */

/* Deal with various X/Open Portability Guides and Single UNIX Spec. */

/*
 * Deal with all versions of POSIX.  The ordering relative to the tests above is
 * important.
 */
/*-
 * Deal with _ANSI_SOURCE:
 * If it is defined, and no other compilation environment is explicitly
 * requested, then define our internal feature-test macros to zero.  This
 * makes no difference to the preprocessor (undefined symbols in preprocessing
 * expressions are defined to have value zero), but makes it more convenient for
 * a test program to print out the values.
 *
 * If a program mistakenly defines _ANSI_SOURCE and some other macro such as
 * _POSIX_C_SOURCE, we will assume that it wants the broader compilation
 * environment (and in fact we will never get here).
 */

/* User override __EXT1_VISIBLE */


/*
 * Old versions of GCC use non-standard ARM arch symbols; acle-compat.h
 * translates them to __ARM_ARCH and the modern feature symbols defined by ARM.
 */

/*
 * Nullability qualifiers: currently only supported by Clang.
 */

/*
 * Type Safety Checking
 *
 * Clang provides additional attributes to enable checking type safety
 * properties that cannot be enforced by the C type system. 
 */


/*
 * Lock annotations.
 *
 * Clang provides support for doing basic thread-safety tests at
 * compile-time, by marking which locks will/should be held when
 * entering/leaving a functions.
 *
 * Furthermore, it is also possible to annotate variables and structure
 * members to enforce that they are only accessed when certain locks are
 * held.
 */


/* Structure implements a lock. */

/* Function acquires an exclusive or shared lock. */

/* Function attempts to acquire an exclusive or shared lock. */

/* Function releases a lock. */

/* Function asserts that an exclusive or shared lock is held. */

/* Function requires that an exclusive or shared lock is or is not held. */

/* Function should not be analyzed. */

/* Guard variables and structure members by lock. */

#pragma diag_pop

/*-
 * SPDX-License-Identifier: BSD-2-Clause-FreeBSD
 *
 * Copyright (c) 2002 Mike Barcroft <mike@FreeBSD.org>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * $FreeBSD$
 */


/*-
 * SPDX-License-Identifier: BSD-3-Clause
 *
 * Copyright (c) 1991, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * This code is derived from software contributed to Berkeley by
 * Berkeley Software Design, Inc.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	@(#)cdefs.h	8.8 (Berkeley) 1/9/95
 * $FreeBSD$
 */

/*-
 * SPDX-License-Identifier: BSD-4-Clause
 *
 * Copyright (c) 2002 Mike Barcroft <mike@FreeBSD.org>
 * Copyright (c) 1990, 1993
 *	The Regents of the University of California.  All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 * 3. All advertising materials mentioning features or use of this software
 *    must display the following acknowledgement:
 *	This product includes software developed by the University of
 *	California, Berkeley and its contributors.
 * 4. Neither the name of the University nor the names of its contributors
 *    may be used to endorse or promote products derived from this software
 *    without specific prior written permission.
 *
 * THIS SOFTWARE IS PROVIDED BY THE REGENTS AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE REGENTS OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 *	From: @(#)ansi.h	8.2 (Berkeley) 1/4/94
 *	From: @(#)types.h	8.3 (Berkeley) 1/5/94
 * $FreeBSD$
 */



#pragma diag_push
/* This file is required to use base types */
#pragma CHECK_MISRA("-6.3")

/*
 * Basic types upon which most other types are built.
 */
typedef	signed char		__int8_t;
typedef	unsigned char		__uint8_t;
typedef	short			__int16_t;
typedef	unsigned short		__uint16_t;
typedef	int			__int32_t;
typedef	unsigned int		__uint32_t;

/* LONGLONG */
typedef	long long		__int64_t;

/* LONGLONG */
typedef	unsigned long long	__uint64_t;

/*
 * Standard type definitions.
 */
typedef	__uint32_t	__clock_t;		/* clock()... */
typedef	__int32_t	__critical_t;
typedef	double		__double_t;
typedef	float		__float_t;
typedef	__int32_t	__intfptr_t;
typedef	__int64_t	__intmax_t;
typedef	__int32_t	__intptr_t;
typedef	__int32_t	__int_fast8_t;
typedef	__int32_t	__int_fast16_t;
typedef	__int32_t	__int_fast32_t;
typedef	__int64_t	__int_fast64_t;
typedef	__int8_t	__int_least8_t;
typedef	__int16_t	__int_least16_t;
typedef	__int32_t	__int_least32_t;
typedef	__int64_t	__int_least64_t;
typedef	__int32_t	__ptrdiff_t;		/* ptr1 - ptr2 */
typedef	__int32_t	__register_t;
typedef	__int32_t	__segsz_t;		/* segment size (in pages) */
typedef	__uint32_t	__size_t;		/* sizeof() */
typedef	__int32_t	__ssize_t;		/* byte count or error */
typedef __uint32_t      __time_t;
typedef	__uint32_t	__uintfptr_t;
typedef	__uint64_t	__uintmax_t;
typedef	__uint32_t	__uintptr_t;
typedef	__uint32_t	__uint_fast8_t;
typedef	__uint32_t	__uint_fast16_t;
typedef	__uint32_t	__uint_fast32_t;
typedef	__uint64_t	__uint_fast64_t;
typedef	__uint8_t	__uint_least8_t;
typedef	__uint16_t	__uint_least16_t;
typedef	__uint32_t	__uint_least32_t;
typedef	__uint64_t	__uint_least64_t;
typedef	__uint32_t	__u_register_t;
typedef	__uint32_t	__vm_offset_t;
typedef	__uint32_t	__vm_paddr_t;
typedef	__uint32_t	__vm_size_t;

typedef	unsigned short ___wchar_t;



/*
 * Unusual type definitions.
 */
typedef struct __va_list_t {
    void * __ap;
} __va_list;

#pragma diag_pop


#pragma diag_push
/* This file is required to use types without size and signedness */
#pragma CHECK_MISRA("-6.3")

/*
 * Standard type definitions.
 */
typedef	__int32_t	__blksize_t;	/* file block size */
typedef	__int64_t	__blkcnt_t;	/* file block count */
typedef	__int32_t	__clockid_t;	/* clock_gettime()... */
typedef	__uint32_t	__fflags_t;	/* file flags */
typedef	__uint64_t	__fsblkcnt_t;
typedef	__uint64_t	__fsfilcnt_t;
typedef	__uint32_t	__gid_t;
typedef	__int64_t	__id_t;		/* can hold a gid_t, pid_t, or uid_t */
typedef	__uint64_t	__ino_t;	/* inode number */
typedef	long		__key_t;	/* IPC key (for Sys V IPC) */
typedef	__int32_t	__lwpid_t;	/* Thread ID (a.k.a. LWP) */
typedef	__uint16_t	__mode_t;	/* permissions */
typedef	int		__accmode_t;	/* access permissions */
typedef	int		__nl_item;
typedef	__uint64_t	__nlink_t;	/* link count */
typedef	__int64_t	__off_t;	/* file offset */
typedef	__int64_t	__off64_t;	/* file offset (alias) */
typedef	__int32_t	__pid_t;	/* process [group] */
typedef	__int64_t	__rlim_t;	/* resource limit - intentionally */
					/* signed, because of legacy code */
					/* that uses -1 for RLIM_INFINITY */
typedef	__uint8_t	__sa_family_t;
typedef	__uint32_t	__socklen_t;
typedef	long		__suseconds_t;	/* microseconds (signed) */
typedef	struct __timer	*__timer_t;	/* timer_gettime()... */
typedef	struct __mq	*__mqd_t;	/* mq_open()... */
typedef	__uint32_t	__uid_t;
typedef	unsigned int	__useconds_t;	/* microseconds (unsigned) */
typedef	int		__cpuwhich_t;	/* which parameter for cpuset. */
typedef	int		__cpulevel_t;	/* level parameter for cpuset. */
typedef int		__cpusetid_t;	/* cpuset identifier. */

/*
 * Unusual type definitions.
 */
/*
 * rune_t is declared to be an ``int'' instead of the more natural
 * ``unsigned long'' or ``long''.  Two things are happening here.  It is not
 * unsigned so that EOF (-1) can be naturally assigned to it and used.  Also,
 * it looks like 10646 will be a 31 bit standard.  This means that if your
 * ints cannot hold 32 bits, you will be in trouble.  The reason an int was
 * chosen over a long is that the is*() and to*() routines take ints (says
 * ANSI C), but they use __ct_rune_t instead of int.
 *
 * NOTE: rune_t is not covered by ANSI nor other standards, and should not
 * be instantiated outside of lib/libc/locale.  Use wchar_t.  wint_t and
 * rune_t must be the same type.  Also, wint_t should be able to hold all
 * members of the largest character set plus one extra value (WEOF), and
 * must be at least 16 bits.
 */
typedef	int		__ct_rune_t;	/* arg type for ctype funcs */

typedef	__ct_rune_t	__rune_t;	/* rune_t (see above) */
typedef	__ct_rune_t	__wint_t;	/* wint_t (see above) */

/* Clang already provides these types as built-ins, but only in C++ mode. */
typedef	__uint_least16_t __char16_t;
typedef	__uint_least32_t __char32_t;
/* In C++11, char16_t and char32_t are built-in types. */

typedef struct {
	long long __max_align1 __attribute__((aligned(__alignof__(long long))));
	long double __max_align2 __attribute__((aligned(__alignof__(long double))));
} __max_align_t;

typedef	__uint64_t	__dev_t;	/* device number */

typedef	__uint32_t	__fixpt_t;	/* fixed point number */

/*
 * mbstate_t is an opaque object to keep conversion state during multibyte
 * stream conversions.
 */

typedef int _Mbstatet;

typedef _Mbstatet __mbstate_t;

typedef __uintmax_t     __rman_res_t;

/*
 * When the following macro is defined, the system uses 64-bit inode numbers.
 * Programs can use this to avoid including <sys/param.h>, with its associated
 * namespace pollution.
 */

#pragma diag_pop


/*-
 * SPDX-License-Identifier: BSD-2-Clause-NetBSD
 *
 * Copyright (c) 2001, 2002 Mike Barcroft <mike@FreeBSD.org>
 * Copyright (c) 2001 The NetBSD Foundation, Inc.
 * All rights reserved.
 *
 * This code is derived from software contributed to The NetBSD Foundation
 * by Klaus Klein.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE NETBSD FOUNDATION, INC. AND CONTRIBUTORS
 * ``AS IS'' AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED
 * TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE ARE DISCLAIMED.  IN NO EVENT SHALL THE FOUNDATION OR CONTRIBUTORS
 * BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
 * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
 * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
 * INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
 * CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
 * ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGE.
 *
 * $FreeBSD$
 */


#pragma diag_push
/* 19.4 is issued for macros that are defined in terms of other macros. */
#pragma CHECK_MISRA("-19.4")







/*
 * ISO/IEC 9899:1999
 * 7.18.2.1 Limits of exact-width integer types
 */
/* Minimum values of exact-width signed integer types. */

/* Maximum values of exact-width signed integer types. */

/* Maximum values of exact-width unsigned integer types. */

/*
 * ISO/IEC 9899:1999
 * 7.18.2.2  Limits of minimum-width integer types
 */
/* Minimum values of minimum-width signed integer types. */

/* Maximum values of minimum-width signed integer types. */

/* Maximum values of minimum-width unsigned integer types. */

/*
 * ISO/IEC 9899:1999
 * 7.18.2.3  Limits of fastest minimum-width integer types
 */
/* Minimum values of fastest minimum-width signed integer types. */

/* Maximum values of fastest minimum-width signed integer types. */

/* Maximum values of fastest minimum-width unsigned integer types. */

/*
 * ISO/IEC 9899:1999
 * 7.18.2.4  Limits of integer types capable of holding object pointers
 */

/*
 * ISO/IEC 9899:1999
 * 7.18.2.5  Limits of greatest-width integer types
 */

/*
 * ISO/IEC 9899:1999
 * 7.18.3  Limits of other integer types
 */
/* Limits of ptrdiff_t. */

/* Limits of sig_atomic_t. */

/* Limit of size_t. */

/* Limits of wint_t. */


#pragma diag_pop

/*-
 * SPDX-License-Identifier: BSD-2-Clause-FreeBSD
 *
 * Copyright (c) 2011 David E. O'Brien <obrien@FreeBSD.org>
 * Copyright (c) 2001 Mike Barcroft <mike@FreeBSD.org>
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY THE AUTHOR AND CONTRIBUTORS ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 * $FreeBSD$
 */


typedef	__int8_t		int8_t;

typedef	__int16_t		int16_t;

typedef	__int32_t		int32_t;

typedef	__int64_t		int64_t;

typedef	__uint8_t		uint8_t;

typedef	__uint16_t		uint16_t;

typedef	__uint32_t		uint32_t;

typedef	__uint64_t		uint64_t;

typedef	__intptr_t		intptr_t;
typedef	__uintptr_t		uintptr_t;
typedef	__intmax_t		intmax_t;
typedef	__uintmax_t		uintmax_t;


typedef	__int_least8_t		int_least8_t;
typedef	__int_least16_t		int_least16_t;
typedef	__int_least32_t		int_least32_t;
typedef	__int_least64_t		int_least64_t;

typedef	__uint_least8_t		uint_least8_t;
typedef	__uint_least16_t	uint_least16_t;
typedef	__uint_least32_t	uint_least32_t;
typedef	__uint_least64_t	uint_least64_t;

typedef	__int_fast8_t		int_fast8_t;
typedef	__int_fast16_t		int_fast16_t;
typedef	__int_fast32_t		int_fast32_t;
typedef	__int_fast64_t		int_fast64_t;

typedef	__uint_fast8_t		uint_fast8_t;
typedef	__uint_fast16_t		uint_fast16_t;
typedef	__uint_fast32_t		uint_fast32_t;
typedef	__uint_fast64_t		uint_fast64_t;

/* GNU and Darwin define this and people seem to think it's portable */

#pragma diag_push
#pragma CHECK_MISRA("-19.4")
/* Limits of wchar_t. */
#pragma diag_pop

/* ISO/IEC 9899:2011 K.3.4.4 */



/* !!! ONLY FOR 16bit values !!! */


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


const MUTT_Flash_Sector_t 	MUTT_Flash_Sectors[(((16)) + ((16)) + ((0)) + ((0)) + ((0)) + ((0)) + ((0)) + ((32)))] = {
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
