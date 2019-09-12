// mutters_flash.c
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

/*****************************************************************************/
/* string.h                                                                  */
/*                                                                           */
/* Copyright (c) 1993 Texas Instruments Incorporated                         */
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



#pragma diag_push
#pragma CHECK_MISRA("-6.3") /* standard types required for standard headers */
#pragma CHECK_MISRA("-19.1") /* #includes required for implementation */
#pragma CHECK_MISRA("-20.1") /* standard headers must define standard names */
#pragma CHECK_MISRA("-20.2") /* standard headers must define standard names */



typedef unsigned size_t;

/*****************************************************************************/
/* _ti_config.h                                                              */
/*                                                                           */
/* Copyright (c) 2017 Texas Instruments Incorporated                         */
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


#pragma diag_push
#pragma CHECK_MISRA("-19.4")
#pragma CHECK_MISRA("-19.1")

/* Common definitions */

/* C */
 /* C89/C99 */





/* _TI_NOEXCEPT_CPP14 is defined to noexcept only when compiling for C++14. It
   is intended to be used for functions like abort and atexit that are supposed
   to be declared noexcept only in C++14 mode. */

/* Target-specific definitions */
/*****************************************************************************/
/* linkage.h                                                                 */
/*                                                                           */
/* Copyright (c) 1998 Texas Instruments Incorporated                         */
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


#pragma diag_push
#pragma CHECK_MISRA("-19.4") /* macros required for implementation */

/* No modifiers are needed to access code or data */


/*--------------------------------------------------------------------------*/
/* Define _IDECL ==> how inline functions are declared                      */
/*--------------------------------------------------------------------------*/

#pragma diag_pop


#pragma diag_pop


#pragma diag_push
#pragma CHECK_MISRA("-19.4") /* macros required for implementation */


#pragma diag_pop

 size_t  strlen(const char *string);

 char *strcpy(char * __restrict dest,
                        const char * __restrict src);
 char *strncpy(char * __restrict dest,
                         const char * __restrict src, size_t n);
 char *strcat(char * __restrict string1,
                        const char * __restrict string2);
 char *strncat(char * __restrict dest,
                         const char * __restrict src, size_t n);
 char *strchr(const char *string, int c);
 char *strrchr(const char *string, int c);

 int  strcmp(const char *string1, const char *string2);
 int  strncmp(const char *string1, const char *string2, size_t n);

 int     strcoll(const char *string1, const char *_string2);
 size_t  strxfrm(char * __restrict to,
                             const char * __restrict from, size_t n);
 char   *strpbrk(const char *string, const char *chs);
 size_t  strspn(const char *string, const char *chs);
 size_t  strcspn(const char *string, const char *chs);
 char   *strstr(const char *string1, const char *string2);
 char   *strtok(char * __restrict str1,
                            const char * __restrict str2);
 char   *strerror(int _errno);
 char   *strdup(const char *string);


 void   *memmove(void *s1, const void *s2, size_t n);
#pragma diag_push
#pragma CHECK_MISRA("-16.4") /* false positives due to builtin declarations */
 void   *memcpy(void * __restrict s1,
                            const void * __restrict s2, size_t n);
#pragma diag_pop

 int     memcmp(const void *cs, const void *ct, size_t n);
 void   *memchr(const void *cs, int c, size_t n);

 void   *memset(void *mem, int ch, size_t length);




/*----------------------------------------------------------------------------*/
/* If sys/cdefs.h is available, go ahead and include it. xlocale.h assumes    */
/* this file will have already included sys/cdefs.h.                          */
/*----------------------------------------------------------------------------*/
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


/*----------------------------------------------------------------------------*/
/* Include xlocale/_string.h> if POSIX is enabled. This will expose the       */
/* xlocale string interface.                                                  */
/*----------------------------------------------------------------------------*/


#pragma diag_pop




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


/**********************************************************************************************************************
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \verbatim
 *
 *                 © Copyright 2009-2012 Texas Instruments Incorporated.  All rights reserved.
 *
 *  \endverbatim
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *
 *      Project:  Hercules™ ARM® Safety MCUs - F021 Flash API 
 *      Version:  v2.01.01 Build(000830)                                                                                
 *   Build Date:  2014-10-21                                                                                            
 *
 *         File:  F021.h                                                                                                
 *
 *  Description:  Main include file for F021 devices.
 *---------------------------------------------------------------------------------------------------------------------
 * Author:  John R Hall
 *---------------------------------------------------------------------------------------------------------------------
 *
 *********************************************************************************************************************/

 



/**********************************************************************************************************************
 * INCLUDES
 *********************************************************************************************************************/
/**********************************************************************************************************************
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \verbatim
 *
 *                 © Copyright 2009-2012 Texas Instruments Incorporated.  All rights reserved.
 *
 *  \endverbatim
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *
 *      Project:  Hercules™ ARM® Safety MCUs - F021 Flash API 
 *      Version:  v2.01.01 Build(000830)                                                                                
 *   Build Date:  2014-10-21                                                                                            
 *
 *         File:  Types.h                                                                                               
 *
 *  Description:  Types used by the F021 API.
 *---------------------------------------------------------------------------------------------------------------------
 * Author:  John R Hall
 *---------------------------------------------------------------------------------------------------------------------
 *
 *********************************************************************************************************************/



/**********************************************************************************************************************
 * INCLUDES
 *********************************************************************************************************************/
/*LDRA_NOANALYSIS*/
/*****************************************************************************/
/* stddef.h                                                                  */
/*                                                                           */
/* Copyright (c) 1993 Texas Instruments Incorporated                         */
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
/* _ti_config.h                                                              */
/*                                                                           */
/* Copyright (c) 2017 Texas Instruments Incorporated                         */
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


#pragma diag_push
#pragma CHECK_MISRA("-19.7") /* macros required for implementation */
#pragma CHECK_MISRA("-20.1") /* standard headers must define standard names */
#pragma CHECK_MISRA("-20.2") /* standard headers must define standard names */



typedef int ptrdiff_t;



typedef unsigned short wchar_t;


/*----------------------------------------------------------------------------*/
/* C++11 and C11 required max_align_t to be defined. The libc++ cstddef       */
/* header expects the macro __DEFINED_max_align_t to be defined if it is to   */
/* use the definintion of max_align_t from stddef.h. Only define it if        */
/* compiling for C11 or we're in non strict ansi mode.                        */
/*----------------------------------------------------------------------------*/
typedef long double max_align_t;

#pragma diag_push
#pragma CHECK_MISRA("-19.10") /* need types as macro arguments */


#pragma diag_pop


#pragma diag_pop

/*LDRA_ANALYSIS*/

/**********************************************************************************************************************
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \verbatim
 *
 *                 © Copyright 2009-2012 Texas Instruments Incorporated.  All rights reserved.
 *
 *  \endverbatim
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *
 *      Project:  Hercules™ ARM® Safety MCUs - F021 Flash API 
 *      Version:  v2.01.01 Build(000830)                                                                                
 *   Build Date:  2014-10-21                                                                                            
 *
 *         File:  CGT.CCS.h                                                                                             
 *
 *  Description:  TI CCS compiler specific info used by the F021 API.
 *---------------------------------------------------------------------------------------------------------------------
 * Author:  John R Hall
 *---------------------------------------------------------------------------------------------------------------------
 *
 *********************************************************************************************************************/

 


/* Defines the method to indicate packed enums */
/* --gcc option enabled so we can specify this */



/**********************************************************************************************************************
 *  END OF FILE: CGT.CCS.h
 *********************************************************************************************************************/



/*****************************************************************************/
/* GLOBAL DEFINITIONS                                                        */
/*****************************************************************************/




/*****************************************************************************/
/* TYPE DEFINITIONS                                                          */
/*****************************************************************************/
typedef unsigned char boolean_t;

/*!
    \brief This is used to indicate which Cpu is being used.
*/
typedef enum
{
   Fapi_MasterCpu,
   Fapi_SlaveCpu0
}  __attribute__((packed)) Fapi_CpuSelectorType;

/*!
    \brief This is used to indicate what type of Cpu is being used.
*/
typedef enum
{
   ARM7 = 0U,  /* ARM7 core, Legacy placeholder */
   M3   = 1U,  /* ARM Cortex M3 core */
   R4   = 2U,  /* ARM Cortex R4 core without ECC logic */
   R4F  = 3U,  /* ARM Cortex R4, R4F, and R5 cores with ECC logic*/
   C28  = 4U,  /* TI C28x core */
   Undefined1 = 5U,  /* To Be Determined.  Future core placeholder */
   Undefined2 = 6U,  /* To Be Determined.  Future core placeholder */
   Undefined3 = 7U   /* To Be Determined.  Future core placeholder */
}  __attribute__((packed)) Fapi_CpuType;

/*!
    \brief This is used to indicate what type of Family is being used.
*/
typedef enum
{
   Family_FMC       = 0x00,
   Family_L2FMC     = 0x10,
   Family_Sonata    = 0x20,
   Family_Stellaris = 0x30,
   Family_Future    = 0x40
} __attribute__((packed)) Fapi_FamilyType;

/*!
    \brief This is used to indicate what type of Address is being used.
*/
typedef enum
{
   Fapi_Flash,
   Fapi_FlashEcc,
   Fapi_Otp,
   Fapi_OtpEcc,
   Fapi_Undefined
}  __attribute__((packed)) Fapi_AddressMemoryType;

/*!
    \brief This is used to return the information from the engineering row in the TI OTP.
*/
typedef struct
{
   uint32_t u32AsicId;
   uint8_t  u8Revision;
   uint32_t u32LotNumber;
   uint16_t u16FlowCheck;
   uint16_t u16WaferNumber;
   uint16_t u16XCoordinate;
   uint16_t u16YCoordinate;
}  __attribute__((packed)) Fapi_EngineeringRowType;

typedef struct
{
   uint32_t au32StatusWord[4];
}  __attribute__((packed)) Fapi_FlashStatusWordType;

/*!
    \brief This contains all the possible modes used in the Fapi_IssueAsyncProgrammingCommand().
*/
typedef enum
{
   Fapi_AutoEccGeneration, /* This is the default mode for the command and will auto generate the ECC for the 
                              provided data buffer */
   Fapi_DataOnly,          /* Command will only process the data buffer */
   Fapi_EccOnly,           /* Command will only process the ecc buffer */
   Fapi_DataAndEcc         /* Command will process data and ecc buffers */
}  __attribute__((packed)) Fapi_FlashProgrammingCommandsType;

/*!
    \brief This is used to indicate which Flash bank is being used.
*/
typedef enum
{
   Fapi_FlashBank0=0,
   Fapi_FlashBank1=1,
   Fapi_FlashBank2=2,
   Fapi_FlashBank3=3,
   Fapi_FlashBank4=4,
   Fapi_FlashBank5=5,
   Fapi_FlashBank6=6,
   Fapi_FlashBank7=7
}  __attribute__((packed)) Fapi_FlashBankType;

/*!
    \brief This is used to indicate what F021 Bank Technology the bank is
*/
typedef enum
{
    Fapi_FLEP=0,
    Fapi_FLEE=1,
    Fapi_FLES=2,
    Fapi_FLHV=3
}  __attribute__((packed)) Fapi_FlashBankTechType;

/*!
    \brief This is used to indicate which Flash sector is being used.
*/
typedef enum
{
   Fapi_FlashSector0,
   Fapi_FlashSector1,
   Fapi_FlashSector2,
   Fapi_FlashSector3,
   Fapi_FlashSector4,
   Fapi_FlashSector5,
   Fapi_FlashSector6,
   Fapi_FlashSector7,
   Fapi_FlashSector8,
   Fapi_FlashSector9,
   Fapi_FlashSector10,
   Fapi_FlashSector11,
   Fapi_FlashSector12,
   Fapi_FlashSector13,
   Fapi_FlashSector14,
   Fapi_FlashSector15,
   Fapi_FlashSector16,
   Fapi_FlashSector17,
   Fapi_FlashSector18,
   Fapi_FlashSector19,
   Fapi_FlashSector20,
   Fapi_FlashSector21,
   Fapi_FlashSector22,
   Fapi_FlashSector23,
   Fapi_FlashSector24,
   Fapi_FlashSector25,
   Fapi_FlashSector26,
   Fapi_FlashSector27,
   Fapi_FlashSector28,
   Fapi_FlashSector29,
   Fapi_FlashSector30,
   Fapi_FlashSector31,
   Fapi_FlashSector32,
   Fapi_FlashSector33,
   Fapi_FlashSector34,
   Fapi_FlashSector35,
   Fapi_FlashSector36,
   Fapi_FlashSector37,
   Fapi_FlashSector38,
   Fapi_FlashSector39,
   Fapi_FlashSector40,
   Fapi_FlashSector41,
   Fapi_FlashSector42,
   Fapi_FlashSector43,
   Fapi_FlashSector44,
   Fapi_FlashSector45,
   Fapi_FlashSector46,
   Fapi_FlashSector47,
   Fapi_FlashSector48,
   Fapi_FlashSector49,
   Fapi_FlashSector50,
   Fapi_FlashSector51,
   Fapi_FlashSector52,
   Fapi_FlashSector53,
   Fapi_FlashSector54,
   Fapi_FlashSector55,
   Fapi_FlashSector56,
   Fapi_FlashSector57,
   Fapi_FlashSector58,
   Fapi_FlashSector59,
   Fapi_FlashSector60,
   Fapi_FlashSector61,
   Fapi_FlashSector62,
   Fapi_FlashSector63
}  __attribute__((packed)) Fapi_FlashSectorType;

/*!
    \brief This contains all the possible Flash State Machine commands.
*/
typedef enum
{
   Fapi_ProgramData    = 0x0002,
   Fapi_EraseSector    = 0x0006,
   Fapi_EraseBank      = 0x0008,
   Fapi_ValidateSector = 0x000E,
   Fapi_ClearStatus    = 0x0010,
   Fapi_ProgramResume  = 0x0014,
   Fapi_EraseResume    = 0x0016,
   Fapi_ClearMore      = 0x0018
}  __attribute__((packed)) Fapi_FlashStateCommandsType;

/*LDRA_INSPECTED 495 S MR: 6.3 "This does have a size indicated.  LDRA is incorrect" */
typedef  uint32_t Fapi_FlashStatusType;

/*!
    \brief This contains all the possible Flash State Machine commands.
*/
typedef enum
{
   Fapi_NormalRead = 0x0,
   Fapi_RM0        = 0x1,
   Fapi_RM1        = 0x2
}  __attribute__((packed)) Fapi_FlashReadMarginModeType;

/*!
    \brief This is the master type containing all possible returned status codes.
*/
typedef enum
{
   Fapi_Status_Success=0,           /* Function completed successfully */
   Fapi_Status_FsmBusy,             /* FSM is Busy */
   Fapi_Status_FsmReady,            /* FSM is Ready */
   Fapi_Error_Fail,                 /* Generic Function Fail code */
   Fapi_Error_NullPointer,          /* One of the pointer parameters is a null pointer */
   Fapi_Error_InvalidCommand,       /* Command used is invalid for the function called */
   Fapi_Error_InvalidEccAddress,    /* Returned if the ECC Address given to a function is invalid for that function */
   Fapi_Error_OtpChecksumMismatch,  /* Returned if OTP checksum does not match expected value */
   Fapi_Error_InvalidHclkValue,     /* Returned if FClk is above max FClk value - FClk is a calculated from HClk and 
                                       RWAIT/EWAIT */
   Fapi_Error_InvalidBank,          /* Returned if the specified bank does not exist */
   Fapi_Error_InvalidAddress,       /* Returned if the specified Address does not exist in Flash or OTP */
   Fapi_Error_InvalidReadMode,      /* Returned if the specified read mode does not exist */
   Fapi_Error_AsyncIncorrectDataBufferLength,   /* Returned if Data buffer size specified exceeds Data bank width */
   Fapi_Error_AsyncIncorrectEccBufferLength,    /* Returned if ECC buffer size specified exceeds ECC bank width */
   Fapi_Error_AsyncDataEccBufferLengthMismatch, /* Returned if Data buffer size either is not 64bit aligned or Data
                                                   length exceeds amount ECC supplied */
   Fapi_Error_FeatureNotAvailable  /* FMC feature is not available on this device */
}  __attribute__((packed)) Fapi_StatusType;

/*LDRA_NOANALYSIS*/
/*LDRA_INSPECTED 42 S MR: 3.5 "Necessary for FMC register definitions" */
/*LDRA_INSPECTED 74 S MR: 18.4 "Necessary for FMC register definitions" */
typedef union
{
	volatile struct
   {
      uint32_t OtpVersion:16;      /* 0x150 bits 31:16 */
      uint32_t ChecksumLength:16;  /* 0x150 bits 15:0 */
      uint32_t OtpChecksum;        /* 0x154 bits 31:0 */
      uint32_t NumberOfSectors:16; /* 0x158 bits 31:16 */
      uint32_t NumberOfBanks:16;   /* 0x158 bits 15:0 */
      uint32_t Package:16;         /* 0x15C bits 31:16 */
      uint32_t MemorySize:16;      /* 0x15C bits 15:0 */
      uint32_t AsicNumber:24;      /* 0x160 bits 31:8 */
      uint32_t SiliconRevision:8;  /* 0x160 bits 7:0 */
      uint32_t LotNumber;          /* 0x164 bits 31:0 */
      uint32_t Flowbits:16;        /* 0x168 bits 31:16 */
      uint32_t WaferNumber:16;     /* 0x168 bits 15:0 */
      uint32_t XCoordinate:16;     /* 0x16C bits 31:16 */
      uint32_t YCoordinate:16;     /* 0x16C bits 15:0 */
      uint32_t PSU:8;              /* 0x170 bits 31:24 */
      uint32_t ESU:8;              /* 0x170 bits 23:16 */
      uint32_t PVSU:8;             /* 0x170 bits 15:8 */
      uint32_t EVSU:8;             /* 0x170 bits 7:0 */
      uint32_t RVSU:8;             /* 0x174 bits 31:24 */
      uint32_t PVAcc:8;            /* 0x174 bits 23:16 */
      uint32_t Add_EXEZSU:4;       /* 0x174 bits 15:12 */ 
      uint32_t CVSU:12;            /* 0x174 bits 11:0 */
      uint32_t PH:8;               /* 0x178 bits 31:24 */  
      uint32_t RH:8;               /* 0x178 bits 23:16 */
      uint32_t PVH:8;              /* 0x178 bits 15:8 */
      uint32_t PVH2:8;             /* 0x178 bits 7:0 */
      uint32_t EH:8;               /* 0x17C bits 31:24 */
      uint32_t Sequence:8;         /* 0x17C bits 23:16 */
      uint32_t VSTAT:4;            /* 0x17C bits 15:12 */
      uint32_t SmFrequency:12;     /* 0x17C bits 11:0 */
      uint32_t VHV_EStart:16;      /* 0x180 bits 31:16 */
      uint32_t VHV_EStep:16;       /* 0x180 bits 15:0 */
      uint32_t OtpReserved1:16;    /* 0x184 bits 31:16 */
      uint32_t MAX_PP:16;          /* 0x184 bits 15:0 */
      uint32_t MAX_EP:16;          /* 0x188 bits 31:16 */
      uint32_t PROG_PW:16;         /* 0x188 bits 15:0 */
      uint32_t ERA_PW;             /* 0x18C bits 31:0 */
      uint32_t VHV_P:16;           /* 0x190 bits 31:16 */
      uint32_t VHV_E:16;           /* 0x190 bits 15:0 */
      uint32_t VHV_PV:16;          /* 0x194 bits 31:16 */
      uint32_t VCG:8;              /* 0x194 bits 15:8 */
      uint32_t VINH:8;             /* 0x194 bits 7:0 */
      uint32_t VSL_P:8;            /* 0x198 bits 31:24 */
      uint32_t VWL_P:8;            /* 0x198 bits 23:16 */
      uint32_t VRead:8;            /* 0x198 bits 15:8 */
      uint32_t OtpReserved2:8;     /* 0x198 bits 7:0 */
      uint32_t ApiChecksum:32;     /* 0x19C bits 31:0 */
      uint32_t OtpReserved3:32;    /* 0x1A0 bits 31:0 */
      uint32_t OtpReserved4:32;    /* 0x1A4 bits 31:0 */
      uint32_t OtpReserved5:32;    /* 0x1A8 bits 31:0 */
      uint32_t OtpReserved6:32;    /* 0x1AC bits 31:0 */
   } OTP_VALUE;
   volatile uint8_t  au8OtpWord[0x60];
   volatile uint16_t au16OtpWord[0x30];
   volatile uint32_t au32OtpWord[0x18];
}Fapi_TiOtpBytesType;
/*LDRA_ANALYSIS*/

typedef struct TI_OTP_TYPE
{
   Fapi_TiOtpBytesType aOtpBank[8];
}Fapi_TiOtpType;

/*!
    \brief
*/
typedef enum
{
   Alpha_Internal,          /* For internal TI use only.  Not intended to be used by customers */
   Alpha,                   /* Early Engineering release.  May not be functionally complete */
   Beta_Internal,           /* For internal TI use only.  Not intended to be used by customers */
   Beta,                    /* Functionally complete, to be used for testing and validation */
   Production               /* Fully validated, functionally complete, ready for production use */
}  __attribute__((packed)) Fapi_ApiProductionStatusType;

typedef struct
{
   uint8_t  u8ApiMajorVersion;
   uint8_t  u8ApiMinorVersion;
   uint8_t  u8ApiRevision;
   Fapi_ApiProductionStatusType oApiProductionStatus;
   uint32_t u32ApiBuildNumber;
   uint8_t  u8ApiTechnologyType;
   uint8_t  u8ApiTechnologyRevision;
   uint8_t  u8ApiEndianness;
   uint32_t u32ApiCompilerVersion;
}Fapi_LibraryInfoType;

typedef struct
{
   uint16_t u16Reserved;	
   uint16_t u16NumberOfBanks;
   uint16_t u16DevicePackage;
   uint16_t u16DeviceMemorySize;
   uint32_t u32AsicId;
   uint32_t u32LotNumber;
   uint16_t u16FlowCheck;
   uint16_t u16WaferNumber;
   uint16_t u16WaferXCoordinate;
   uint16_t u16WaferYCoordinate;
}Fapi_DeviceInfoType;

typedef struct
{
    Fapi_FlashBankTechType oFlashBankTech;
    uint32_t u32NumberOfSectors;
    uint32_t u32BankStartAddress;
    uint16_t au16SectorSizes[16];
}Fapi_FlashBankSectorsType;


/**********************************************************************************************************************
 *  END OF FILE: Types.h
 *********************************************************************************************************************/
/**********************************************************************************************************************
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \verbatim
 *
 *                 © Copyright 2009-2012 Texas Instruments Incorporated.  All rights reserved.
 *
 *  \endverbatim
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *
 *      Project:  Hercules™ ARM® Safety MCUs - F021 Flash API 
 *      Version:  v2.01.01 Build(000830)                                                                                
 *   Build Date:  2014-10-21                                                                                            
 *
 *         File:  Helpers.h                                                                                             
 *
 *  Description:  These helper Macros are to facilitate common operations.
 *---------------------------------------------------------------------------------------------------------------------
 * Author:  John R Hall
 *---------------------------------------------------------------------------------------------------------------------
 *
 *********************************************************************************************************************/



/* Quick Register referencing macro */

/* Macro allowing a write to a locked FSM register */



/* These are helper functions to handle generic Big Endian/Little Endian code bases */

/* These are helper functions to handle generic Big Endian/Little Endian code bases */

/* Macro that reads the FMSTAT register and indicates if the FSM is Ready or Busy */

/* Macro that clears the FSM_DONE event */

/* Macro that returns the value in the FMStat Register */

/* Macro that issues a Suspend command to the FSM */

/* Macro to set the EWAIT value */


/**********************************************************************************************************************
 *  END OF FILE: Helpers.h
 *********************************************************************************************************************/
/**********************************************************************************************************************
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \verbatim
 *
 *                 © Copyright 2009-2012 Texas Instruments Incorporated.  All rights reserved.
 *
 *  \endverbatim
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *
 *      Project:  Hercules™ ARM® Safety MCUs - F021 Flash API 
 *      Version:  v2.01.01 Build(000830)                                                                                
 *   Build Date:  2014-10-21                                                                                            
 *
 *         File:  Constants.h                                                                                           
 *
 *  Description:  A set of Constant Values used by the Flash Memory Controller.
 *---------------------------------------------------------------------------------------------------------------------
 * Author:  John R Hall
 *---------------------------------------------------------------------------------------------------------------------
 *
 *********************************************************************************************************************/



/* Specifies the bit mask for determining all address bits exclusive of the offest
   imposed by the memory map register */

/* Specifies the Offset to the TI OTP */

/* FMC memory map defines */


/* Specific TI OTP Offsets */

/* Define to map the direct access to the TI OTP memory */



/**********************************************************************************************************************
 *  END OF FILE: Constants.h
 *********************************************************************************************************************/
/**********************************************************************************************************************
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \verbatim
 *
 *                 © Copyright 2009-2012 Texas Instruments Incorporated.  All rights reserved.
 *
 *  \endverbatim
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *
 *      Project:  Hercules™ ARM® Safety MCUs - F021 Flash API 
 *      Version:  v2.01.01 Build(000830)                                                                                
 *   Build Date:  2014-10-21                                                                                            
 *
 *         File:  Registers.h                                                                                           
 *
 *  Description:  A complete mapping of the F021 Flash Registers facilitating named access to the F021 Flash Registers.
 *                This file will select the appropriate definitions based on selected compile Endianness.
 *---------------------------------------------------------------------------------------------------------------------
 * Author:  John R Hall
 *---------------------------------------------------------------------------------------------------------------------
 *
 *********************************************************************************************************************/



/**********************************************************************************************************************
 * INCLUDES
 *********************************************************************************************************************/
/*LDRA_NOANALYSIS*/
/*LDRA_INSPECTED 42 S MR: 3.5 "Necessary for FMC register definitions" */
/*LDRA_INSPECTED 74 S MR: 18.4 "Necessary for FMC register definitions" */
/**********************************************************************************************************************
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \verbatim
 *
 *                 © Copyright 2009-2012 Texas Instruments Incorporated.  All rights reserved.
 *
 *  \endverbatim
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *
 *      Project:  Hercules™ ARM® Safety MCUs - F021 Flash API 
 *      Version:  v2.01.01 Build(000830)                                                                                
 *   Build Date:  2014-10-21                                                                                            
 *
 *         File:  Registers_FMC_BE.h                                                                                    
 *
 *  Description:  A complete mapping of the F021 Flash Registers facilitating named access to the F021 Flash Registers.
 *                This file is for Big Endian devices.
 *---------------------------------------------------------------------------------------------------------------------
 * Author:  John R Hall
 *---------------------------------------------------------------------------------------------------------------------
 *
 *********************************************************************************************************************/



/*  Flash Configuration Registers */

/*!
    Structure describing the Flash Wrapper registers allowing register and bit
    level accesses.
*/
typedef volatile struct FMC_REGISTERS
{
   /*!
       Defines whole and bit level accesses to the Read Control Register - 0x00
   */
   union FRDCNTL
   {
      uint32_t u32Register; /* Read Control Register, bits 31:0 */
      struct
      {
         uint32_t _FRDCNTL_Reserved_31_12 :20;/*!< Reserved, bits 31:12 */
         uint32_t RWAIT                   :4;/*!< Random Read Wait State, bits 11:8 */
         uint32_t _FRDCNTL_Reserved_07_05 :3;/*!< Reserved, bits 7:5 */
         uint32_t ASWSTEN                 :1;/*!< Address Setup Wait State Enable, bit 4 */
         uint32_t _FRDCNTL_Reserved_03_01 :3;/*!< Reserved, bits 3:1 */
         uint32_t ENPIPE                  :1;/*!< Read Mode, bit 0 */
      } FRDCNTRL_BITS;
   } FrdCntl;

   uint32_t _Reserved_04; /* Reserved Address Locations 0x04 */

   /*!
       Defines whole and bit level accesses to the Error Correction Control Register1 - 0x08
   */
   union FEDACCTRL1
   {
      uint32_t u32Register; /* Error Correction Control Register1, bits 31:0 */
      struct
      {
         uint32_t _FEDACCTRL1_Reserved_31_25 :7;/*!< Reserved, bits 31:25 */
         uint32_t SUSP_IGNR                  :1;/*!< Suspend Ignore, bit 24 */
         uint32_t _FEDACCTRL1_Reserved_23_20 :4;/*!< Reserved, bits 23:20 */
         uint32_t EDACMODE                   :4;/*!< Error Correction Mode, bits 19:16 */
         uint32_t _FEDACCTRL1_Reserved_15_11 :5;/*!< Reserved, bits 15:11 */
         uint32_t EOFEN                      :1;/*!< Error on One Fail Enable, bit 10 */
         uint32_t EZFEN                      :1;/*!< Error on Zero Fail Enable, bit 9 */
         uint32_t EPEN                       :1;/*!< Error Profiling Enable, bit 8 */
         uint32_t _FEDACCTRL1_Reserved_07_06 :2;/*!< Reserved, bits 7:6 */
         uint32_t EOCV                       :1;/*!< One Condition Valid, bit 5 */
         uint32_t EZCV                       :1;/*!< Zero Condition Valid, bit 4 */
         uint32_t EDACEN                     :4;/*!< Error Detection and Correction Enable, bits 3:0 */
      } FEDACCTRL1_BITS;
   } FedAcCtrl1;

   /*!
       Defines whole and bit level accesses to the Error Correction Control Register2 - 0x0C
   */
   union FEDACCTRL2
   {
      uint32_t u32Register; /* Error Correction Control Register2, bits 31:0 */
      struct
      {
         uint32_t _FEDACCTRL2_Reserved_31_16 :16;/*!< Reserved, bits 31:16 */
         uint32_t SEC_THRESHOLD              :16;/*!< Single Error Correction Threshold, bits 15:0 */
      } FEDACCTRL2_BITS;
   } FedAcCtrl2;

   /*!
       Defines whole and bit level accesses to the Error Correction Counter Register - 0x10
   */
   union FCOR_ERR_CNT
   {
      uint32_t u32Register; /* Error Correction Counter Register, bits 31:0 */
      struct
      {
         uint32_t _FCOR_ERR_CNT_Reserved_31_16 :16;/*!< Reserved, bits 31:16 */
         uint32_t FERRCNT                      :16;/*!< Correctable Error Counter, bits 15:0 */
      } FCOR_ERR_CNT_BITS;
   } FcorErrCnt;

   /*!
       Defines whole and bit level accesses to the Correctable Error Address Register - 0x14
   */
   union FCOR_ERR_ADD
   {
      uint32_t u32Register; /* Correctable Error Address Register, bits 31:0 */
      struct
      {
         uint32_t COR_ERR_ADD                  :29;/*!< Correctable Error Address, bits 31:3 */
         uint32_t B_OFF                        :3;/*!< Byte Offset, bits 2:0 */
      } FCOR_ERR_ADD_BITS;
   } FcorErrAdd;

   /*!
       Defines whole and bit level accesses to the Correctable Error Position Register - 0x18
   */
   union FCOR_ERR_POS
   {
      uint32_t u32Register; /* Correctable Error Position Register, bits 31:0 */
      struct
      {
         uint32_t _FCOR_ERR_POS_Reserved_31_10 :22;/*!< Reserved, bits 31:10 */
         uint32_t  BUS2                        :1; /*!< Bus 2 error position, bit 9 */
         uint32_t  TYPE                        :1; /*!< Error Type, bit 8 */
         uint32_t  ERR_POS                     :8; /*!< Single Error Position, bits 7:0 */
      } FCOR_ERR_POS_BITS;
   } FcorErrPos;

   /*!
       Defines whole and bit level accesses to the Error Status Register - 0x1C
   */
   union FEDACSTATUS
   {
      uint32_t u32Register; /* Error Status Register, bits 31:0 */
      struct
      {
         uint32_t _FEDACSTATUS_Reserved_31_25 :7;/*!< Reserved, bits 31:25 */
         uint32_t FSM_DONE                    :1;/*!< FSM is Finished, bit 24 */
         uint32_t _FEDACSTATUS_Reserved_23_20 :4;/*!< Reserved, bits 23:20 */
         uint32_t COMB2_MAL_G                 :1;/*!< Bus2 Compare Malfunction Flag, bit 19 */
         uint32_t ECC_B2_MAL_ERR              :1;/*!< Bus2 ECC Malfunction Status Flag, bit 18 */
         uint32_t B2_UNC_ERR                  :1;/*!< Bus2 Uncorrectable Error, bit 17 */
         uint32_t B2_COR_ERR                  :1;/*!< Bus2 Correctable Error, bit 16 */
         uint32_t _FEDACSTATUS_Reserved_15_13 :3;/*!< Reserved, bits 15:13 */
         uint32_t D_UNC_ERR                   :1;/*!< Diagnostic Un-correctable Error Status Flag, bit 12 */
         uint32_t ADD_TAG_ERR                 :1;/*!< Address Tag Register Error Status Flag, bit 11 */
         uint32_t ADD_PAR_ERR                 :1;/*!< Address Parity Error, bit 10 */
         uint32_t _FEDACSTATUS_Reserved_9     :1;/*!< Reserved, bit 9 */
         uint32_t B1_UNC_ERR                  :1;/*!< Bus1 Uncorrectable Error Flag, bit 8 */
         uint32_t _FEDACSTATUS_Reserved_7_4   :4;/*!< Reserved, bits 7:4 */
         uint32_t D_COR_ERR                   :1;/*!< Diagnostic Correctable Error Status Flag, bit 3 */
         uint32_t ERR_ONE_FLG                 :1;/*!< Error On One Fail Status Flag, bit 2 */
         uint32_t ERR_ZERO_FLG                :1;/*!< Error On Zero Fail Status Flag, bit 1 */
         uint32_t ERR_PRF_FLG                 :1;/*!< Error Profiling Status Flag, bit 0 */
      } FEDACSTATUS_BITS;
   } FedAcStatus;

   /*!
       Defines whole and bit level accesses to the Un-correctable Error Address Register - 0x20
   */
   union FUNC_ERR_ADD
   {
      uint32_t u32Register; /* Error Status Register, bits 31:0 */
      struct
      {
         uint32_t UNC_ERR_ADD                  :29;/*!< Un-correctable Error Address, bits 31:3 */
         uint32_t B_OFF                        :3;/*!< Byte Offset, bits 2:0 */
      } FUNC_ERR_ADD_BITS;
   } FuncErrAdd;

   /*!
       Defines whole and bit level accesses to the Error Detection Sector Disable Register - 0x24
   */
   union FEDACSDIS
   {
      uint32_t u32Register; /* Error Detection Sector Disable Register, bits 31:0 */
      struct
      {
         uint32_t BankID1_inverse        :3;/*!< Bank ID1 Inverse, bits 31:29 */
         uint32_t _FEDACSDIS_Reserved_28 :1;/*!< Reserved, bit 28 */
         uint32_t SectorID1_inverse      :4;/*!< Sector ID1 Inverse, bits 27:24 */
         uint32_t BankID1                :3;/*!< Bank ID1 , bits 23:21 */
         uint32_t _FEDACSDIS_Reserved_20 :1;/*!< Reserved, bit 20 */
         uint32_t SectorID1              :4;/*!< Sector ID1 , bits 19:16 */
         uint32_t BankID0_inverse        :3;/*!< Bank ID0 Inverse, bits 15:13 */
         uint32_t _FEDACSDIS_Reserved_12 :1;/*!< Reserved, bit 12 */
         uint32_t SectorID0_inverse      :4;/*!< Sector ID0 Inverse, bits 11:8 */
         uint32_t BankID0                :3;/*!< Bank ID0 , bits 7:5 */
         uint32_t _FEDACSDIS_Reserved_04 :1;/*!< Reserved, bit 4 */
         uint32_t SectorID0              :4;/*!< Sector ID0 , bits 3:0 */
      } FEDACSDIS_BITS;
   } FedAcsDis;

   /*!
       Defines whole and bit level accesses to the Primary Address Tag Register - 0x28
   */
   union FPRIM_ADD_TAG
   {
      uint32_t u32Register; /* Primary Address Tag Register, bits 31:0 */
      struct
      {
         uint32_t PRIM_ADD_TAG                  :28;/*!< Primary Address Tag Register, bits 31:4 */
         uint32_t RET_ZERO                      :4;/*!< This field always returns 0000, bits 3:0 */
      } FPRIM_ADD_TAG_BITS;
   } FprimAddTag;

   /*!
       Defines whole and bit level accesses to the Redundant Address Tag Register - 0x2C
   */
   union FDUP_ADD_TAG
   {
      uint32_t u32Register; /* Duplicate Address Tag Register, bits 31:0 */
      struct
      {
         uint32_t DUP_ADD_TAG                  :28;/*!< Duplicate Address Tag Register, bits 31:4 */
         uint32_t RET_ZERO                     :4;/*!< This field always returns 0000, bits 3:0 */
      } FDUP_ADD_TAG_BITS;
   } FdupAddTag;

   /*!
       Defines whole and bit level accesses to the Bank Sector Enable Register - 0x30
   */
   union FBPROT
   {
      uint32_t u32Register; /* Bank Protection Register, bits 31:0 */
      struct
      {
         uint32_t _FBPROT_Reserved_31_01 :31;/*!< Reserved, bits 31:1 */
         uint32_t  PROTL1DIS              :1; /*!< Level 1 Protection Disabled, bit 0 */
      } FBPROT_BITS;
   } Fbprot;

   /*!
       Defines whole and bit level accesses to the Bank Protection Register - 0x34
   */
   union FBSE
   {
      uint32_t u32Register; /* Bank Protection Register, bits 31:0 */
      struct
      {
         uint32_t _FBSE_Reserved_31_16 :16;/*!< Reserved, bits 31:16 */
         uint32_t BSE                  :16;/*!< Bank Sector Enable, bits 15:0 */
      } FBSE_BITS;
   } Fbse;

   /*!
       Defines whole and bit level accesses to the Bank Busy Register - 0x38
   */
   union FBBUSY
   {
      uint32_t u32Register; /* Bank Busy Register, bits 31:0 */
      struct
      {
         uint32_t _FBBUSY_Reserved_31_08 :24;/*!< Reserved, bits 31:8 */
         uint32_t  BUSY                   :8; /*!< Bank Busy, bits 7:0 */
      } FBPROT_BITS;
   } Fbbusy;

   /*!
       Defines whole and bit level accesses to the Bank Access Control Register - 0x3C
   */
   union FBAC
   {
      uint32_t u32Register; /* Bank Access Control Register, bits 31:0 */
      struct
      {
         uint32_t _FBAC_Reserved_31_24 :8;/*!< Reserved, bits 31:24 */
         uint32_t OTPPROTDIS           :8;/*!< OTP Sector Protection Disable, bits 23:16 */
         uint32_t BAGP                 :8;/*!< Bank Active Grace Period, bits 15:8 */
         uint32_t VREADS               :8;/*!< VREAD Setup, bits 7:0 */
      } FBAC_BITS;
   } Fbac;

   /*!
       Defines whole and bit level accesses to the Bank Fallback Power Register - 0x40
   */
   union FBFALLBACK
   {
      uint32_t u32Register; /* Bank Fallback Power Register, bits 31:0 */
      struct
      {
         uint32_t _FBAC_Reserved_31_28 :4;/*!< Reserved, bits 31:28 */
         uint32_t FSM_PWRSAV           :4;/*!< Power saving clocking control, bits 27:24 */
         uint32_t _FBAC_Reserved_23_20 :4;/*!< Reserved, bits 23:20 */
         uint32_t REG_PWRSAV           :4;/*!< Power saving clocking control, bits 19:16 */
         uint32_t BANKPWR7             :2;/*!< Bank 7 Fallback Power Mode, bits 15:14 */
         uint32_t BANKPWR6             :2;/*!< Bank 6 Fallback Power Mode, bits 15:14 */
         uint32_t BANKPWR5             :2;/*!< Bank 5 Fallback Power Mode, bits 15:14 */
         uint32_t BANKPWR4             :2;/*!< Bank 4 Fallback Power Mode, bits 15:14 */
         uint32_t BANKPWR3             :2;/*!< Bank 3 Fallback Power Mode, bits 15:14 */
         uint32_t BANKPWR2             :2;/*!< Bank 2 Fallback Power Mode, bits 15:14 */
         uint32_t BANKPWR1             :2;/*!< Bank 1 Fallback Power Mode, bits 15:14 */
         uint32_t BANKPWR0             :2;/*!< Bank 0 Fallback Power Mode, bits 15:14 */
      } FBFALLBACK_BITS;
   } Fbfallback;

   /*!
       Defines whole and bit level accesses to the Bank/Pump Ready Register - 0x44
   */
   union FBPRDY
   {
      uint32_t u32Register; /* Bank/Pump Ready Register, bits 31:0 */
      struct
      {
         uint32_t _FBPRDY_Reserved_31_24 :8;/*!< Reserved, bits 31:24 */
         uint32_t BANKBUSY               :8;/*!< Bank Busy with FSM, SW_INTF, CPU or PMT, bits 23:16 */
         uint32_t PUMPRDY                :1;/*!< Pump Ready, bit 15 */
         uint32_t _FBPRDY_Reserved_14_08 :7;/*!< Reserved, bits 14:8 */
         uint32_t BANKRDY                :8;/*!< Bank Ready, bits 7:0 */
      } FBPRDY_BITS;
   } Fbprdy;


   /*!
       Defines whole and bit level accesses to the Pump Access Control Register 1 - 0x48
   */
   union FPAC1
   {
      uint32_t u32Register; /* Flash Pump Access Control Register 1, bits 31:0 */
      struct
      {
         uint32_t _FPAC1_Reserved_31_27  :5; /*!< Reserved, bits 31:27 */
         uint32_t PSBEEP                 :11;/*!< Pump Sleep, bits 26:16 */
         uint32_t _FPAC1_Reserved_15_01  :15;/*!< Reserved, bits 15:1 */
         uint32_t PUMPPWR                :1; /*!< Flash Charge Pump Fallback Power Mode, bit 0 */
      } FPAC1_BITS;
   } Fpac1;

   /*!
       Defines whole and bit level accesses to the Pump Access Control Register 2 - 0x4C
   */
   union FPAC2
   {
      uint32_t u32Register; /* Flash Pump Access Control Register 2, bits 31:0 */
      struct
      {
         uint32_t _FPAC2_Reserved_31_16 :16;/*!< Reserved, bits 31:16 */
         uint32_t PAGP                  :16;/*!< Pump Active Grace Period, bits 15:0 */
      } FPAC2_BITS;
   } Fpac2;

   /*!
       Defines whole and bit level accesses to the Module Access Control Register - 0x50
   */
   union FMAC
   {
      uint32_t u32Register; /* Module Access Control Register, bits 31:0 */
      struct
      {
         uint32_t _FMAC_Reserved_31_03 :29; /*!< Reserved, bits 31:3 */
         uint32_t  BANK                 :3; /*!< Bank Enable, bits 2:0 */
      } FMAC_BITS;
   } Fmac;

   /*!
       Defines whole and bit level accesses to the Module Status Register - 0x54
   */
   union FMSTAT
   {
      uint32_t u32Register; /* Module Status Register, bits 31:0 */
      struct
      {
         uint32_t _FMSTAT_Reserved_31_18 :14;/*!< Reserved, bits 31:18 */
         uint32_t RVSUSP                  :1; /*!< Read Verify Suspend, bit 17 */
         uint32_t RDVER                   :1; /*!< Read Verify command currently underway, bit 16 */
         uint32_t RVF                     :1; /*!< Read Verify Failure, bit 15 */
         uint32_t ILA                     :1; /*!< Illegal Address, bit 14 */
         uint32_t DBT                     :1; /*!< Disturbance Test Fail, bit 13 */
         uint32_t PGV                     :1; /*!< Program verify, bit 12 */
         uint32_t PCV                     :1; /*!< Precondidition verify, bit 11 */
         uint32_t EV                      :1; /*!< Erase verify, bit 10 */
         uint32_t CV                      :1; /*!< Compact Verify, bit 9 */
         uint32_t BUSY                    :1; /*!< Busy, bit 8 */
         uint32_t ERS                     :1; /*!< Erase Active, bit 7 */
         uint32_t PGM                     :1; /*!< Program Active, bit 6 */
         uint32_t INVDAT                  :1; /*!< Invalid Data, bit 5 */
         uint32_t CSTAT                   :1; /*!< Command Status, bit 4 */
         uint32_t VOLSTAT                 :1; /*!< Core Voltage Status, bit 3 */
         uint32_t ESUSP                   :1; /*!< Erase Suspend, bit 2 */
         uint32_t PSUSP                   :1; /*!< Program Suspend, bit 1 */
         uint32_t SLOCK                   :1; /*!< Sector Lock Status, bit 0 */
      } FMSTAT_BITS;
   } FmStat;

   /*!
       Defines whole and bit level accesses to the EEPROM Emulation Data MSW Register - 0x58
   */
   union FEMU_DMSW
   {
      uint32_t u32Register; /* EEPROM Emulation Data MSW Register, bits 31:0 */
   } FemuDmsw;

   /*!
       Defines whole and bit level accesses to the EEPROM Emulation Data LSW Register - 0x5C
   */
   union FEMU_DLSW
   {
      uint32_t u32Register; /* EEPROM Emulation Data LSW Register, bits 31:0 */
   } FemuDlsw;

   /*!
       Defines whole and bit level accesses to the EEPROM Emulation ECC Register - 0x60
   */
   union FEMU_ECC
   {
      uint32_t u32Register; /* EEPROM Emulation ECC Register, bits 31:0 */
      struct
      {
         uint32_t _FEMU_ECC_Reserved_31_08 :24;/*!< Reserved, bits 31:8 */
         uint32_t  EMU_ECC                  :8; /*!< EEPROM Emulation ECC, bits 7:0 */
      } FEMU_ECC_BITS;
   } FemuEcc;

   uint32_t _Reserved_64; /* Reserved Address Locations 0x64 */

   /*!
       Defines whole and bit level accesses to the EEPROM Emulation Address Register - 0x68
   */
   union FEMU_ADDR
   {
      uint32_t u32Register; /* EEPROM Emulation Address, bits 31:0 */
      struct
      {
         uint32_t _FEMU_ADDR_Reserved_31_22 :10;/*!< Reserved, bits 31:22 */
         uint32_t EMU_ADDR                  :22;/*!< EEPROM Emulation Address, bits 21:0 */
      } FEMU_ADDR_BITS;
   } FemuAddr;

   /*!
       Defines whole and bit level accesses to the Diagnostic Control Register - 0x6C
   */
   union FDIAGCTRL
   {
      uint32_t u32Register; /* Diagnostic Control Register, bits 31:0 */
      struct
      {
         uint32_t _FDIAGCTRL_Reserved_31_25 :7;/*!< Reserved, bits 31:25 */
         uint32_t DIAG_TRIG                 :1;/*!< Diagnostic Trigger, bit 24 */
         uint32_t _FDIAGCTRL_Reserved_23_20 :4;/*!< Reserved, bits 23:20 */
         uint32_t DIAG_EN_KEY               :4;/*!< Diagnostic Enable Key, bits 19:16 */
         uint32_t _FDIAGCTRL_Reserved_15    :1;/*!< Reserved, bits 15:13 */
         uint32_t DIAG_ECC_SEL              :3;/*!< Diagnostic SECDED Select, bits 14-12 */
         uint32_t _FDIAGCTRL_Reserved_11_10 :2;/*!< Reserved, bits 11:10 */
         uint32_t DIAG_BUF_SEL              :2;/*!< Diagnostic Buffer Select, bits 11:8 */
         uint32_t _FDIAGCTRL_Reserved_07_03 :5;/*!< Reserved, bits 7:3 */
         uint32_t DIAGMODE                  :3;/*!< Diagnostic Mode, bits 2:0 */
      } FDIAGCTRL_BITS;
   } FdiagCtrl;

   /*!
       Defines whole and bit level accesses to the Uncorrected Raw Data High Register - 0x70
   */
   union FRAW_DATAH
   {
      uint32_t u32Register; /* Uncorrected Raw Data High, bits 31:0 */
   } FrawDatah;

   /*!
       Defines whole and bit level accesses to the Uncorrected Raw Data Low Register - 0x74
   */
   union FRAW_DATAL
   {
      uint32_t u32Register; /* Uncorrected Raw Data Low, bits 31:0 */
   } FrawDatal;

   /*!
       Defines whole and bit level accesses to the Uncorrected Raw ECC Register - 0x78
   */
   union FRAW_ECC
   {
      uint32_t u32Register; /* Uncorrected Raw ECC, bits 31:0 */
      struct
      {
         uint32_t _FRAW_ECC_Reserved_31_08 :24;/*!< Reserved, bits 31:8 */
         uint32_t  RAW_ECC                  :8; /*!< Uncorrected Raw ECC, bits 7:0 */
      } FRAW_ECC_BITS;
   } FrawEcc;

   /*!
       Defines whole and bit level accesses to the Parity Override Register - 0x7C
   */
   union FPAR_OVR
   {
      uint32_t u32Register; /* Parity Override, bits 31:0 */
      struct
      {
         uint32_t _FPAR_OVR_Reserved_31_17 :15;/*!< Reserved, bits 31:17 */
         uint32_t  BNK_INV_PAR              :1; /*!< Buffer Invert Parity, bit 16 */
         uint32_t  BUS_PAR_DIS              :4; /*!< Disable bus parity, bits 15:12 */
         uint32_t  PAR_OVR_KEY              :3; /*!< Parity Override Key, bits 11:9 */
         uint32_t  ADD_INV_PAR              :1; /*!< Address Odd Parity, bit 8 */
         uint32_t  DAT_INV_PAR              :8; /*!< Data Odd Parity, bits 7:0 */
      } FPAR_OVR_BITS;
   } FparOvr;

   uint32_t _Reserved_80_BC[16];/* Reserved Address Locations 0x80 - 0xBC */

   /*!
       Defines whole and bit level accesses to the Error Detection Sector Disable2 Register - 0xC0
   */
   union FEDACSDIS2
   {
      uint32_t u32Register; /* Error Detection Sector Disable Register, bits 31:0 */
      struct
      {
         uint32_t BankID3_inverse         :3;/*!< Bank ID3 Inverse, bits 31:29 */
         uint32_t _FEDACSDIS2_Reserved_28 :1;/*!< Reserved, bit 28 */
         uint32_t SectorID3_inverse       :4;/*!< Sector ID3 Inverse, bits 27:24 */
         uint32_t BankID3                 :3;/*!< Bank ID3 , bits 23:21 */
         uint32_t _FEDACSDIS2_Reserved_20 :1;/*!< Reserved, bit 20 */
         uint32_t SectorID3               :4;/*!< Sector ID3 , bits 19:16 */
         uint32_t BankID2_inverse         :3;/*!< Bank ID2 Inverse, bits 15:13 */
         uint32_t _FEDACSDIS2_Reserved_12 :1;/*!< Reserved, bit 12 */
         uint32_t SectorID2_inverse       :4;/*!< Sector ID2 Inverse, bits 11:8 */
         uint32_t BankID2                 :3;/*!< Bank ID2 , bits 7:5 */
         uint32_t _FEDACSDIS2_Reserved_4  :1;/*!< Reserved, bit 4 */
         uint32_t SectorID2               :4;/*!< Sector ID2 , bits 3:0 */
      } FEDACSDIS2_BITS;
   } FedAcsDis2;

   uint32_t _Reserved_C4_10C[19];/* Reserved Address Locations 0xC4 - 0x10C */


   /*!
       Defines whole and bit level accesses to the Bank Addr Register - 0x110
   */
   union FADDR
   {
      uint32_t u32Register; /* Bank Addr Register, bits 31:0 */
   } Faddr;

   uint32_t _Reserved_114_118[2]; /* Reserved Address Locations 0x114-0x118 */

    union FTCTRL
      {
         uint32_t u32Register; /* Error Detection Sector Disable Register, bits 31:0 */
         struct
         {
            uint32_t  Reserved_31_25 :7;/*!< Reserved bits, 31:25 */
            uint32_t  AutoCalc_EN    :1;/*!< Auto Calc Enable bit 24 */
            uint32_t  Reserved_23_17 :7;/*!< Reserved bits, 23:17 */
			uint32_t  WKData_Blk_Clr :1;/*!< Block clearing of FWPWRTITE, bit 16 */
			uint32_t  Reserved_23_02 :14;/*!< Reserved bits, 23:02 */ 
			uint32_t  Test_EN        :1;/*!< Test Enable bit 1 */
			uint32_t  Reserved_00    :1;/*!< Reserved bit, 00 */ 
         } FTCTRL_BITS;
      } Ftctrl;

   
   /*!
       Defines whole and bit level accesses to the FWPWRITE0 Register - 0x120
   */
   union FWPWRITE0
   {
      uint32_t u32Register; /* FWPWRITE0 Register, bits 31:0 */
   } Fwpwrite0;

   /*!
       Defines whole and bit level accesses to the FWPWRITE1 Register - 0x124
   */
   union FWPWRITE1
   {
      uint32_t u32Register; /* FWPWRITE1 Register, bits 31:0 */
   } Fwpwrite1;

   /*!
       Defines whole and bit level accesses to the FWPWRITE2 Register - 0x128
   */
   union FWPWRITE2
   {
      uint32_t u32Register; /* FWPWRITE2 Register, bits 31:0 */
   } Fwpwrite2;

   /*!
       Defines whole and bit level accesses to the FWPWRITE3 Register - 0x12C
   */
   union FWPWRITE3
   {
      uint32_t u32Register; /* FWPWRITE3 Register, bits 31:0 */
   } Fwpwrite3;

   /*!
       Defines whole and bit level accesses to the FWPWRITE4 Register - 0x130
   */
   union FWPWRITE4
   {
      uint32_t u32Register; /* FWPWRITE4 Register, bits 31:0 */
   } Fwpwrite4;

   /*!
       Defines whole and bit level accesses to the FWPWRITE5 Register - 0x134
   */
   union FWPWRITE5
   {
      uint32_t u32Register; /* FWPWRITE5 Register, bits 31:0 */
   } Fwpwrite5;

   /*!
       Defines whole and bit level accesses to the FWPWRITE6 Register - 0x138
   */
   union FWPWRITE6
   {
      uint32_t u32Register; /* FWPWRITE6 Register, bits 31:0 */
   } Fwpwrite6;

   /*!
       Defines whole and bit level accesses to the FWPWRITE7 Register - 0x13C
   */
   union FWPWRITE7
   {
      uint32_t u32Register; /* FWPWRITE7 Register, bits 31:0 */
   } Fwpwrite7;

   /*!
       Defines whole and bit level accesses to the FWPWRITE_ECC Register - 0x140
   */
   union FWPWRITE_ECC
   {
      uint32_t u32Register; /* FWPWRITE_ECC Register, bits 31:0 */
      struct
      {
         uint32_t WPDATA_287_256; /*!< WPDATA[287:256], bits 31:0 */
      } FWPWRITE_ECC_BITS;
      struct
      {
         uint32_t u8Bytes07_00:8;
         uint32_t u8Bytes15_08:8;
         uint32_t u8Bytes23_16:8;
         uint32_t u8Bytes31_24:8;
      } FWPWRITE_ECC_BYTES;
   } FwpwriteEcc;

   uint32_t _Reserved_144_208[50]; /* Reserved Address Locations 0x144-0x208 */

   /*!
       Defines whole and bit level accesses to the FSM Command Register - 0x20C
   */
   union FSM_COMMAND
   {
      uint32_t u32Register; /* FSM Command, bits 31:0 */
      struct
      {
         uint32_t _FSM_COMMAND_Reserved_31_06 :26;/*!< Reserved, bits 31:6 */
         uint32_t  FSMCMD                      :6; /*!< Flash State Machine Command, bits 5:0 */
      } FSM_COMMAND_BITS;
   } FsmCommand;

   uint32_t _Reserved_210_284[30]; /* Reserved Address Locations 0x210-0x284 */

   /*!
       Defines whole and bit level accesses to the FSM Register Write Enable- 0x288
   */
   union FSM_WR_ENA
   {
      uint32_t u32Register; /* FSM Register Write Enable, bits 31:0 */
      struct
      {
         uint32_t _FSM_WR_ENA_Reserved_31_03 :29;/*!< Reserved, bits 31:3 */
         uint32_t  WR_ENA                     :3; /*!< FSM Write Enable, bits 2:0 */
      } FSM_WR_ENA_BITS;
   } FsmWrEna;

   uint32_t _Reserved_28C_2A0[6]; /* Reserved Address Locations 0x28C-0x2A0 */

   /*!
       Defines whole and bit level accesses to the FSM Sector Register - 0x2A4
   */
   union FSM_SECTOR
   {
      uint32_t u32Register; /* FSM Sector, bits 31:0 */
      struct
      {
         uint32_t SECT_ERASED                :16;/*!< Sectors Erased, bits 31:16 */
         uint32_t  _FSM_SECTOR_Reserved_15_0 :16; /*!< Reserved, bits 15:0 */
      } FSM_SECTOR_BITS;
   } FsmSector;

   uint32_t _Reserved_2A8_2B0[3]; /* Reserved Address Locations 0x2A8-0x2B0 */

   /*!
       Defines whole and bit level accesses to the FSM Command Execute Register - 0x2B4
   */
   union FSM_EXECUTE
   {
      uint32_t u32Register; /* FSM Command Execute, bits 31:0 */
      struct
      {
         uint32_t _FSM_EXECUTE_Reserved_31_20 :12;/*!< Reserved, bits 31:20 */
         uint32_t  SUSPEND_NOW                 :4; /*!< FSM Command Suspend, bits 19:16 */
         uint32_t _FSM_EXECUTE_Reserved_15_05 :11;/*!< Reserved, bits 15:5 */
         uint32_t  FSMEXECUTE                  :5; /*!< FSM Command Execute, bits 4:0 */
      } FSM_EXECUTE_BITS;
   } FsmExecute;

   /*!
       Defines whole and bit level accesses to the EEPROM Emulation configuration Register - 0x2B8
   */
   union EEPROM_CONFIG
   {
      uint32_t u32Register; /* EEPROM Emulation configuration, bits 31:0 */
      struct
      {
         uint32_t _EEPROM_CONFIG_Reserved_31_20 :12;/*!< Reserved, bits 31:20 */
         uint32_t  EWAIT                         :4; /*!< EEPROM Wait state Counter, bits 19:16 */
         uint32_t  _EEPROM_CONFIG_Reserved_15_09 :7;/*!< Reserved, bits 15:9 */
         uint32_t  AUTOSUSP_EN                   :1; /*!< Auto-suspend Enable, bit 8 */
         uint32_t  AUTOSTART_GRACE               :8; /*!< Auto-suspend Startup Grace Period, bits 7:0 */
      } EEPROM_CONFIG_BITS;
   } EepromConfig;

   uint32_t _Reserved_2BC;  /* Reserved Address Locations 0x2BC */

   /*!
       Defines whole and bit level accesses to the FSM Sector1 Register - 0x2C0
   */
   union FSM_SECTOR_1
   {
      uint32_t u32Register; /* FSM Sector1, bits 31:0 */
   } FsmSector1;

   /*!
       Defines whole and bit level accesses to the FSM Sector2 Register - 0x2C4
   */
   union FSM_SECTOR_2
   {
      uint32_t u32Register; /* FSM Sector1, bits 31:0 */
   } FsmSector2;

   uint32_t _Reserved_2C8_304[16];/* Reserved Address Locations 0x2C8 - 0x304 */

   /*!
       Defines whole and bit level accesses to the EEPROM Error Correction Control Register1 - 0x308
   */
   union EE_CTRL1
   {
      uint32_t u32Register; /* EEPROM Error Correction Control Register1, bits 31:0 */
      struct
      {
         uint32_t _EE_CTRL1_Reserved_31_20 :12;/*!< Reserved, bits 31:20 */
         uint32_t EE_EDACMODE              :4;/*!< Error Correction Mode, bits 19:16 */
         uint32_t _EE_CTRL1_Reserved_15_11 :5;/*!< Reserved, bits 15:11 */
         uint32_t EE_EOFEN                 :1;/*!< Error on One Fail Enable, bit 10 */
         uint32_t EE_EZFEN                 :1;/*!< Error on Zero Fail Enable, bit 9 */
         uint32_t EE_PEN                   :1;/*!< Error Profiling Enable, bit 8 */
         uint32_t _EE_CTRL1_Reserved_07_06 :2;/*!< Reserved, bits 7:6 */
         uint32_t EE_ALL1_OK               :1;/*!< One Condition Valid, bit 5 */
         uint32_t EE_ALL0_OK               :1;/*!< Zero Condition Valid, bit 4 */
         uint32_t EE_EDACEN                :4;/*!< Error Detection and Correction Enable, bits 3:0 */
      } EE_CTRL1_BITS;
   } EeCtrl1;

   /*!
       Defines whole and bit level accesses to the EEPROM Error Correction Control Register2 - 0x30C
   */
   union EE_CTRL2
   {
      uint32_t u32Register; /* EEPROM Error Correction Control Register2, bits 31:0 */
      struct
      {
         uint32_t _EE_CTRL2_Reserved_31_16 :16;/*!< Reserved, bits 31:16 */
         uint32_t EE_SEC_THRESHOLD         :16;/*!< EEPROM Single Error Correction Threshold, bits 15:0 */
      } EE_CTRL2_BITS;
   } EeCtrl2;

   /*!
       Defines whole and bit level accesses to the EEPROM Error Correction Counter Register - 0x310
   */
   union EE_COR_ERR_CNT
   {
      uint32_t u32Register; /* EEPROM Error Correction Counter Register, bits 31:0 */
      struct
      {
         uint32_t _EE_COR_ERR_CNT_Reserved_31_16 :16;/*!< Reserved, bits 31:16 */
         uint32_t EE_ERRCNT                      :16;/*!< Correctable Error Counter, bits 15:0 */
      } EE_COR_ERR_CNT_BITS;
   } EeCorErrCnt;

   /*!
       Defines whole and bit level accesses to the EEPROM Correctable Error Address Register - 0x314
   */
   union EE_COR_ERR_ADD
   {
      uint32_t u32Register; /* Correctable Error Address Register, bits 31:0 */
      struct
      {
         uint32_t COR_ERR_ADD                  :29;/*!< Correctable Error Address, bits 31:3 */
         uint32_t B_OFF                        :3;/*!< Byte Offset, bits 2:0 */
      } EE_COR_ERR_ADD_BITS;
   } EeCorErrAdd;

   /*!
       Defines whole and bit level accesses to the EEPROM Correctable Error Position Register - 0x318
   */
   union EE_COR_ERR_POS
   {
      uint32_t u32Register; /* EEPROM Correctable Error Position Register, bits 31:0 */
      struct
      {
         uint32_t _EE_COR_ERR_POS_Reserved_31_9 :22;/*!< Reserved, bits 31:9 */
         uint32_t  TYPE                         :1; /*!< Error Type, bit 8 */
         uint32_t  EE_ERR_POS                   :8; /*!< Single Error Position, bits 7:0 */
      } EE_COR_ERR_POS_BITS;
   } EeCorErrPos;

   /*!
       Defines whole and bit level accesses to the EEPROM Error Status Register - 0x31C
   */
   union EE_STATUS
   {
      uint32_t u32Register; /* EEPROM Error Status Register, bits 31:0 */
      struct
      {
         uint32_t _EE_STATUS_Reserved_31_13 :19;/*!< Reserved, bits 31:13 */
         uint32_t EE_D_UNC_ERR              :1;/*!< Diagnostic Un-correctable Error Status Flag, bit 12 */
         uint32_t _EE_STATUS_Reserved_11_9  :3;/*!< Reserved, bits 11:9 */
         uint32_t EE_UNC_ERR                :1;/*!< Multiple bit ECC or Parity Error Status Flag, bit 8 */
         uint32_t _EE_STATUS_Reserved_7     :1;/*!< Reserved, bit 7 */
         uint32_t EE_CMG                    :1;/*!< EE Compare Malfunction Flag, bit 6 */
         uint32_t _EE_STATUS_Reserved_5     :1;/*!< Reserved, bit 5 */
         uint32_t EE_CME                    :1;/*!< EE ECC Malfunction Status Flag, bit 4 */
         uint32_t EE_D_COR_ERR              :1;/*!< Diagnostic Correctable Error Status Flag, bit 3 */
         uint32_t EE_ERR_ONE_FLG            :1;/*!< Error On One Fail Status Flag, bit 2 */
         uint32_t EE_ERR_ZERO_FLG           :1;/*!< Error On Zero Fail Status Flag, bit 1 */
         uint32_t EE_ERR_PRF_FLG            :1;/*!< Error Profiling Status Flag, bit 0 */
      } EE_STATUS_BITS;
   } EeStatus;

   /*!
       Defines whole and bit level accesses to the Un-correctable Error Address Register - 0x320
   */
   union EE_UNC_ERR_ADD
   {
      uint32_t u32Register; /* Error Status Register, bits 31:0 */
      struct
      {
         uint32_t UNC_ERR_ADD                  :29;/*!< Un-correctable Error Address, bits 31:3 */
         uint32_t B_OFF                        :3;/*!< Byte Offset, bits 2:0 */
      } EE_UNC_ERR_ADD_BITS;
   } EeUncErrAdd;

   uint32_t _Reserved_324_3FC[55];/* Reserved Address Locations 0x324 - 0x3FC */

   /*!
       Defines whole and bit level accesses to the FCFG BANK Register - 0x400
   */
   union FCFG_BANK_1
   {
      uint32_t u32Register; /* Flash Bank configuration, bits 31:0 */
      struct
      {
         uint32_t  EE_BANK_WIDTH                  :12;/*!< EE_BANK_WIDTH, bits 31:20 */
         uint32_t  _FCFG_BANK_Reserved_19_16      :4; /*!< Reserved bits 19:16 */
         uint32_t  MAIN_BANK_WIDTH                :12;/*!< MAIN_BANK_WIDTH, bits 15:4 */
         uint32_t  _FCFG_BANK_Reserved_3_0        :4; /*!< Reserved bits 3:0 */
      } FCFG_BANK_BITS;
   } FcfgBank;

} Fapi_FmcRegistersType;


/**********************************************************************************************************************
 *  END OF FILE: Registers_FMC_BE.h
 *********************************************************************************************************************/
/*LDRA_ANALYSIS*/

/* Certain non released devices did not contain this information in the FMC */
   /* Macro to get the width of the Data on Main Banks */
   /* Macro to get the width of the ECC on Main Banks */
   /* Macro to get the width of the Data on EEPROM Bank */
   /* Macro to get the width of the ECC on EEPROM Bank */

/* Typedef pointer to Fapi_FmcRegistersType */
typedef Fapi_FmcRegistersType* pFapi_FmcRegistersType;

/* Typedef byte pointer to FWPWRITEx Registers */
typedef volatile uint8_t  FwpWriteByteAccessorType;
/* Typedef dword pointer to FWPWRITEx Registers */
typedef volatile uint32_t FwpWriteDWordAccessorType;

/* Offset from FMC base address to the start of the FWPWRITEx registers */
/* Macro that creates a byte accessor pointer to the FWPWRITEx registers */
/* Macro that creates a byte accessor pointer to the FWPWRITE_ECC register */
/* Macro that creates a dword accessor pointer to the FWPWRITEx registers */

/* Macro that creates an object pointer to the start of the FMC registers */

/* Macro that defines the base address for the FMC registers structure */


/**********************************************************************************************************************
 *  END OF FILE: Registers.h
 *********************************************************************************************************************/
/**********************************************************************************************************************
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \verbatim
 *
 *                 © Copyright 2009-2012 Texas Instruments Incorporated.  All rights reserved.
 *
 *  \endverbatim
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *
 *      Project:  Hercules™ ARM® Safety MCUs - F021 Flash API 
 *      Version:  v2.01.01 Build(000830)                                                                                
 *   Build Date:  2014-10-21                                                                                            
 *
 *         File:  FapiFunctions.h                                                                                       
 *
 *  Description:  All the FAPI function extern definitions.
 *---------------------------------------------------------------------------------------------------------------------
 * Author:  John R Hall
 *---------------------------------------------------------------------------------------------------------------------
 *
 *********************************************************************************************************************/




/* Flash C API functions*/

/* Flash State Machine commands */
extern Fapi_StatusType Fapi_enableMainBankSectors(uint16_t u16SectorsEnables);

extern Fapi_StatusType Fapi_enableEepromBankSectors(
                                                    uint32_t u32SectorsEnables_31_0, 
                                                    uint32_t u32SectorsEnables_63_32
                                                   );

extern Fapi_StatusType Fapi_enableFsmDoneEvent(void);

extern Fapi_StatusType Fapi_disableFsmDoneEvent(void);

extern Fapi_StatusType Fapi_initializeFlashBanks(uint32_t u32HclkFrequency);

extern Fapi_StatusType Fapi_setActiveFlashBank(Fapi_FlashBankType oNewFlashBank);

extern Fapi_StatusType Fapi_enableBanksForOtpWrite(uint8_t u8Banks);

extern Fapi_StatusType Fapi_disableBanksForOtpWrite(void);

/* Functions only available on devices with L2FMC Flash controllers */

extern void Fapi_flushPipeline(void);

extern uint32_t* Fapi_remapEccAddress(uint32_t u32EccAddress);

extern uint32_t Fapi_remapMainAddress(uint32_t u32MainAddress);

extern boolean_t Fapi_isAddressEcc(uint32_t u32Address);

extern boolean_t Fapi_isAddressEEPROM(uint32_t u32Address);

/* Async Commands */
extern Fapi_StatusType Fapi_issueAsyncCommandWithAddress(
                                                         Fapi_FlashStateCommandsType oCommand,
                                                         uint32_t* pu32StartAddress
                                                        );

extern Fapi_StatusType Fapi_issueAsyncCommand(Fapi_FlashStateCommandsType oCommand);

/* Info Commands */
extern Fapi_LibraryInfoType Fapi_getLibraryInfo(void);
extern Fapi_DeviceInfoType Fapi_getDeviceInfo(void);
extern Fapi_StatusType Fapi_getBankSectors(
                                           Fapi_FlashBankType oBank, 
                                           Fapi_FlashBankSectorsType* poFlashBankSectors 
                                          );
extern uint32_t Fapi_getNumberOfBankSectors( uint32_t u32Bank);
/* Read commands */
extern Fapi_StatusType Fapi_doBlankCheck(
                                         uint32_t* pu32StartAddress,
                                         uint32_t u32Length,
                                         Fapi_FlashStatusWordType* poFlashStatusWord
                                        );

extern Fapi_StatusType Fapi_doMarginRead(
                                         uint32_t* pu32StartAddress,
                                         uint32_t* pu32ReadBuffer,
                                         uint32_t u32Length,
                                         Fapi_FlashReadMarginModeType oReadMode
                                        );

extern Fapi_StatusType Fapi_doVerify(
                                     uint32_t* pu32StartAddress,
                                     uint32_t u32Length,
                                     uint32_t* pu32CheckValueBuffer,
                                     Fapi_FlashStatusWordType* poFlashStatusWord
                                    );

extern uint32_t Fapi_calculatePsa(
                                uint32_t* pu32StartAddress,
                                uint32_t u32Length,
                                uint32_t u32PsaSeed,
                                Fapi_FlashReadMarginModeType oReadMode
                               );

extern Fapi_StatusType Fapi_doPsaVerify(
                                        uint32_t* pu32StartAddress,
                                        uint32_t u32Length,
                                        uint32_t u32PsaValue,
                                        Fapi_FlashStatusWordType* poFlashStatusWord
                                       );

extern Fapi_StatusType Fapi_doBlankCheckByByte(
                                               uint8_t* pu8StartAddress,
                                               uint32_t u32Length,
                                               Fapi_FlashStatusWordType* poFlashStatusWord
                                              );

extern Fapi_StatusType Fapi_doMarginReadByByte(
                                               uint8_t* pu8StartAddress,
                                               uint8_t* pu8ReadBuffer,
                                               uint32_t u32Length,
                                               Fapi_FlashReadMarginModeType oReadMode
                                              );

extern Fapi_StatusType Fapi_doVerifyByByte(
                                           uint8_t* pu8StartAddress,
                                           uint32_t u32Length,
                                           uint8_t* pu8CheckValueBuffer,
                                           Fapi_FlashStatusWordType* poFlashStatusWord
                                          );

/* Programming Commands */
extern Fapi_StatusType Fapi_issueProgrammingCommand(
                                                    uint32_t* pu32StartAddress,
                                                    uint8_t*  pu8DataBuffer,
                                                    uint8_t   u8DataBufferSizeInBytes,
                                                    uint8_t*  pu8EccBuffer,
                                                    uint8_t   u8EccBufferSizeInBytes,
                                                    Fapi_FlashProgrammingCommandsType oMode
                                                   );

extern Fapi_StatusType Fapi_issueProgrammingCommandForEccAddresses(
                                                                   uint32_t* pu32StartAddress,
                                                                   uint8_t*  pu8EccBuffer,
                                                                   uint8_t   u8EccBufferSizeInBytes
                                                                  );

/* Utility Commands */
extern Fapi_StatusType Fapi_waitDelay(volatile uint32_t u32WaitDelay);

extern uint32_t Fapi_calculateFletcherChecksum(
                                             uint32_t u32Address,
                                             uint32_t u32Length
                                            );

extern uint8_t Fapi_calculateEcc(
                               uint32_t u32Address,
                               uint64_t u64Data
                              );

/* User Defined Functions */
extern Fapi_StatusType Fapi_serviceWatchdogTimer(void);



/**********************************************************************************************************************
 *  END OF FILE: FapiFunctions.h
 *********************************************************************************************************************/
/**********************************************************************************************************************
 *  COPYRIGHT
 *  -------------------------------------------------------------------------------------------------------------------
 *  \verbatim
 *
 *                 © Copyright 2009-2012 Texas Instruments Incorporated.  All rights reserved.
 *
 *  \endverbatim
 *  -------------------------------------------------------------------------------------------------------------------
 *  FILE DESCRIPTION
 *  -------------------------------------------------------------------------------------------------------------------
 *
 *      Project:  Hercules™ ARM® Safety MCUs - F021 Flash API 
 *      Version:  v2.01.01 Build(000830)                                                                                
 *   Build Date:  2014-10-21                                                                                            
 *
 *         File:  Compatibility.h                                                                                       
 *
 *  Description:  A set of macro defines to provide backwards compatibility to v1.x API.
 *---------------------------------------------------------------------------------------------------------------------
 * Author:  John R Hall
 *---------------------------------------------------------------------------------------------------------------------
 *
 *********************************************************************************************************************/



/*LDRA_NOANALYSIS*/
/* This header file is intended for backwards compatibility only and is not meant to be MISRA-C compliant */

/* Define to provide backwards compatibility with Fapi_initializeFlashApi() */

/* Define to provide backwards compatibility with Fapi_getFsmStatus() */

/* Define to provide backwards compatibility with Fapi_issueFsmSuspendCommand() */

/* Define to provide backwards compatibility with Fapi_writeEwaitValue() */

/* Define to provide backwards compatibility with Fapi_checkFsmForReady() */


/*LDRA_ANALYSIS*/

/**********************************************************************************************************************
 *  END OF FILE: Compatibility.h
 *********************************************************************************************************************/


/**********************************************************************************************************************
 *  END OF FILE: F021.h
 *********************************************************************************************************************/

extern MUTT_Flash_Sector_t MUTT_Flash_Sectors[(((16)) + ((16)) + ((0)) + ((0)) + ((0)) + ((0)) + ((0)) + ((32)))];

static MUTT_Flash_Sector_t __private_MUTT_sec = { 0 };


const MUTT_Flash_Sector_t* MUTT_get_flash_sector(uint32_t addr) {
	const MUTT_Flash_Sector_t* ret = 0;
	uint32_t i = 0;


	for (i = 0; i < (((16)) + ((16)) + ((0)) + ((0)) + ((0)) + ((0)) + ((0)) + ((32))); i++) {
		const MUTT_Flash_Sector_t* sec = &MUTT_Flash_Sectors[i];
		if((sec->start <= addr) && (addr < sec->start + sec->length)) {
			__private_MUTT_sec.start = sec->start;
			__private_MUTT_sec.length = sec->length;
			__private_MUTT_sec.bank = sec->bank;
			__private_MUTT_sec.sector_number = sec->sector_number;
			break;
		}
	}
	
	if (i < (((16)) + ((16)) + ((0)) + ((0)) + ((0)) + ((0)) + ((0)) + ((32)))) {
		ret = &__private_MUTT_sec;
	} else {
		ret = 0;
	}

	return ret;
}

uint32_t MUTT_flash_init(uint32_t hclk) {
	Fapi_StatusType ret = Fapi_Status_Success;
	
	ret = Fapi_initializeFlashBanks(hclk);

	return (uint32_t) ret;
}


static Fapi_StatusType F021_prepare_flash_bank(const MUTT_Flash_Sector_t* start, const MUTT_Flash_Sector_t* end) {
	Fapi_StatusType fstatus = Fapi_Status_Success;

	fstatus = Fapi_setActiveFlashBank((Fapi_FlashBankType)start->bank);
	
	if (fstatus == Fapi_Status_Success) {
		uint16_t sectors = 0x0000;

		sectors |= ((0xFFFFU >> (16 - start->sector_number)) ^ (0xFFFFU >> (15 - end->sector_number)));
		fstatus = Fapi_enableMainBankSectors(sectors);
	}

	if (fstatus == Fapi_Status_Success) {
		while ((((pFapi_FmcRegistersType)(0xFFF87000U))->FmStat . FMSTAT_BITS . BUSY ? Fapi_Status_FsmBusy : Fapi_Status_FsmReady) != Fapi_Status_FsmReady);
	}

	return fstatus;

}

/*
 * Call MUTT_flash_init every time before calling this function (probably)
 */
uint32_t MUTT_flash_write(uint32_t* addr, uint32_t len, uint8_t* buffer) {
	Fapi_StatusType fstatus = Fapi_Status_Success;
	const MUTT_Flash_Sector_t* sector_start = MUTT_get_flash_sector((uint32_t)addr);
	const MUTT_Flash_Sector_t* sector_end   = MUTT_get_flash_sector((uint32_t)(addr + len - 1));
	uint32_t ret = 0;

	if (sector_start->bank == sector_end->bank) {
		fstatus = F021_prepare_flash_bank(sector_start, sector_end);

		if (fstatus == Fapi_Status_Success) {
			fstatus = Fapi_issueProgrammingCommand(addr, buffer, len, 0, 0, Fapi_DataOnly);
		}
			
			
		if (fstatus == Fapi_Status_Success) {
			while ((((pFapi_FmcRegistersType)(0xFFF87000U))->FmStat . FMSTAT_BITS . BUSY ? Fapi_Status_FsmBusy : Fapi_Status_FsmReady) == Fapi_Status_FsmBusy);
		}

		if (((((pFapi_FmcRegistersType)(0xFFF87000U))->FmStat . u32Register)) != 0) {
			fstatus = Fapi_Error_Fail;
		}

	}
		
	return ret;
}

uint32_t MUTT_flash_erase(uint32_t addr, uint32_t len) {
	uint32_t ret = 0;

	Fapi_StatusType fstatus = Fapi_Status_Success;
	const MUTT_Flash_Sector_t* sector_start = MUTT_get_flash_sector(addr);
	const MUTT_Flash_Sector_t* sector_end	  =	MUTT_get_flash_sector(addr + len - 1);

	if (sector_start->bank == sector_end->bank) {
		const MUTT_Flash_Sector_t* iter_sector = sector_start;
		// Call Fapi_setActiveFlashBank() for current bank
		
		fstatus = F021_prepare_flash_bank(sector_start, sector_end);

		while((fstatus == Fapi_Status_Success) && (iter_sector->sector_number <= sector_end->sector_number)) {
			if (fstatus == Fapi_Status_Success) {
				fstatus = Fapi_issueAsyncCommandWithAddress(Fapi_EraseSector, sector_start->start);
			}
			
			
			if (fstatus == Fapi_Status_Success) {
				while ((((pFapi_FmcRegistersType)(0xFFF87000U))->FmStat . FMSTAT_BITS . BUSY ? Fapi_Status_FsmBusy : Fapi_Status_FsmReady) == Fapi_Status_FsmBusy);
			}

			if (((((pFapi_FmcRegistersType)(0xFFF87000U))->FmStat . u32Register)) != 0) {
				fstatus = Fapi_Error_Fail;
			}

			return fstatus;

			iter_sector++;
		}

	}

	return ret;
}





