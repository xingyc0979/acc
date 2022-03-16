# 1 "/home/sd/ACC_v09/ACC/src/y.tab.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "/home/sd/ACC_v09/ACC/src/y.tab.c"

static const char yysccsid[] = "@(#)yaccpar	1.9 (Berkeley) 02/21/93";


# 1 "/usr/include/stdlib.h" 1 3 4
# 25 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 3 4
# 1 "/usr/include/features.h" 1 3 4
# 461 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 1 3 4
# 452 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 453 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 454 "/usr/include/x86_64-linux-gnu/sys/cdefs.h" 2 3 4
# 462 "/usr/include/features.h" 2 3 4
# 485 "/usr/include/features.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/gnu/stubs-64.h" 1 3 4
# 11 "/usr/include/x86_64-linux-gnu/gnu/stubs.h" 2 3 4
# 486 "/usr/include/features.h" 2 3 4
# 34 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 2 3 4
# 26 "/usr/include/stdlib.h" 2 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
# 209 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4

# 209 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 321 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
typedef int wchar_t;
# 32 "/usr/include/stdlib.h" 2 3 4







# 1 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 1 3 4
# 52 "/usr/include/x86_64-linux-gnu/bits/waitflags.h" 3 4
typedef enum
{
  P_ALL,
  P_PID,
  P_PGID
} idtype_t;
# 40 "/usr/include/stdlib.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/waitstatus.h" 1 3 4
# 41 "/usr/include/stdlib.h" 2 3 4
# 55 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 1 3 4
# 120 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/long-double.h" 1 3 4
# 25 "/usr/include/x86_64-linux-gnu/bits/floatn-common.h" 2 3 4
# 121 "/usr/include/x86_64-linux-gnu/bits/floatn.h" 2 3 4
# 56 "/usr/include/stdlib.h" 2 3 4


typedef struct
  {
    int quot;
    int rem;
  } div_t;



typedef struct
  {
    long int quot;
    long int rem;
  } ldiv_t;





__extension__ typedef struct
  {
    long long int quot;
    long long int rem;
  } lldiv_t;
# 97 "/usr/include/stdlib.h" 3 4
extern size_t __ctype_get_mb_cur_max (void) __attribute__ ((__nothrow__ , __leaf__)) ;



extern double atof (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern int atoi (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;

extern long int atol (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;



__extension__ extern long long int atoll (const char *__nptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;



extern double strtod (const char *__restrict __nptr,
        char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern float strtof (const char *__restrict __nptr,
       char **__restrict __endptr) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern long double strtold (const char *__restrict __nptr,
       char **__restrict __endptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 176 "/usr/include/stdlib.h" 3 4
extern long int strtol (const char *__restrict __nptr,
   char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

extern unsigned long int strtoul (const char *__restrict __nptr,
      char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



__extension__
extern long long int strtoq (const char *__restrict __nptr,
        char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtouq (const char *__restrict __nptr,
           char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));




__extension__
extern long long int strtoll (const char *__restrict __nptr,
         char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));

__extension__
extern unsigned long long int strtoull (const char *__restrict __nptr,
     char **__restrict __endptr, int __base)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 385 "/usr/include/stdlib.h" 3 4
extern char *l64a (long int __n) __attribute__ ((__nothrow__ , __leaf__)) ;


extern long int a64l (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1))) ;




# 1 "/usr/include/x86_64-linux-gnu/sys/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/types.h" 1 3 4
# 27 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/timesize.h" 1 3 4
# 29 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned char __u_char;
typedef unsigned short int __u_short;
typedef unsigned int __u_int;
typedef unsigned long int __u_long;


typedef signed char __int8_t;
typedef unsigned char __uint8_t;
typedef signed short int __int16_t;
typedef unsigned short int __uint16_t;
typedef signed int __int32_t;
typedef unsigned int __uint32_t;

typedef signed long int __int64_t;
typedef unsigned long int __uint64_t;






typedef __int8_t __int_least8_t;
typedef __uint8_t __uint_least8_t;
typedef __int16_t __int_least16_t;
typedef __uint16_t __uint_least16_t;
typedef __int32_t __int_least32_t;
typedef __uint32_t __uint_least32_t;
typedef __int64_t __int_least64_t;
typedef __uint64_t __uint_least64_t;



typedef long int __quad_t;
typedef unsigned long int __u_quad_t;







typedef long int __intmax_t;
typedef unsigned long int __uintmax_t;
# 141 "/usr/include/x86_64-linux-gnu/bits/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/typesizes.h" 1 3 4
# 142 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/time64.h" 1 3 4
# 143 "/usr/include/x86_64-linux-gnu/bits/types.h" 2 3 4


typedef unsigned long int __dev_t;
typedef unsigned int __uid_t;
typedef unsigned int __gid_t;
typedef unsigned long int __ino_t;
typedef unsigned long int __ino64_t;
typedef unsigned int __mode_t;
typedef unsigned long int __nlink_t;
typedef long int __off_t;
typedef long int __off64_t;
typedef int __pid_t;
typedef struct { int __val[2]; } __fsid_t;
typedef long int __clock_t;
typedef unsigned long int __rlim_t;
typedef unsigned long int __rlim64_t;
typedef unsigned int __id_t;
typedef long int __time_t;
typedef unsigned int __useconds_t;
typedef long int __suseconds_t;

typedef int __daddr_t;
typedef int __key_t;


typedef int __clockid_t;


typedef void * __timer_t;


typedef long int __blksize_t;




typedef long int __blkcnt_t;
typedef long int __blkcnt64_t;


typedef unsigned long int __fsblkcnt_t;
typedef unsigned long int __fsblkcnt64_t;


typedef unsigned long int __fsfilcnt_t;
typedef unsigned long int __fsfilcnt64_t;


typedef long int __fsword_t;

typedef long int __ssize_t;


typedef long int __syscall_slong_t;

typedef unsigned long int __syscall_ulong_t;



typedef __off64_t __loff_t;
typedef char *__caddr_t;


typedef long int __intptr_t;


typedef unsigned int __socklen_t;




typedef int __sig_atomic_t;
# 30 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



typedef __u_char u_char;
typedef __u_short u_short;
typedef __u_int u_int;
typedef __u_long u_long;
typedef __quad_t quad_t;
typedef __u_quad_t u_quad_t;
typedef __fsid_t fsid_t;


typedef __loff_t loff_t;




typedef __ino_t ino_t;
# 59 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __dev_t dev_t;




typedef __gid_t gid_t;




typedef __mode_t mode_t;




typedef __nlink_t nlink_t;




typedef __uid_t uid_t;





typedef __off_t off_t;
# 97 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;




typedef __ssize_t ssize_t;





typedef __daddr_t daddr_t;
typedef __caddr_t caddr_t;





typedef __key_t key_t;




# 1 "/usr/include/x86_64-linux-gnu/bits/types/clock_t.h" 1 3 4






typedef __clock_t clock_t;
# 127 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types/clockid_t.h" 1 3 4






typedef __clockid_t clockid_t;
# 129 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/time_t.h" 1 3 4






typedef __time_t time_t;
# 130 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/timer_t.h" 1 3 4






typedef __timer_t timer_t;
# 131 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4
# 144 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
# 145 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



typedef unsigned long int ulong;
typedef unsigned short int ushort;
typedef unsigned int uint;




# 1 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 1 3 4
# 24 "/usr/include/x86_64-linux-gnu/bits/stdint-intn.h" 3 4
typedef __int8_t int8_t;
typedef __int16_t int16_t;
typedef __int32_t int32_t;
typedef __int64_t int64_t;
# 156 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


typedef __uint8_t u_int8_t;
typedef __uint16_t u_int16_t;
typedef __uint32_t u_int32_t;
typedef __uint64_t u_int64_t;


typedef int register_t __attribute__ ((__mode__ (__word__)));
# 176 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/endian.h" 1 3 4
# 24 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endian.h" 1 3 4
# 35 "/usr/include/x86_64-linux-gnu/bits/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/endianness.h" 1 3 4
# 36 "/usr/include/x86_64-linux-gnu/bits/endian.h" 2 3 4
# 25 "/usr/include/endian.h" 2 3 4
# 35 "/usr/include/endian.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 1 3 4
# 33 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
static __inline __uint16_t
__bswap_16 (__uint16_t __bsx)
{

  return __builtin_bswap16 (__bsx);



}






static __inline __uint32_t
__bswap_32 (__uint32_t __bsx)
{

  return __builtin_bswap32 (__bsx);



}
# 69 "/usr/include/x86_64-linux-gnu/bits/byteswap.h" 3 4
__extension__ static __inline __uint64_t
__bswap_64 (__uint64_t __bsx)
{

  return __builtin_bswap64 (__bsx);



}
# 36 "/usr/include/endian.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 1 3 4
# 32 "/usr/include/x86_64-linux-gnu/bits/uintn-identity.h" 3 4
static __inline __uint16_t
__uint16_identity (__uint16_t __x)
{
  return __x;
}

static __inline __uint32_t
__uint32_identity (__uint32_t __x)
{
  return __x;
}

static __inline __uint64_t
__uint64_identity (__uint64_t __x)
{
  return __x;
}
# 37 "/usr/include/endian.h" 2 3 4
# 177 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/sys/select.h" 1 3 4
# 30 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/select.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/select.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/select.h" 2 3 4
# 31 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4


# 1 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h" 1 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types/__sigset_t.h" 1 3 4




typedef struct
{
  unsigned long int __val[(1024 / (8 * sizeof (unsigned long int)))];
} __sigset_t;
# 5 "/usr/include/x86_64-linux-gnu/bits/types/sigset_t.h" 2 3 4


typedef __sigset_t sigset_t;
# 34 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timeval.h" 1 3 4







struct timeval
{
  __time_t tv_sec;
  __suseconds_t tv_usec;
};
# 38 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4

# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 3 4
struct timespec
{
  __time_t tv_sec;



  __syscall_slong_t tv_nsec;
# 26 "/usr/include/x86_64-linux-gnu/bits/types/struct_timespec.h" 3 4
};
# 40 "/usr/include/x86_64-linux-gnu/sys/select.h" 2 3 4



typedef __suseconds_t suseconds_t;





typedef long int __fd_mask;
# 59 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
typedef struct
  {






    __fd_mask __fds_bits[1024 / (8 * (int) sizeof (__fd_mask))];


  } fd_set;






typedef __fd_mask fd_mask;
# 91 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 101 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int select (int __nfds, fd_set *__restrict __readfds,
     fd_set *__restrict __writefds,
     fd_set *__restrict __exceptfds,
     struct timeval *__restrict __timeout);
# 113 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4
extern int pselect (int __nfds, fd_set *__restrict __readfds,
      fd_set *__restrict __writefds,
      fd_set *__restrict __exceptfds,
      const struct timespec *__restrict __timeout,
      const __sigset_t *__restrict __sigmask);
# 126 "/usr/include/x86_64-linux-gnu/sys/select.h" 3 4

# 180 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4





typedef __blksize_t blksize_t;






typedef __blkcnt_t blkcnt_t;



typedef __fsblkcnt_t fsblkcnt_t;



typedef __fsfilcnt_t fsfilcnt_t;
# 227 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 1 3 4
# 44 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 1 3 4
# 21 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/wordsize.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes-arch.h" 2 3 4
# 45 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4




typedef struct __pthread_internal_list
{
  struct __pthread_internal_list *__prev;
  struct __pthread_internal_list *__next;
} __pthread_list_t;

typedef struct __pthread_internal_slist
{
  struct __pthread_internal_slist *__next;
} __pthread_slist_t;
# 74 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 3 4
struct __pthread_mutex_s
{
  int __lock;
  unsigned int __count;
  int __owner;

  unsigned int __nusers;



  int __kind;

  short __spins;
  short __elision;
  __pthread_list_t __list;
# 53 "/usr/include/x86_64-linux-gnu/bits/struct_mutex.h" 3 4
};
# 75 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4
# 87 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 1 3 4
# 23 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 3 4
struct __pthread_rwlock_arch_t
{
  unsigned int __readers;
  unsigned int __writers;
  unsigned int __wrphase_futex;
  unsigned int __writers_futex;
  unsigned int __pad3;
  unsigned int __pad4;

  int __cur_writer;
  int __shared;
  signed char __rwelision;




  unsigned char __pad1[7];


  unsigned long int __pad2;


  unsigned int __flags;
# 55 "/usr/include/x86_64-linux-gnu/bits/struct_rwlock.h" 3 4
};
# 88 "/usr/include/x86_64-linux-gnu/bits/thread-shared-types.h" 2 3 4




struct __pthread_cond_s
{
  __extension__ union
  {
    __extension__ unsigned long long int __wseq;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __wseq32;
  };
  __extension__ union
  {
    __extension__ unsigned long long int __g1_start;
    struct
    {
      unsigned int __low;
      unsigned int __high;
    } __g1_start32;
  };
  unsigned int __g_refs[2] ;
  unsigned int __g_size[2];
  unsigned int __g1_orig_size;
  unsigned int __wrefs;
  unsigned int __g_signals[2];
};
# 24 "/usr/include/x86_64-linux-gnu/bits/pthreadtypes.h" 2 3 4



typedef unsigned long int pthread_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_mutexattr_t;




typedef union
{
  char __size[4];
  int __align;
} pthread_condattr_t;



typedef unsigned int pthread_key_t;



typedef int pthread_once_t;


union pthread_attr_t
{
  char __size[56];
  long int __align;
};

typedef union pthread_attr_t pthread_attr_t;




typedef union
{
  struct __pthread_mutex_s __data;
  char __size[40];
  long int __align;
} pthread_mutex_t;


typedef union
{
  struct __pthread_cond_s __data;
  char __size[48];
  __extension__ long long int __align;
} pthread_cond_t;





typedef union
{
  struct __pthread_rwlock_arch_t __data;
  char __size[56];
  long int __align;
} pthread_rwlock_t;

typedef union
{
  char __size[8];
  long int __align;
} pthread_rwlockattr_t;





typedef volatile int pthread_spinlock_t;




typedef union
{
  char __size[32];
  long int __align;
} pthread_barrier_t;

typedef union
{
  char __size[4];
  int __align;
} pthread_barrierattr_t;
# 228 "/usr/include/x86_64-linux-gnu/sys/types.h" 2 3 4



# 395 "/usr/include/stdlib.h" 2 3 4






extern long int random (void) __attribute__ ((__nothrow__ , __leaf__));


extern void srandom (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));





extern char *initstate (unsigned int __seed, char *__statebuf,
   size_t __statelen) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *setstate (char *__statebuf) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







struct random_data
  {
    int32_t *fptr;
    int32_t *rptr;
    int32_t *state;
    int rand_type;
    int rand_deg;
    int rand_sep;
    int32_t *end_ptr;
  };

extern int random_r (struct random_data *__restrict __buf,
       int32_t *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int srandom_r (unsigned int __seed, struct random_data *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int initstate_r (unsigned int __seed, char *__restrict __statebuf,
   size_t __statelen,
   struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));

extern int setstate_r (char *__restrict __statebuf,
         struct random_data *__restrict __buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern int rand (void) __attribute__ ((__nothrow__ , __leaf__));

extern void srand (unsigned int __seed) __attribute__ ((__nothrow__ , __leaf__));



extern int rand_r (unsigned int *__seed) __attribute__ ((__nothrow__ , __leaf__));







extern double drand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern double erand48 (unsigned short int __xsubi[3]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int lrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int nrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern long int mrand48 (void) __attribute__ ((__nothrow__ , __leaf__));
extern long int jrand48 (unsigned short int __xsubi[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern void srand48 (long int __seedval) __attribute__ ((__nothrow__ , __leaf__));
extern unsigned short int *seed48 (unsigned short int __seed16v[3])
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
extern void lcong48 (unsigned short int __param[7]) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





struct drand48_data
  {
    unsigned short int __x[3];
    unsigned short int __old_x[3];
    unsigned short int __c;
    unsigned short int __init;
    __extension__ unsigned long long int __a;

  };


extern int drand48_r (struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int erand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        double *__restrict __result) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int lrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int nrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int mrand48_r (struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern int jrand48_r (unsigned short int __xsubi[3],
        struct drand48_data *__restrict __buffer,
        long int *__restrict __result)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int srand48_r (long int __seedval, struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));

extern int seed48_r (unsigned short int __seed16v[3],
       struct drand48_data *__buffer) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern int lcong48_r (unsigned short int __param[7],
        struct drand48_data *__buffer)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern void *malloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) ;

extern void *calloc (size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (1, 2))) ;






extern void *realloc (void *__ptr, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__)) __attribute__ ((__alloc_size__ (2)));







extern void *reallocarray (void *__ptr, size_t __nmemb, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__warn_unused_result__))
     __attribute__ ((__alloc_size__ (2, 3)));



extern void free (void *__ptr) __attribute__ ((__nothrow__ , __leaf__));


# 1 "/usr/include/alloca.h" 1 3 4
# 24 "/usr/include/alloca.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
# 25 "/usr/include/alloca.h" 2 3 4







extern void *alloca (size_t __size) __attribute__ ((__nothrow__ , __leaf__));






# 569 "/usr/include/stdlib.h" 2 3 4





extern void *valloc (size_t __size) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__))
     __attribute__ ((__alloc_size__ (1))) ;




extern int posix_memalign (void **__memptr, size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;




extern void *aligned_alloc (size_t __alignment, size_t __size)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__alloc_size__ (2))) ;



extern void abort (void) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



extern int atexit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));







extern int at_quick_exit (void (*__func) (void)) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int on_exit (void (*__func) (int __status, void *__arg), void *__arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern void exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));





extern void quick_exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));





extern void _Exit (int __status) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern char *getenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 647 "/usr/include/stdlib.h" 3 4
extern int putenv (char *__string) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));





extern int setenv (const char *__name, const char *__value, int __replace)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));


extern int unsetenv (const char *__name) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));






extern int clearenv (void) __attribute__ ((__nothrow__ , __leaf__));
# 675 "/usr/include/stdlib.h" 3 4
extern char *mktemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 688 "/usr/include/stdlib.h" 3 4
extern int mkstemp (char *__template) __attribute__ ((__nonnull__ (1))) ;
# 710 "/usr/include/stdlib.h" 3 4
extern int mkstemps (char *__template, int __suffixlen) __attribute__ ((__nonnull__ (1))) ;
# 731 "/usr/include/stdlib.h" 3 4
extern char *mkdtemp (char *__template) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 784 "/usr/include/stdlib.h" 3 4
extern int system (const char *__command) ;
# 800 "/usr/include/stdlib.h" 3 4
extern char *realpath (const char *__restrict __name,
         char *__restrict __resolved) __attribute__ ((__nothrow__ , __leaf__)) ;






typedef int (*__compar_fn_t) (const void *, const void *);
# 820 "/usr/include/stdlib.h" 3 4
extern void *bsearch (const void *__key, const void *__base,
        size_t __nmemb, size_t __size, __compar_fn_t __compar)
     __attribute__ ((__nonnull__ (1, 2, 5))) ;







extern void qsort (void *__base, size_t __nmemb, size_t __size,
     __compar_fn_t __compar) __attribute__ ((__nonnull__ (1, 4)));
# 840 "/usr/include/stdlib.h" 3 4
extern int abs (int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern long int labs (long int __x) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;


__extension__ extern long long int llabs (long long int __x)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;






extern div_t div (int __numer, int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
extern ldiv_t ldiv (long int __numer, long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;


__extension__ extern lldiv_t lldiv (long long int __numer,
        long long int __denom)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__)) ;
# 872 "/usr/include/stdlib.h" 3 4
extern char *ecvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *fcvt (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;




extern char *gcvt (double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern char *qecvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qfcvt (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4))) ;
extern char *qgcvt (long double __value, int __ndigit, char *__buf)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3))) ;




extern int ecvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int fcvt_r (double __value, int __ndigit, int *__restrict __decpt,
     int *__restrict __sign, char *__restrict __buf,
     size_t __len) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));

extern int qecvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));
extern int qfcvt_r (long double __value, int __ndigit,
      int *__restrict __decpt, int *__restrict __sign,
      char *__restrict __buf, size_t __len)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (3, 4, 5)));





extern int mblen (const char *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int mbtowc (wchar_t *__restrict __pwc,
     const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));


extern int wctomb (char *__s, wchar_t __wchar) __attribute__ ((__nothrow__ , __leaf__));



extern size_t mbstowcs (wchar_t *__restrict __pwcs,
   const char *__restrict __s, size_t __n) __attribute__ ((__nothrow__ , __leaf__));

extern size_t wcstombs (char *__restrict __s,
   const wchar_t *__restrict __pwcs, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__));







extern int rpmatch (const char *__response) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1))) ;
# 957 "/usr/include/stdlib.h" 3 4
extern int getsubopt (char **__restrict __optionp,
        char *const *__restrict __tokens,
        char **__restrict __valuep)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2, 3))) ;
# 1003 "/usr/include/stdlib.h" 3 4
extern int getloadavg (double __loadavg[], int __nelem)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 1013 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdlib-float.h" 1 3 4
# 1014 "/usr/include/stdlib.h" 2 3 4
# 1023 "/usr/include/stdlib.h" 3 4

# 6 "/home/sd/ACC_v09/ACC/src/y.tab.c" 2
# 1 "/usr/include/string.h" 1 3 4
# 26 "/usr/include/string.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 27 "/usr/include/string.h" 2 3 4






# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
# 34 "/usr/include/string.h" 2 3 4
# 43 "/usr/include/string.h" 3 4
extern void *memcpy (void *__restrict __dest, const void *__restrict __src,
       size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void *memmove (void *__dest, const void *__src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));





extern void *memccpy (void *__restrict __dest, const void *__restrict __src,
        int __c, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern void *memset (void *__s, int __c, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));


extern int memcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 91 "/usr/include/string.h" 3 4
extern void *memchr (const void *__s, int __c, size_t __n)
      __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 122 "/usr/include/string.h" 3 4
extern char *strcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern char *strcat (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));

extern char *strncat (char *__restrict __dest, const char *__restrict __src,
        size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern int strncmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strcoll (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));

extern size_t strxfrm (char *__restrict __dest,
         const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



# 1 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 1 3 4
# 22 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 1 3 4
# 28 "/usr/include/x86_64-linux-gnu/bits/types/__locale_t.h" 3 4
struct __locale_struct
{

  struct __locale_data *__locales[13];


  const unsigned short int *__ctype_b;
  const int *__ctype_tolower;
  const int *__ctype_toupper;


  const char *__names[13];
};

typedef struct __locale_struct *__locale_t;
# 23 "/usr/include/x86_64-linux-gnu/bits/types/locale_t.h" 2 3 4

typedef __locale_t locale_t;
# 154 "/usr/include/string.h" 2 3 4


extern int strcoll_l (const char *__s1, const char *__s2, locale_t __l)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));


extern size_t strxfrm_l (char *__dest, const char *__src, size_t __n,
    locale_t __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 4)));





extern char *strdup (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));






extern char *strndup (const char *__string, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) __attribute__ ((__nonnull__ (1)));
# 226 "/usr/include/string.h" 3 4
extern char *strchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 253 "/usr/include/string.h" 3 4
extern char *strrchr (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 273 "/usr/include/string.h" 3 4
extern size_t strcspn (const char *__s, const char *__reject)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern size_t strspn (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 303 "/usr/include/string.h" 3 4
extern char *strpbrk (const char *__s, const char *__accept)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));
# 330 "/usr/include/string.h" 3 4
extern char *strstr (const char *__haystack, const char *__needle)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strtok (char *__restrict __s, const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2)));



extern char *__strtok_r (char *__restrict __s,
    const char *__restrict __delim,
    char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));

extern char *strtok_r (char *__restrict __s, const char *__restrict __delim,
         char **__restrict __save_ptr)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (2, 3)));
# 385 "/usr/include/string.h" 3 4
extern size_t strlen (const char *__s)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern size_t strnlen (const char *__string, size_t __maxlen)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));




extern char *strerror (int __errnum) __attribute__ ((__nothrow__ , __leaf__));
# 410 "/usr/include/string.h" 3 4
extern int strerror_r (int __errnum, char *__buf, size_t __buflen) __asm__ ("" "__xpg_strerror_r") __attribute__ ((__nothrow__ , __leaf__))

                        __attribute__ ((__nonnull__ (2)));
# 428 "/usr/include/string.h" 3 4
extern char *strerror_l (int __errnum, locale_t __l) __attribute__ ((__nothrow__ , __leaf__));



# 1 "/usr/include/strings.h" 1 3 4
# 23 "/usr/include/strings.h" 3 4
# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
# 24 "/usr/include/strings.h" 2 3 4










extern int bcmp (const void *__s1, const void *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bcopy (const void *__src, void *__dest, size_t __n)
  __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));


extern void bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));
# 68 "/usr/include/strings.h" 3 4
extern char *index (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));
# 96 "/usr/include/strings.h" 3 4
extern char *rindex (const char *__s, int __c)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1)));






extern int ffs (int __i) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));





extern int ffsl (long int __l) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));
__extension__ extern int ffsll (long long int __ll)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__const__));



extern int strcasecmp (const char *__s1, const char *__s2)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));


extern int strncasecmp (const char *__s1, const char *__s2, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2)));






extern int strcasecmp_l (const char *__s1, const char *__s2, locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 3)));



extern int strncasecmp_l (const char *__s1, const char *__s2,
     size_t __n, locale_t __loc)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__pure__)) __attribute__ ((__nonnull__ (1, 2, 4)));



# 433 "/usr/include/string.h" 2 3 4



extern void explicit_bzero (void *__s, size_t __n) __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1)));



extern char *strsep (char **__restrict __stringp,
       const char *__restrict __delim)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));




extern char *strsignal (int __sig) __attribute__ ((__nothrow__ , __leaf__));


extern char *__stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpcpy (char *__restrict __dest, const char *__restrict __src)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));



extern char *__stpncpy (char *__restrict __dest,
   const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
extern char *stpncpy (char *__restrict __dest,
        const char *__restrict __src, size_t __n)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__nonnull__ (1, 2)));
# 499 "/usr/include/string.h" 3 4

# 7 "/home/sd/ACC_v09/ACC/src/y.tab.c" 2
# 30 "/home/sd/ACC_v09/ACC/src/y.tab.c"

# 30 "/home/sd/ACC_v09/ACC/src/y.tab.c"
extern int yyparse(void);

static int yygrowstack(void);
# 2 "gen.y"
typedef long * yy;

static yy yynull;
extern yy yyh;
extern yy yyhx;
static yyErr(n,l)
{
yyAbort(n,"Parse", l);
}


extern yy yyglov_Var_Line;
typedef struct {long attr[2];} yyATTRIBUTES;

extern yyATTRIBUTES yylval;
# 51 "y.tab.c"
# 164 "y.tab.c"
static const short yylhs[] = { -1,
    0, 1, 1, 5, 5, 8, 8, 10, 10, 10,
   10, 10, 10, 14, 14, 14, 18, 18, 18, 18,
   18, 18, 18, 18, 18, 18, 18, 15, 15, 20,
   20, 20, 23, 23, 24, 24, 26, 26, 12, 12,
   12, 12, 12, 12, 28, 28, 28, 28, 28, 28,
   28, 28, 28, 28, 28, 33, 34, 34, 34, 40,
   40, 32, 9, 9, 44, 44, 44, 44, 45, 45,
   45, 45, 45, 47, 47, 21, 21, 50, 50, 51,
   51, 53, 53, 53, 53, 55, 56, 57, 57, 57,
   58, 58, 58, 58, 60, 60, 61, 61, 59, 62,
   62, 63, 63, 65, 65, 66, 66, 64, 64, 68,
   68, 69, 69, 67, 67, 7, 7, 7, 7, 71,
   71, 71, 71, 71, 74, 74, 35, 35, 76, 76,
   76, 76, 76, 79, 79, 79, 80, 72, 72, 72,
   72, 72, 81, 31, 31, 41, 41, 41, 82, 82,
   82, 82, 82, 82, 84, 84, 85, 85, 86, 86,
   89, 89, 48, 48, 29, 29, 29, 29, 29, 29,
   29, 29, 29, 29, 92, 30, 30, 30, 30, 30,
   30, 30, 19, 19, 94, 52, 52, 95, 95, 95,
   96, 96, 96, 96, 96, 96, 96, 96, 99, 99,
   99, 99, 99, 99, 100, 100, 101, 101, 102, 103,
  103, 103, 104, 104, 70, 70, 70, 70, 39, 39,
  106, 106, 107, 107, 108, 108, 108, 108, 108, 108,
  108, 112, 112, 109, 109, 110, 110, 111, 111, 113,
  113, 113, 113, 113, 16, 16, 16, 16, 16, 16,
   16, 116, 116, 22, 22, 22, 22, 77, 77, 77,
   77, 77, 120, 120, 75, 75, 121, 121, 121, 122,
   25, 25, 25, 25, 25, 25, 25, 88, 88, 126,
  126, 13, 13, 127, 127, 128, 128, 128, 128, 27,
  129, 129, 129, 129, 129, 129, 83, 83, 83, 83,
   87, 87, 43, 130, 130, 131, 131, 132, 132, 117,
  117, 114, 114, 114, 90, 90, 133, 133, 133, 134,
  134, 46, 46, 46, 115, 115, 115, 97, 97, 105,
  136, 136, 137, 137, 138, 138, 73, 124, 124, 135,
  135, 140, 140, 140, 140, 141, 141, 11, 11, 98,
   98, 98, 98, 98, 98, 98, 98, 98, 98, 98,
   98, 98, 98, 98, 98, 98, 98, 142, 142, 142,
   17, 17, 42, 42, 93, 93, 91, 91, 123, 123,
   78, 78, 119, 119, 36, 36, 118, 118, 38, 38,
   49, 49, 125, 125, 54, 54, 54, 37, 4, 6,
    3, 139, 2,
};
static const short yylen[] = { 2,
    1, 5, 0, 1, 2, 1, 3, 1, 2, 1,
    2, 1, 2, 5, 7, 9, 1, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 3, 1,
    2, 1, 1, 3, 2, 1, 2, 1, 1, 1,
    1, 1, 1, 1, 1, 2, 2, 2, 2, 3,
    4, 2, 4, 4, 6, 3, 4, 9, 1, 1,
    3, 2, 2, 2, 1, 3, 3, 3, 1, 3,
    3, 3, 3, 1, 3, 2, 3, 0, 1, 1,
    2, 3, 2, 2, 3, 2, 5, 1, 1, 1,
    0, 1, 1, 1, 1, 1, 1, 2, 2, 0,
    2, 3, 1, 3, 1, 0, 1, 1, 0, 1,
    3, 4, 7, 1, 3, 1, 1, 2, 1, 1,
    1, 1, 3, 3, 1, 5, 1, 2, 2, 2,
    2, 2, 2, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 4, 1, 3, 3, 1, 3,
    3, 5, 3, 5, 1, 2, 3, 2, 1, 4,
    1, 3, 1, 3, 1, 4, 3, 3, 3, 2,
    2, 6, 7, 5, 2, 1, 1, 1, 1, 1,
    1, 1, 1, 3, 2, 1, 2, 3, 2, 1,
    1, 1, 2, 2, 1, 2, 1, 2, 1, 2,
    1, 2, 1, 2, 1, 0, 1, 2, 4, 2,
    2, 2, 1, 0, 5, 4, 6, 5, 1, 3,
    1, 3, 1, 2, 4, 4, 5, 3, 4, 3,
    4, 1, 3, 5, 4, 1, 3, 1, 3, 2,
    1, 1, 2, 2, 1, 1, 1, 1, 1, 1,
    1, 1, 3, 3, 4, 4, 3, 1, 1, 1,
    1, 1, 1, 3, 1, 3, 5, 6, 2, 2,
    1, 3, 4, 4, 4, 5, 5, 0, 1, 1,
    2, 6, 6, 1, 3, 1, 1, 1, 4, 2,
    1, 3, 4, 4, 4, 4, 1, 3, 4, 2,
    1, 3, 2, 1, 0, 1, 2, 1, 1, 1,
    3, 4, 4, 3, 1, 3, 1, 3, 3, 1,
    3, 1, 3, 3, 5, 7, 5, 5, 2, 4,
    0, 1, 1, 3, 1, 1, 4, 1, 3, 2,
    2, 1, 1, 2, 2, 1, 3, 1, 1, 1,
    1, 1, 1, 1, 1, 1, 1, 1, 1, 1,
    1, 1, 1, 1, 4, 4, 1, 1, 1, 1,
    1, 0, 1, 0, 1, 0, 1, 0, 1, 0,
    1, 0, 1, 0, 1, 0, 1, 0, 1, 0,
    1, 0, 1, 0, 1, 1, 1, 0, 0, 0,
    0, 0, 0,
};
static const short yydefred[] = { 0,
    0, 1, 401, 399, 0, 258, 259, 260, 261, 262,
  350, 351, 352, 353, 354, 355, 356, 357, 358, 359,
  360, 362, 39, 42, 43, 44, 367, 0, 0, 0,
    0, 40, 0, 0, 361, 41, 135, 136, 134, 88,
   89, 90, 368, 369, 370, 0, 0, 119, 0, 349,
   59, 0, 4, 0, 0, 0, 0, 0, 0, 117,
    0, 0, 0, 116, 127, 0, 0, 363, 348, 364,
    0, 0, 0, 280, 340, 0, 341, 270, 128, 0,
    0, 271, 0, 0, 342, 343, 0, 0, 0, 2,
    5, 381, 130, 131, 132, 0, 0, 0, 0, 0,
  398, 0, 207, 0, 0, 0, 0, 398, 0, 0,
  159, 118, 92, 93, 94, 0, 129, 133, 395, 397,
  396, 0, 0, 0, 0, 0, 281, 0, 0, 0,
  272, 77, 344, 345, 0, 0, 0, 0, 0, 0,
  221, 223, 213, 211, 212, 210, 0, 208, 0, 398,
    0, 182, 0, 0, 0, 0, 0, 177, 176, 178,
  179, 0, 0, 180, 181, 120, 95, 96, 143, 139,
  140, 141, 142, 144, 0, 0, 65, 0, 0, 0,
    0, 0, 97, 0, 165, 121, 137, 0, 383, 138,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 308,
  309, 398, 303, 0, 306, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 28, 0, 0, 183,
  288, 287, 0, 0, 284, 0, 273, 0, 6, 0,
    0, 389, 0, 224, 0, 0, 0, 0, 0, 216,
    0, 0, 0, 0, 0, 275, 0, 0, 0, 0,
    0, 0, 0, 0, 46, 47, 175, 0, 170, 171,
    0, 0, 48, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 98, 0, 0, 33, 0,
    0, 0, 0, 274, 0, 0, 0, 0, 346, 0,
    0, 0, 0, 0, 307, 57, 0, 297, 302, 0,
    0, 0, 0, 0, 161, 0, 190, 0, 0, 0,
    0, 0, 80, 186, 0, 0, 0, 0, 373, 0,
    0, 62, 0, 9, 11, 13, 0, 365, 17, 18,
   19, 20, 21, 22, 23, 24, 25, 26, 27, 0,
  366, 0, 0, 0, 0, 0, 0, 0, 64, 63,
    0, 230, 228, 0, 242, 0, 0, 0, 0, 0,
    0, 0, 238, 0, 218, 222, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 249, 0, 336, 0, 335, 0, 250, 0, 251,
    0, 247, 246, 245, 248, 400, 0, 333, 209, 0,
   50, 0, 0, 0, 0, 0, 123, 0, 124, 0,
    0, 168, 169, 0, 0, 0, 66, 67, 68, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 167, 0,
    0, 0, 0, 0, 0, 276, 277, 0, 0, 215,
  300, 0, 0, 0, 0, 149, 0, 155, 160, 87,
    0, 99, 0, 267, 0, 187, 0, 0, 0, 194,
  196, 198, 328, 81, 0, 0, 0, 38, 0, 74,
  291, 0, 0, 189, 193, 0, 0, 0, 0, 0,
   29, 184, 0, 285, 282, 283, 339, 7, 0, 0,
  244, 243, 240, 231, 229, 225, 0, 226, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   83, 84, 0, 185, 0, 86, 0, 0, 0, 0,
    0, 0, 54, 0, 0, 145, 0, 166, 0, 34,
  347, 217, 0, 158, 0, 298, 0, 0, 156, 0,
    0, 101, 0, 0, 110, 316, 268, 162, 202, 204,
  200, 0, 0, 37, 0, 188, 0, 0, 0, 290,
  254, 257, 0, 0, 289, 0, 0, 0, 239, 0,
  227, 0, 0, 314, 0, 0, 0, 0, 0, 82,
   85, 0, 330, 334, 0, 0, 337, 174, 0, 126,
  157, 153, 299, 0, 150, 0, 151, 0, 0, 0,
    0, 0, 292, 75, 164, 0, 0, 0, 256, 255,
    0, 235, 0, 0, 233, 313, 0, 0, 0, 0,
    0, 312, 55, 172, 0, 0, 0, 0, 0, 0,
  102, 111, 293, 295, 296, 294, 58, 234, 0, 327,
   14, 0, 0, 173, 154, 152, 0, 112, 0, 0,
    0, 0, 0, 0, 104, 0, 326, 15, 0, 0,
    0, 0, 113, 0, 16,
};
static const short yydgoto[] = { 1,
    2, 3, 4, 250, 52, 90, 53, 228, 229, 212,
   54, 55, 56, 382, 383, 384, 385, 340, 217, 319,
   57, 321, 280, 149, 59, 467, 468, 218, 175, 176,
  177, 219, 405, 386, 230, 108, 147, 477, 139, 178,
  179, 322, 109, 180, 181, 182, 469, 470, 87, 311,
  312, 313, 388, 389, 390, 391, 63, 116, 301, 183,
  184, 452, 542, 543, 631, 655, 656, 544, 545, 64,
  185, 186, 392, 220, 188, 65, 66, 95, 67, 189,
  190, 445, 446, 447, 448, 110, 111, 75, 304, 305,
  472, 191, 281, 393, 314, 315, 68, 69, 460, 101,
  102, 103, 104, 144, 240, 140, 141, 142, 360, 361,
  362, 501, 363, 394, 395, 192, 193, 323, 194, 195,
   70, 71, 123, 232, 291, 76, 224, 225, 473, 203,
  204, 205, 196, 197, 72, 396, 397, 398, 518, 88,
  292, 73,
};
static const short yysindex[] = { 0,
    0, 0, 0, 0, 428, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 229, 229, 229,
 2090, 0, -275, -255, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, -145, 1007, 0, -225, 0,
    0, 428, 0, 2090, 2090, 2090, -181, 2211, -135, 0,
 -248, -246, 378, 0, 0, 2090, 2090, 0, 0, 0,
   47, 47, -172, 0, 0, 229, 0, 0, 0, -148,
  -68, 0, -248, -115, 0, 0, -23, 1007, -9, 0,
    0, 0, 0, 0, 0, -135, -108, 2273, 2273, 2273,
    0, 2273, 0, -248, 2959, 3, 1964, 0, 52, 68,
    0, 0, 0, 0, 0, 93, 0, 0, 0, 0,
    0, 0, 73, 0, 116, 1050, 0, -228, -228, 119,
    0, 0, 0, 0, 2030, -108, -169, 126, 121, 125,
    0, 0, 0, 0, 0, 0, 156, 0, 467, 0,
  419, 0, 173, 165, 535, 188, 1050, 0, 0, 0,
    0, 3127, 3127, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 290, 3147, 0, 179, -123, -280,
  762, 258, 0, 274, 0, 0, 0, 418, 0, 0,
 3147, 211, 216, 236, 224, 427, 275, 1831, -108, 0,
    0, 0, 0, 467, 0, 292, 3033, 229, 274, 271,
 2324, -150, 2454, 2454, 2454, -36, 0, 2312, 305, 0,
    0, 0, 328, 18, 0, 98, 0, 347, 0, -85,
  345, 0, -168, 0, 1161, -108, 156, -108, 792, 0,
  343, 1050, 3127, 290, 3147, 0, 1050, 290, 2454, 365,
  100, 361, 364, 1050, 0, 0, 0, 3147, 0, 0,
   47, 47, 0, 3147, 3147, 3147, 3147, 3147, 3147, 3147,
 3147, 3147, 3147, 3147, 3147, 0, 3147, 3147, 0, 404,
  403, 3147, 3147, 0, 3147, 3147, 3147, 3147, 0, 409,
  417, 433, 121, 156, 0, 0, 449, 0, 0, -248,
  423, -269, 445, 598, 0, 2389, 0, 3327, 2505, 2505,
  454, 2324, 0, 0, 33, 466, 3327, 1699, 0, 489,
  491, 0, 498, 0, 0, 0, 3147, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 3147,
    0, 3147, -228, 501, 564, 1897, 1566, -90, 0, 0,
  576, 0, 0, 526, 0, 159, -150, -120, -161, 584,
  239, -79, 0, 125, 0, 0, 3147, 578, 677, 679,
  687, 2708, 689, 47, 691, 694, 3147, 2090, -225, 0,
    0, 0, 707, 0, 753, 0, -248, 0, 794, 0,
  785, 0, 0, 0, 0, 0, 0, 0, 0, 797,
    0, 803, 802, 811, 871, 792, 0, 3053, 0, 873,
   14, 0, 0, -123, 762, 762, 0, 0, 0, 258,
  258, 258, 258, 275, 275, 877, 224, 3147, 0, 216,
  179, 211, -280, -280, 427, 0, 0, 845, 156, 0,
    0, 3147, 859, 882, 601, 0, 96, 0, 0, 0,
 -118, 0, 3147, 0, -265, 0, 3327, 3327, 3327, 0,
    0, 0, 0, 0, -33, 106, 0, 0, -177, 0,
    0, 903, 354, 0, 0, 906, 908, 491, 2030, 3147,
    0, 0, 913, 0, 0, 0, 0, 0, 1765, -108,
    0, 0, 0, 0, 0, 0, 1632, 0, 1632, 944,
 -278, 948, 2708, 3147, 3147, 3147, 0, 979, 3147, 943,
    0, 0, 945, 0, 229, 0, 954, 792, 957, 2454,
  957, 647, 0, 962, 2782, 0, 957, 0, 3147, 0,
    0, 0, 45, 0, 3033, 0, 2856, 3033, 0, 926,
 -259, 0, 973, 977, 0, 0, 0, 0, 0, 0,
    0, 33, 978, 0, 33, 0, 3147, 1831, 3147, 0,
    0, 0, 980, 981, 0, 121, 984, 950, 0, 1431,
    0, 942, 2708, 0, 288, 318, 350, 991, 986, 0,
    0, 2708, 0, 0, 992, 290, 0, 0, 605, 0,
    0, 0, 0, 1015, 0, 110, 0, 1013, 3147, -118,
 -118, 1018, 0, 0, 0, 1019, 1020, 1021, 0, 0,
 1017, 0, 432, 950, 0, 0, 2708, 2708, 2708, 3147,
 3147, 0, 0, 0, 2930, 3033, 3033, 274, 440, 1023,
    0, 0, 0, 0, 0, 0, 0, 0, 1067, 0,
    0, 441, 1029, 0, 0, 0, -174, 0, 274, 2708,
 1030, 3147, 3147, 274, 0, 1040, 0, 0, 1037, 451,
  274, 2708, 0, 274, 0,
};
static const short yyrindex[] = { 316,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, -152, -152, -152,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 28, 0, 2146, 0,
    0, 1357, 0, 185, 185, 185, 0, 1051, 1295, 0,
 1039, 0, 1047, 0, 0, 185, 185, 0, 0, 0,
 1053, 1053, 0, 0, 0, 2536, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 130, 103, 0, 0,
    0, 0, 0, 0, 0, 1363, 0, 307, 307, 307,
    0, 1054, 0, 1039, 1048, 0, 355, 0, 8, 1052,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 904, 0, 976, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 1055, 0, 0, 0, 1065, 17,
    0, 0, 0, 0, 0, 0, 0, 0, 48, 0,
    0, 0, 0, 0, 0, 0, 1066, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 3504, 0, 0, 874, 2179, 3738,
  798, 4024, 0, 3326, 0, 0, 0, 396, 0, 0,
 1062, 1669, 1401, 0, 590, 3849, 3919, 1063, 0, 0,
    0, 0, 0, 476, 0, 0, 0, 124, 0, 0,
 1069, 226, 569, 681, 805, 0, 0, 3699, 0, 0,
    0, 0, 460, 0, 0, 0, 0, 1068, 0, 226,
    0, 0, 0, 0, 0, 0, 0, 0, 25, 0,
    0, 1066, 0, 3543, 0, 0, 1066, 3582, 0, 0,
    0, 0, 0, 1066, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 1071, 0, 0, 1070,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 1082, 1065, 0, 0, 0, 0, 0, 0, 0,
    0, 1083, 710, 0, 0, 0, 0, -62, -45, 2,
    0, 1072, 0, 0, 1090, 1228, 80, 708, 0, -258,
 -136, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 1062, 0, 0, 0, 0, 708, 252, 0, 0,
    0, 0, 0, 0, 0, -66, -57, 0, 0, 0,
    0, 482, 0, 326, 0, 0, 0, 0, 0, 0,
    0, -67, 0, 0, 0, 0, 1060, 3221, 3415, 1498,
 3459, 0, 198, 0, 0, 0, 1039, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 568, 0, 0, 0,
    0, 0, 0, 0, 0, 25, 0, 0, 0, 0,
    0, 0, 0, 2241, 1056, 2542, 0, 0, 0, 4057,
 4090, 4123, 4156, 3954, 3989, 0, 702, 0, 0, 1468,
 1131, 1736, 3775, 3812, 3884, 0, 0, 0, 0, 0,
    0, 0, 0, 3371, 0, 0, 0, 0, 0, 0,
  161, 0, 0, 0, 0, 0, 203, 242, 282, 0,
    0, 0, 0, 0, 0, 0, -21, 0, 0, 0,
    0, 0, 397, 0, 0, 0, 0, 37, 1055, 1048,
    0, 0, 0, 0, 0, 0, 0, 0, 362, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, -198,
    0, 0, -67, 0, 0, 0, 3415, 0, 1060, 0,
    0, 0, 0, 0, 2622, 0, 0, -67, 3621, 0,
 3660, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 1089, 197, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 1090, 0, 0, 1063, 1048, 0,
    0, 0, 0, 0, 0, 1061, -66, 502, 0, 0,
    0, 0, -67, 0, 0, 0, 0, 0, 0, 0,
    0, -67, 0, 0, 0, 1124, 0, 0, 0, 0,
    0, 0, 0, 3371, 0, 0, 0, 0, 0, 161,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 482, 0, 0, -67, -67, -67, 0,
 1060, 0, 0, 0, 0, 0, 0, 0, 0, 1125,
    0, 0, 0, 0, 0, 0, 0, 0, 680, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 1128, -67,
    0, 1130, 0, 504, 0, 1132, 0, 0, 0, 0,
    0, -67, 0, 591, 0,
};
static const short yygindex[] = { 0,
    0, 0, 0, 32, 0, 1057, 1402, 0, 1115, 1016,
  -18, -2, -22, 0, -125, -242, -268, 0, 31, -153,
  -76, -281, 0, 12, -47, -412, 1008, 265, -132, 0,
 -126, -129, 0, 64, -5, 1371, -95, -114, -116, 1193,
 1213, -201, 1248, 745, 878, 858, 0, 927, 0, 0,
    0, 1169, 0, -56, 0, -1, 0, 0, 0, -179,
 -197, 0, 0, 885, 0, 0, 0, 0, 886, 0,
    0, 0, -97, -75, 0, 21, 168, 457, 0, -341,
    0, 961, -193, -510, -429, 0, 1188, -27, 0, 1034,
    0, 0, 1168, 0, 1205, 840, -180, -146, -283, 1405,
    0, 1411, 1160, 1087, -204, 1278, 1277, 1379, 0, 949,
 -460, 0, 1031, 0, 0, 1233, 1246, 0, -445, 1253,
    0, 0, 1460, -176, 975, 0, 1406, 1191, 0, 1064,
    0, 1332, 1254, 922, 0, 1135, 0, 1025, 0, 0,
    0, 0,
};

static const short yytable[] = { 61,
  216, 77, 78, 62, 276, 74, 74, 74, 426, 96,
  132, 302, 206, 299, 122, 124, 58, 539, 244, 233,
  231, 290, 248, 83, 86, 502, 596, 252, 349, 187,
  316, 251, 365, 475, 564, 5, 568, 359, 478, 98,
  571, 267, 80, 237, 85, 221, 61, 451, 547, 263,
   62, 79, 553, 127, 241, 99, 30, 84, 599, 253,
   30, 388, 81, 58, 317, 134, 478, 222, 60, 46,
  268, 269, 107, 47, 92, 92, 92, 112, 572, 98,
   98, 98, 293, 98, 200, 133, 92, 92, 98, 440,
  106, 167, 168, 303, 130, 99, 99, 99, 30, 99,
   30, 167, 168, 215, 99, 201, 294, 213, 513, 614,
   82, 546, 400, 608, 596, 60, 251, 403, 358, 404,
  232, 251, 276, 214, 410, 316, 200, 106, 251, 508,
  223, 316, 411, 89, 215, 320, 46, 555, 213, 602,
  417, 418, 419, 653, 253, 126, 556, 201, 136, 253,
  352, 33, 34, 348, 214, 493, 253, 495, 232, 317,
  278, 459, 317, 317, 476, 317, 539, 318, 236, 128,
  459, 47, 46, 549, 550, 551, 47, 82, 32, 276,
  300, 200, 32, 387, 105, 74, 167, 168, 310, 138,
  215, 215, 215, 476, 213, 213, 213, 439, 494, 167,
  168, 540, 201, 131, 412, 413, 278, 278, 309, 136,
  214, 214, 214, 82, 278, 605, 236, 265, 266, 215,
   32, 279, 32, 213, 215, 100, 215, 347, 213, 357,
  213, 215, 347, 387, 532, 213, 47, 298, 466, 214,
  579, 320, 167, 168, 214, 399, 214, 137, 241, 129,
  138, 214, 241, 541, 192, 192, 372, 374, 471, 192,
  574, 374, 388, 33, 34, 100, 100, 100, 82, 100,
  348, 195, 195, 82, 100, 402, 195, 499, 327, 500,
  320, 526, 328, 310, 465, 458, 310, 310, 47, 310,
  241, 187, 241, 163, 458, 377, 192, 192, 47, 374,
   96, 374, 163, 309, 192, 457, 309, 309, 135, 309,
  459, 459, 459, 195, 457, 3, 533, 510, 197, 197,
  198, 195, 301, 197, 489, 119, 120, 298, 327, 219,
  616, 301, 343, 121, 528, 219, 344, 399, 331, 622,
  219, 592, 392, 595, 597, 392, 392, 392, 372, 392,
  465, 31, 643, 219, 47, 31, 387, 481, 84, 327,
  197, 276, 305, 305, 563, 591, 305, 207, 197, 174,
  482, 305, 279, 566, 639, 640, 641, 187, 575, 576,
  577, 606, 208, 659, 392, 210, 392, 392, 466, 586,
  585, 119, 120, 31, 392, 31, 191, 191, 79, 121,
  387, 191, 541, 541, 187, 119, 120, 657, 471, 471,
  209, 538, 343, 121, 327, 442, 345, 391, 407, 665,
  391, 391, 391, 465, 391, 627, 255, 256, 211, 442,
  647, 595, 645, 646, 458, 458, 458, 227, 191, 191,
  174, 278, 552, 235, 76, 278, 191, 76, 76, 76,
  200, 654, 443, 590, 457, 457, 457, 236, 530, 391,
  238, 391, 391, 664, 119, 120, 443, 276, 239, 391,
  611, 201, 121, 629, 276, 466, 235, 109, 466, 109,
  492, 187, 278, 187, 276, 246, 76, 582, 76, 76,
  245, 357, 74, 357, 642, 471, 76, 215, 471, 382,
  130, 213, 382, 382, 382, 249, 382, 401, 382, 92,
   93, 94, 387, 108, 371, 108, 371, 214, 264, 201,
  201, 371, 117, 118, 201, 33, 34, 660, 174, 174,
  174, 174, 174, 174, 174, 174, 174, 174, 174, 174,
  374, 382, 174, 382, 374, 388, 174, 174, 282, 174,
  174, 174, 174, 497, 283, 298, 284, 498, 203, 203,
  285, 201, 201, 203, 357, 298, 30, 298, 298, 201,
   30, 388, 403, 403, 403, 403, 403, 403, 403, 403,
  403, 403, 403, 403, 403, 403, 403, 403, 403, 403,
  403, 403, 403, 403, 403, 403, 403, 288, 199, 199,
  203, 203, 327, 199, 274, 275, 617, 257, 203, 258,
  403, 403, 403, 403, 403, 296, 403, 403, 403, 403,
  403, 403, 403, 341, 214, 403, 403, 403, 214, 303,
  214, 174, 327, 403, 167, 168, 618, 403, 220, 403,
  199, 199, 259, 260, 220, 342, 261, 262, 199, 220,
   33, 34, 113, 114, 115, 298, 298, 298, 40, 41,
   42, 346, 220, 351, 327, 214, 399, 206, 619, 305,
  305, 558, 174, 559, 403, 403, 382, 406, 305, 408,
  382, 382, 409, 403, 6, 7, 8, 9, 10, 11,
   12, 13, 14, 15, 16, 17, 18, 19, 20, 21,
   22, 23, 24, 25, 26, 27, 28, 29, 30, 125,
  125, 305, 125, 305, 125, 305, 125, 174, 428, 125,
  305, 429, 31, 32, 33, 34, 35, 436, 36, 37,
   38, 39, 40, 41, 42, 437, 242, 43, 44, 45,
  243, 450, 151, 152, 174, 46, 497, 438, 153, 47,
  638, 48, 277, 278, 327, 327, 155, 156, 648, 651,
  453, 297, 441, 33, 34, 327, 157, 463, 442, 663,
  158, 40, 41, 42, 286, 286, 287, 166, 286, 167,
  168, 169, 170, 171, 172, 173, 49, 50, 159, 474,
  304, 304, 304, 174, 304, 51, 236, 160, 161, 304,
  236, 162, 163, 164, 165, 443, 318, 444, 479, 167,
  168, 169, 170, 171, 172, 173, 237, 480, 114, 485,
  237, 174, 114, 174, 402, 402, 402, 402, 402, 402,
  402, 402, 402, 402, 402, 402, 402, 402, 402, 402,
  402, 402, 402, 402, 402, 402, 402, 402, 402, 402,
  402, 402, 247, 402, 402, 402, 402, 402, 402, 402,
  402, 402, 402, 402, 402, 402, 402, 402, 402, 402,
  402, 402, 402, 402, 402, 402, 402, 402, 402, 402,
  402, 332, 486, 8, 491, 402, 8, 8, 8, 402,
    8, 402, 490, 166, 503, 167, 168, 169, 170, 171,
  172, 173, 496, 265, 265, 115, 265, 402, 265, 115,
  265, 454, 455, 265, 536, 537, 402, 402, 624, 625,
  402, 402, 402, 402, 265, 265, 402, 402, 402, 402,
  402, 402, 402, 402, 402, 402, 325, 325, 325, 325,
  325, 325, 325, 325, 325, 325, 325, 325, 325, 325,
  325, 325, 325, 325, 325, 325, 325, 325, 325, 325,
  325, 325, 325, 325, 254, 325, 325, 325, 325, 325,
  325, 325, 325, 325, 325, 325, 325, 325, 325, 325,
  325, 325, 325, 325, 325, 325, 325, 325, 325, 325,
  325, 325, 325, 325, 504, 10, 505, 325, 10, 10,
   10, 325, 10, 325, 506, 166, 509, 167, 168, 169,
  170, 171, 172, 173, 511, 266, 266, 512, 266, 325,
  266, 327, 266, 315, 315, 266, 390, 388, 325, 325,
  433, 434, 325, 325, 325, 325, 266, 266, 325, 325,
  325, 325, 325, 325, 325, 325, 325, 325, 6, 7,
    8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
   18, 19, 20, 21, 22, 23, 24, 25, 26, 27,
   28, 29, 30, 367, 368, 369, 514, 370, 371, 372,
  373, 374, 375, 376, 377, 151, 378, 32, 33, 34,
   35, 153, 36, 37, 38, 39, 40, 41, 42, 155,
  156, 43, 44, 45, 270, 271, 272, 273, 516, 157,
  515, 146, 146, 158, 146, 519, 146, 520, 146, 12,
  521, 146, 12, 12, 12, 522, 12, 420, 421, 422,
  423, 159, 146, 146, 146, 146, 146, 146, 146, 146,
  160, 161, 415, 416, 162, 163, 164, 165, 461, 462,
  379, 380, 167, 168, 169, 170, 171, 172, 381, 51,
  269, 269, 269, 269, 269, 269, 269, 269, 269, 269,
  269, 269, 269, 269, 269, 269, 269, 269, 269, 269,
  269, 269, 269, 269, 269, 145, 146, 310, 310, 523,
  310, 527, 310, 529, 310, 424, 425, 310, 535, 269,
  269, 269, 269, 531, 269, 269, 269, 269, 310, 310,
  310, 310, 310, 269, 269, 269, 379, 534, 269, 557,
  269, 269, 269, 269, 561, 269, 562, 269, 324, 325,
  326, 565, 329, 329, 329, 329, 329, 329, 329, 329,
  329, 329, 329, 329, 329, 329, 329, 329, 329, 329,
  329, 329, 329, 329, 329, 329, 329, 143, 143, 143,
  269, 570, 269, 269, 573, 578, 580, 583, 581, 525,
  269, 329, 329, 329, 329, 587, 329, 329, 329, 329,
   23, 24, 25, 26, 598, 329, 329, 329, 379, 600,
  329, 601, 329, 329, 329, 329, 603, 329, 609, 329,
  615, 610, 32, 33, 34, 492, 499, 36, 620, 621,
  623, 11, 12, 13, 14, 15, 16, 17, 18, 19,
   20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
   30, 626, 329, 628, 329, 329, 633, 634, 635, 649,
  637, 636, 329, 151, 152, 32, 33, 34, 35, 153,
   36, 650, 652, 658, 661, 662, 400, 155, 156, 43,
   44, 45, 386, 206, 91, 380, 205, 157, 384, 147,
  147, 158, 147, 390, 147, 385, 147, 398, 399, 147,
  376, 394, 78, 372, 398, 79, 338, 372, 375, 159,
  147, 147, 147, 147, 147, 147, 147, 147, 160, 161,
  393, 100, 162, 163, 164, 165, 378, 103, 166, 50,
  167, 168, 169, 170, 171, 172, 173, 6, 7, 8,
    9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
   19, 20, 21, 22, 23, 24, 25, 26, 27, 28,
   29, 30, 56, 105, 311, 311, 106, 311, 372, 311,
  107, 311, 517, 91, 311, 31, 32, 33, 34, 35,
  488, 36, 37, 38, 39, 311, 311, 311, 311, 311,
   43, 44, 45, 554, 150, 431, 414, 350, 136, 353,
  464, 604, 354, 355, 630, 589, 632, 449, 548, 363,
  363, 363, 363, 363, 363, 363, 363, 363, 363, 363,
  363, 363, 363, 363, 363, 363, 363, 363, 363, 483,
  456, 202, 148, 364, 366, 234, 137, 432, 613, 356,
   50, 167, 168, 363, 363, 363, 363, 430, 363, 569,
  427, 125, 607, 484, 226, 295, 560, 363, 363, 363,
  524, 435, 584, 0, 363, 363, 0, 0, 0, 363,
    0, 36, 36, 36, 36, 36, 36, 36, 36, 36,
   36, 36, 36, 36, 36, 36, 36, 36, 36, 36,
   36, 36, 36, 36, 36, 36, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 363, 363, 0, 0,
   36, 36, 36, 36, 363, 36, 0, 0, 0, 36,
   36, 36, 0, 0, 36, 36, 36, 36, 0, 36,
   36, 36, 399, 36, 0, 0, 0, 0, 36, 35,
   35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
   35, 35, 35, 35, 35, 35, 35, 35, 35, 35,
   35, 35, 35, 35, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 36, 0, 0, 0, 35, 35,
   35, 35, 0, 35, 0, 0, 0, 35, 35, 35,
    0, 0, 35, 35, 35, 35, 0, 35, 35, 35,
  399, 35, 0, 0, 0, 0, 35, 6, 7, 8,
    9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
   19, 20, 21, 22, 23, 24, 25, 26, 27, 28,
   29, 30, 0, 0, 252, 252, 0, 252, 0, 252,
    0, 252, 35, 0, 252, 31, 32, 33, 34, 35,
    0, 36, 37, 38, 39, 252, 252, 252, 252, 0,
   43, 44, 45, 0, 0, 0, 0, 0, 0, 612,
    0, 0, 354, 355, 349, 349, 349, 349, 349, 349,
  349, 349, 349, 349, 349, 349, 349, 349, 349, 349,
  349, 349, 349, 349, 349, 349, 349, 349, 349, 0,
    0, 253, 253, 0, 253, 0, 253, 0, 253, 567,
   50, 253, 0, 349, 349, 349, 349, 0, 349, 349,
  349, 349, 253, 253, 253, 253, 0, 349, 349, 349,
    0, 0, 0, 0, 397, 349, 0, 0, 0, 349,
    0, 349, 6, 7, 8, 9, 10, 11, 12, 13,
   14, 15, 16, 17, 18, 19, 20, 21, 22, 23,
   24, 25, 26, 27, 28, 29, 30, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 349, 349, 0, 0,
   31, 32, 33, 34, 35, 0, 36, 37, 38, 39,
    0, 0, 0, 0, 0, 43, 44, 45, 0, 0,
    0, 0, 0, 347, 0, 0, 0, 47, 6, 7,
    8, 9, 10, 11, 12, 13, 14, 15, 16, 17,
   18, 19, 20, 21, 22, 23, 24, 25, 26, 27,
   28, 29, 30, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 82, 50, 31, 32, 33, 34,
   35, 0, 36, 37, 38, 39, 0, 0, 0, 0,
    0, 43, 44, 45, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 354, 355, 6, 7, 8, 9, 10,
   11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
   21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    0, 0, 263, 263, 0, 263, 0, 263, 0, 263,
  567, 50, 263, 31, 32, 33, 34, 35, 0, 36,
   37, 38, 39, 263, 263, 263, 0, 0, 43, 44,
   45, 0, 0, 0, 0, 0, 318, 0, 0, 0,
   47, 6, 7, 8, 9, 10, 11, 12, 13, 14,
   15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
   25, 26, 27, 28, 29, 30, 0, 0, 0, 264,
  264, 0, 264, 0, 264, 0, 264, 0, 50, 264,
   32, 33, 34, 35, 0, 36, 37, 38, 39, 0,
  264, 264, 264, 0, 43, 44, 45, 0, 0, 0,
    0, 0, 46, 0, 0, 0, 47, 6, 7, 8,
    9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
   19, 20, 21, 22, 23, 24, 25, 26, 27, 28,
   29, 30, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 82, 50, 31, 32, 33, 34, 35,
    0, 36, 37, 38, 39, 0, 0, 0, 0, 0,
   43, 44, 45, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 6, 7, 8, 9, 10, 11, 12,
   13, 14, 15, 16, 17, 18, 19, 20, 21, 22,
   23, 24, 25, 26, 27, 28, 29, 30, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 289,
   50, 31, 32, 33, 34, 35, 0, 36, 37, 38,
   39, 0, 0, 0, 0, 0, 43, 44, 45, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 487,
    6, 7, 8, 9, 10, 11, 12, 13, 14, 15,
   16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
   26, 27, 28, 29, 30, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 50, 0, 0, 32,
   33, 34, 35, 0, 36, 0, 0, 0, 40, 41,
   42, 0, 0, 43, 44, 45, 0, 0, 0, 0,
  199, 0, 0, 0, 0, 0, 6, 7, 8, 9,
   10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
   20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
   30, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 50, 31, 32, 33, 34, 35, 0,
   36, 37, 38, 39, 0, 0, 0, 0, 0, 43,
   44, 45, 0, 0, 0, 0, 6, 7, 8, 9,
   10, 11, 12, 13, 14, 15, 16, 17, 18, 19,
   20, 21, 22, 23, 24, 25, 26, 27, 28, 29,
   30, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 32, 33, 34, 35, 50,
   36, 37, 38, 39, 0, 0, 0, 0, 0, 43,
   44, 45, 271, 271, 271, 271, 271, 271, 271, 271,
  271, 271, 271, 271, 271, 271, 271, 271, 271, 271,
  271, 271, 271, 271, 271, 271, 271, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 271, 0, 0, 271, 0, 271, 0, 0, 50,
    0, 0, 0, 0, 0, 271, 271, 271, 271, 0,
    0, 0, 271, 271, 0, 271, 0, 6, 7, 8,
    9, 10, 11, 12, 13, 14, 15, 16, 17, 18,
   19, 20, 21, 22, 23, 24, 25, 26, 27, 28,
   29, 30, 60, 60, 0, 60, 0, 60, 0, 60,
    0, 0, 60, 0, 0, 271, 32, 0, 0, 35,
    0, 36, 0, 60, 60, 60, 60, 60, 60, 0,
   43, 44, 45, 0, 0, 0, 0, 97, 0, 6,
    7, 8, 9, 10, 11, 12, 13, 14, 15, 16,
   17, 18, 19, 20, 21, 22, 23, 24, 25, 26,
   27, 28, 29, 30, 61, 61, 0, 61, 0, 61,
    0, 61, 0, 0, 61, 0, 0, 0, 32, 0,
   50, 35, 0, 36, 0, 61, 61, 61, 61, 61,
   61, 0, 43, 44, 45, 11, 12, 13, 14, 15,
   16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
   26, 27, 28, 29, 30, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 306, 32,
   33, 34, 35, 0, 36, 0, 0, 329, 0, 0,
    0, 0, 50, 43, 44, 45, 330, 331, 332, 333,
  334, 335, 336, 337, 338, 339, 0, 307, 0, 0,
   11, 12, 13, 14, 15, 16, 17, 18, 19, 20,
   21, 22, 23, 24, 25, 26, 27, 28, 29, 30,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 308, 32, 33, 34, 35, 0, 36,
    0, 0, 0, 0, 0, 0, 0, 0, 43, 44,
   45, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 307, 0, 0, 11, 12, 13, 14, 15,
   16, 17, 18, 19, 20, 21, 22, 23, 24, 25,
   26, 27, 28, 29, 30, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 308, 32,
   33, 34, 35, 0, 36, 0, 0, 0, 0, 0,
    0, 0, 0, 43, 44, 45, 11, 12, 13, 14,
   15, 16, 17, 18, 19, 20, 21, 22, 23, 24,
   25, 26, 27, 28, 29, 30, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   32, 33, 34, 35, 0, 36, 0, 0, 0, 0,
    0, 0, 0, 50, 43, 44, 45, 279, 279, 279,
    0, 279, 279, 279, 279, 279, 279, 279, 279, 279,
  279, 0, 0, 0, 0, 279, 0, 0, 0, 0,
  279, 279, 279, 279, 279, 0, 0, 0, 279, 0,
    0, 0, 0, 279, 0, 148, 148, 279, 148, 279,
  148, 0, 148, 0, 308, 148, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 279, 148, 148, 148, 148,
  148, 148, 148, 148, 279, 279, 0, 0, 279, 279,
  279, 279, 0, 0, 279, 279, 279, 279, 279, 279,
  279, 279, 279, 278, 278, 278, 0, 278, 278, 278,
  278, 278, 278, 278, 278, 278, 278, 0, 0, 0,
    0, 278, 0, 0, 0, 0, 278, 278, 278, 278,
  278, 0, 0, 0, 278, 0, 0, 0, 0, 278,
    0, 0, 0, 278, 0, 278, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 278, 0, 0, 0, 0, 0, 0, 0, 0,
  278, 278, 0, 0, 278, 278, 278, 278, 0, 0,
  278, 278, 278, 278, 278, 278, 278, 278, 278, 367,
  368, 369, 0, 370, 371, 372, 373, 374, 375, 376,
  377, 151, 152, 0, 0, 0, 0, 153, 0, 0,
    0, 0, 40, 41, 42, 155, 156, 0, 0, 0,
    0, 0, 0, 0, 0, 157, 0, 0, 0, 158,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 159, 0, 0,
    0, 0, 0, 0, 0, 0, 160, 161, 0, 0,
  162, 163, 164, 165, 0, 0, 507, 120, 167, 168,
  169, 170, 171, 172, 381, 151, 152, 0, 0, 0,
    0, 153, 0, 0, 0, 0, 0, 0, 0, 155,
  156, 0, 0, 0, 297, 588, 0, 0, 0, 157,
    0, 442, 0, 158, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 159, 0, 0, 0, 0, 0, 0, 0, 0,
  160, 161, 0, 0, 162, 163, 164, 165, 443, 0,
  444, 0, 167, 168, 169, 170, 171, 172, 173, 151,
  152, 0, 0, 0, 0, 153, 0, 0, 0, 0,
    0, 0, 0, 155, 156, 0, 0, 0, 297, 593,
    0, 0, 0, 157, 0, 442, 0, 158, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 159, 0, 0, 0, 0,
    0, 0, 0, 0, 160, 161, 0, 0, 162, 163,
  164, 165, 443, 0, 594, 0, 167, 168, 169, 170,
  171, 172, 173, 151, 152, 0, 0, 0, 0, 153,
    0, 0, 0, 0, 0, 0, 0, 155, 156, 0,
    0, 0, 297, 644, 0, 0, 0, 157, 0, 442,
    0, 158, 151, 152, 0, 0, 0, 0, 153, 154,
    0, 0, 0, 0, 0, 0, 155, 156, 0, 159,
    0, 0, 0, 0, 0, 0, 157, 0, 160, 161,
  158, 0, 162, 163, 164, 165, 443, 0, 594, 0,
  167, 168, 169, 170, 171, 172, 173, 0, 159, 0,
    0, 0, 0, 0, 0, 0, 0, 160, 161, 0,
    0, 162, 163, 164, 165, 0, 0, 166, 0, 167,
  168, 169, 170, 171, 172, 173, 151, 152, 0, 0,
    0, 0, 153, 0, 0, 0, 0, 0, 0, 0,
  155, 156, 0, 0, 0, 297, 151, 152, 0, 0,
  157, 0, 153, 0, 158, 0, 0, 0, 0, 0,
  155, 156, 0, 0, 0, 525, 0, 0, 0, 0,
  157, 0, 159, 0, 158, 0, 0, 0, 0, 0,
    0, 160, 161, 0, 0, 162, 163, 164, 165, 0,
    0, 166, 159, 167, 168, 169, 170, 171, 172, 173,
    0, 160, 161, 0, 0, 162, 163, 164, 165, 0,
    0, 166, 0, 167, 168, 169, 170, 171, 172, 173,
  151, 152, 0, 0, 0, 0, 153, 0, 0, 0,
    0, 0, 0, 0, 155, 156, 0, 0, 0, 0,
  151, 152, 0, 0, 254, 0, 153, 0, 158, 0,
    0, 0, 0, 0, 155, 156, 0, 0, 0, 0,
    0, 0, 0, 0, 157, 0, 159, 0, 158, 0,
    0, 0, 0, 0, 0, 160, 161, 0, 0, 162,
  163, 164, 165, 0, 0, 166, 159, 167, 168, 169,
  170, 171, 172, 173, 0, 160, 161, 0, 0, 162,
  163, 164, 165, 0, 0, 166, 0, 167, 168, 169,
  170, 171, 172, 173, 182, 182, 0, 0, 0, 0,
  182, 0, 0, 0, 0, 0, 0, 0, 182, 182,
    0, 0, 0, 0, 0, 0, 0, 0, 182, 0,
    0, 0, 182, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
  182, 0, 0, 0, 0, 0, 0, 0, 0, 182,
  182, 0, 0, 182, 182, 182, 182, 0, 0, 182,
    0, 182, 182, 182, 182, 182, 182, 182, 11, 12,
   13, 14, 15, 16, 17, 18, 19, 20, 21, 22,
   23, 24, 25, 26, 27, 28, 29, 30, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 32, 33, 34, 35, 0, 36, 0, 0,
    0, 0, 0, 0, 0, 0, 43, 44, 45, 122,
  122, 122, 122, 122, 122, 122, 122, 122, 122, 122,
  122, 122, 122, 122, 122, 122, 122, 122, 122, 122,
  122, 122, 122, 122, 122, 122, 122, 122, 122, 122,
  122, 122, 122, 122, 122, 122, 122, 122, 122, 122,
    0, 0, 122, 122, 120, 120, 120, 0, 120, 0,
  120, 0, 120, 120, 0, 120, 120, 120, 120, 120,
  120, 120, 120, 120, 120, 120, 120, 120, 120, 120,
  120, 120, 120, 120, 120, 120, 120, 120, 120, 120,
  120, 120, 120, 120, 120, 0, 0, 120, 120, 120,
  120, 395, 120, 0, 120, 0, 120, 120, 120, 120,
  120, 120, 120, 120, 120, 120, 120, 120, 120, 120,
  120, 120, 120, 120, 120, 120, 120, 120, 120, 120,
  120, 120, 120, 120, 120, 120, 120, 120, 120, 0,
    0, 120, 120, 142, 142, 396, 142, 0, 142, 0,
  142, 142, 142, 142, 142, 142, 142, 142, 142, 142,
  142, 142, 142, 142, 142, 142, 142, 142, 142, 142,
  142, 142, 142, 142, 142, 142, 142, 142, 142, 142,
  142, 142, 142, 0, 0, 142, 142, 45, 45, 45,
   45, 0, 45, 0, 45, 45, 45, 45, 45, 45,
   45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
   45, 45, 45, 45, 45, 45, 45, 45, 45, 45,
   45, 45, 45, 45, 45, 45, 49, 49, 49, 49,
    0, 49, 0, 49, 49, 49, 49, 49, 49, 49,
   49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
   49, 49, 49, 49, 49, 49, 49, 49, 49, 49,
   49, 49, 49, 49, 49, 52, 52, 52, 52, 0,
   52, 0, 52, 52, 52, 52, 52, 52, 52, 52,
   52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
   52, 52, 52, 52, 52, 52, 52, 52, 52, 52,
   52, 52, 52, 52, 51, 51, 51, 51, 0, 51,
    0, 51, 51, 51, 51, 51, 51, 51, 51, 51,
   51, 51, 51, 51, 51, 51, 51, 51, 51, 51,
   51, 51, 51, 51, 51, 51, 51, 51, 51, 51,
   51, 51, 51, 53, 53, 53, 53, 0, 53, 0,
   53, 53, 53, 53, 53, 53, 53, 53, 53, 53,
   53, 53, 53, 53, 53, 53, 53, 53, 53, 53,
   53, 53, 53, 53, 53, 53, 53, 53, 53, 53,
   53, 53, 144, 144, 0, 144, 0, 144, 0, 144,
  144, 144, 144, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 144, 144, 144, 144, 144, 144, 144,
  144, 144, 144, 144, 144, 144, 144, 144, 144, 144,
  144, 317, 317, 0, 317, 0, 317, 0, 317, 0,
  317, 317, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 317, 317, 317, 317, 317, 317, 317, 317,
  317, 317, 317, 317, 317, 317, 317, 317, 318, 318,
    0, 318, 0, 318, 0, 318, 0, 318, 318, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 318,
  318, 318, 318, 318, 318, 318, 318, 318, 318, 318,
  318, 318, 318, 318, 318, 319, 319, 0, 319, 0,
  319, 0, 319, 0, 319, 319, 0, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 319, 319, 319, 319,
  319, 319, 319, 319, 319, 319, 319, 319, 319, 319,
  319, 319, 320, 320, 0, 320, 0, 320, 0, 320,
    0, 320, 320, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 320, 320, 320, 320, 320, 320, 320,
  320, 320, 320, 320, 320, 320, 320, 321, 321, 0,
  321, 0, 321, 0, 321, 0, 321, 321, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 321, 321,
  321, 321, 321, 321, 321, 321, 321, 321, 321, 321,
  321, 321, 322, 322, 0, 322, 0, 322, 0, 322,
    0, 0, 322, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 322, 322, 322, 322, 322, 322, 322,
  322, 322, 322, 322, 322, 322, 322, 323, 323, 0,
  323, 0, 323, 0, 323, 0, 0, 323, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 323, 323,
  323, 323, 323, 323, 323, 323, 323, 323, 323, 323,
  323, 323, 324, 324, 0, 324, 0, 324, 0, 324,
    0, 0, 324, 0, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 324, 324, 324, 324, 324, 324, 324,
  324, 324, 324, 324, 324, 324, 324, 69, 69, 0,
   69, 0, 69, 0, 69, 0, 0, 69, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 0, 69, 69,
   69, 69, 69, 69, 69, 69, 69, 69, 69, 69,
   70, 70, 0, 70, 0, 70, 0, 70, 0, 0,
   70, 0, 0, 0, 0, 0, 0, 0, 0, 0,
    0, 70, 70, 70, 70, 70, 70, 70, 70, 70,
   70, 70, 70, 71, 71, 0, 71, 0, 71, 0,
   71, 0, 0, 71, 0, 0, 0, 0, 0, 0,
    0, 0, 0, 0, 71, 71, 71, 71, 71, 71,
   71, 71, 71, 71, 71, 71, 72, 72, 0, 72,
    0, 72, 0, 72, 0, 0, 72, 0, 0, 0,
    0, 0, 0, 0, 0, 0, 0, 72, 72, 72,
   72, 72, 72, 72, 72, 72, 72, 72, 72, 73,
   73, 0, 73, 0, 73, 0, 73, 0, 0, 73,
    0, 0, 0, 0, 0, 0, 0, 0, 0, 0,
   73, 73, 73, 73, 73, 73, 73, 73, 73, 73,
   73, 73,
};
static const short yycheck[] = { 5,
  126, 29, 30, 5, 184, 28, 29, 30, 277, 57,
   87, 209, 108, 207, 71, 72, 5, 447, 151, 136,
  135, 198, 155, 46, 47, 367, 537, 157, 230, 105,
  211, 157, 237, 317, 480, 4, 497, 235, 320, 58,
  319, 322, 318, 139, 47, 274, 52, 317, 314, 176,
   52, 31, 465, 76, 150, 58, 315, 46, 318, 157,
  319, 320, 318, 52, 211, 88, 348, 296, 5, 318,
  351, 352, 61, 322, 54, 55, 56, 324, 357, 98,
   99, 100, 199, 102, 107, 88, 66, 67, 107, 294,
   59, 361, 362, 359, 83, 98, 99, 100, 357, 102,
  359, 361, 362, 126, 107, 107, 202, 126, 377, 570,
  359, 453, 242, 559, 625, 52, 242, 247, 235, 249,
  319, 247, 302, 126, 254, 306, 149, 96, 254, 372,
  359, 312, 258, 359, 157, 212, 318, 315, 157, 552,
  267, 268, 269, 318, 242, 318, 324, 149, 318, 247,
  319, 297, 298, 230, 157, 357, 254, 319, 357, 306,
  313, 308, 309, 310, 318, 312, 596, 318, 337, 318,
  317, 322, 318, 457, 458, 459, 322, 359, 315, 359,
  208, 204, 319, 320, 320, 208, 361, 362, 211, 359,
  213, 214, 215, 347, 213, 214, 215, 293, 319, 361,
  362, 320, 204, 319, 261, 262, 359, 360, 211, 318,
  213, 214, 215, 359, 367, 557, 337, 341, 342, 242,
  357, 191, 359, 242, 247, 58, 249, 318, 247, 235,
  249, 254, 318, 239, 439, 254, 322, 207, 315, 242,
  509, 318, 361, 362, 247, 313, 249, 356, 315, 318,
  359, 254, 319, 451, 317, 318, 324, 315, 315, 322,
  503, 319, 320, 297, 298, 98, 99, 100, 359, 102,
  347, 317, 318, 359, 107, 245, 322, 357, 315, 359,
  357, 408, 319, 306, 318, 308, 309, 310, 322, 312,
  357, 367, 359, 315, 317, 317, 359, 360, 322, 357,
  348, 359, 324, 306, 367, 308, 309, 310, 318, 312,
  457, 458, 459, 359, 317, 0, 442, 374, 317, 318,
  318, 367, 315, 322, 347, 359, 360, 297, 315, 313,
  573, 324, 315, 367, 321, 319, 319, 313, 314, 582,
  324, 535, 315, 537, 538, 318, 319, 320, 324, 322,
  318, 315, 621, 337, 322, 319, 320, 327, 347, 315,
  359, 541, 315, 316, 479, 321, 319, 316, 367, 105,
  340, 324, 342, 490, 617, 618, 619, 453, 504, 505,
  506, 558, 315, 652, 357, 313, 359, 360, 465, 522,
  520, 359, 360, 357, 367, 359, 317, 318, 378, 367,
  406, 322, 600, 601, 480, 359, 360, 650, 465, 466,
  318, 316, 315, 367, 315, 320, 319, 315, 319, 662,
  318, 319, 320, 318, 322, 316, 162, 163, 313, 320,
  628, 625, 626, 627, 457, 458, 459, 319, 359, 360,
  176, 318, 465, 318, 315, 322, 367, 318, 319, 320,
  473, 649, 357, 529, 457, 458, 459, 337, 428, 357,
  336, 359, 360, 661, 359, 360, 357, 647, 313, 367,
  566, 473, 367, 599, 654, 552, 318, 317, 555, 319,
  322, 557, 359, 559, 664, 321, 357, 515, 359, 360,
  318, 497, 515, 499, 620, 552, 367, 520, 555, 315,
  489, 520, 318, 319, 320, 318, 322, 243, 324, 489,
   54, 55, 518, 317, 317, 319, 319, 520, 340, 317,
  318, 324, 66, 67, 322, 297, 298, 653, 264, 265,
  266, 267, 268, 269, 270, 271, 272, 273, 274, 275,
  315, 357, 278, 359, 319, 320, 282, 283, 338, 285,
  286, 287, 288, 315, 339, 525, 321, 319, 317, 318,
  337, 359, 360, 322, 570, 535, 315, 537, 538, 367,
  319, 320, 257, 258, 259, 260, 261, 262, 263, 264,
  265, 266, 267, 268, 269, 270, 271, 272, 273, 274,
  275, 276, 277, 278, 279, 280, 281, 323, 317, 318,
  359, 360, 315, 322, 347, 348, 319, 318, 367, 320,
  295, 296, 297, 298, 299, 324, 301, 302, 303, 304,
  305, 306, 307, 319, 318, 310, 311, 312, 322, 359,
  324, 367, 315, 318, 361, 362, 319, 322, 313, 324,
  359, 360, 353, 354, 319, 318, 357, 358, 367, 324,
  297, 298, 275, 276, 277, 625, 626, 627, 305, 306,
  307, 315, 337, 319, 315, 359, 324, 313, 319, 315,
  316, 318, 408, 320, 359, 360, 315, 313, 324, 319,
  319, 320, 319, 368, 257, 258, 259, 260, 261, 262,
  263, 264, 265, 266, 267, 268, 269, 270, 271, 272,
  273, 274, 275, 276, 277, 278, 279, 280, 281, 314,
  315, 315, 317, 317, 319, 319, 321, 453, 315, 324,
  324, 319, 295, 296, 297, 298, 299, 319, 301, 302,
  303, 304, 305, 306, 307, 319, 318, 310, 311, 312,
  322, 319, 294, 295, 480, 318, 315, 315, 300, 322,
  319, 324, 335, 336, 315, 315, 308, 309, 319, 319,
  316, 313, 314, 297, 298, 315, 318, 314, 320, 319,
  322, 305, 306, 307, 315, 349, 350, 359, 319, 361,
  362, 363, 364, 365, 366, 367, 359, 360, 340, 324,
  315, 316, 317, 529, 319, 368, 315, 349, 350, 324,
  319, 353, 354, 355, 356, 357, 318, 359, 318, 361,
  362, 363, 364, 365, 366, 367, 315, 320, 315, 319,
  319, 557, 319, 559, 257, 258, 259, 260, 261, 262,
  263, 264, 265, 266, 267, 268, 269, 270, 271, 272,
  273, 274, 275, 276, 277, 278, 279, 280, 281, 282,
  283, 284, 318, 286, 287, 288, 289, 290, 291, 292,
  293, 294, 295, 296, 297, 298, 299, 300, 301, 302,
  303, 304, 305, 306, 307, 308, 309, 310, 311, 312,
  313, 314, 319, 315, 359, 318, 318, 319, 320, 322,
  322, 324, 317, 359, 317, 361, 362, 363, 364, 365,
  366, 367, 319, 314, 315, 315, 317, 340, 319, 319,
  321, 314, 315, 324, 314, 315, 349, 350, 314, 315,
  353, 354, 355, 356, 335, 336, 359, 360, 361, 362,
  363, 364, 365, 366, 367, 368, 257, 258, 259, 260,
  261, 262, 263, 264, 265, 266, 267, 268, 269, 270,
  271, 272, 273, 274, 275, 276, 277, 278, 279, 280,
  281, 282, 283, 284, 318, 286, 287, 288, 289, 290,
  291, 292, 293, 294, 295, 296, 297, 298, 299, 300,
  301, 302, 303, 304, 305, 306, 307, 308, 309, 310,
  311, 312, 313, 314, 318, 315, 318, 318, 318, 319,
  320, 322, 322, 324, 318, 359, 318, 361, 362, 363,
  364, 365, 366, 367, 324, 314, 315, 324, 317, 340,
  319, 315, 321, 314, 315, 324, 319, 320, 349, 350,
  286, 287, 353, 354, 355, 356, 335, 336, 359, 360,
  361, 362, 363, 364, 365, 366, 367, 368, 257, 258,
  259, 260, 261, 262, 263, 264, 265, 266, 267, 268,
  269, 270, 271, 272, 273, 274, 275, 276, 277, 278,
  279, 280, 281, 282, 283, 284, 324, 286, 287, 288,
  289, 290, 291, 292, 293, 294, 295, 296, 297, 298,
  299, 300, 301, 302, 303, 304, 305, 306, 307, 308,
  309, 310, 311, 312, 343, 344, 345, 346, 324, 318,
  317, 314, 315, 322, 317, 319, 319, 315, 321, 315,
  319, 324, 318, 319, 320, 315, 322, 270, 271, 272,
  273, 340, 335, 336, 337, 338, 339, 340, 341, 342,
  349, 350, 265, 266, 353, 354, 355, 356, 309, 310,
  359, 360, 361, 362, 363, 364, 365, 366, 367, 368,
  257, 258, 259, 260, 261, 262, 263, 264, 265, 266,
  267, 268, 269, 270, 271, 272, 273, 274, 275, 276,
  277, 278, 279, 280, 281, 99, 100, 314, 315, 319,
  317, 319, 319, 317, 321, 274, 275, 324, 317, 296,
  297, 298, 299, 359, 301, 302, 303, 304, 335, 336,
  337, 338, 339, 310, 311, 312, 313, 359, 315, 317,
  317, 318, 319, 320, 319, 322, 319, 324, 213, 214,
  215, 319, 257, 258, 259, 260, 261, 262, 263, 264,
  265, 266, 267, 268, 269, 270, 271, 272, 273, 274,
  275, 276, 277, 278, 279, 280, 281, 98, 99, 100,
  357, 318, 359, 360, 317, 287, 324, 314, 324, 313,
  367, 296, 297, 298, 299, 314, 301, 302, 303, 304,
  274, 275, 276, 277, 359, 310, 311, 312, 313, 317,
  315, 315, 317, 318, 319, 320, 319, 322, 319, 324,
  359, 321, 296, 297, 298, 322, 357, 301, 318, 324,
  319, 262, 263, 264, 265, 266, 267, 268, 269, 270,
  271, 272, 273, 274, 275, 276, 277, 278, 279, 280,
  281, 317, 357, 321, 359, 360, 319, 319, 319, 317,
  324, 321, 367, 294, 295, 296, 297, 298, 299, 300,
  301, 285, 324, 324, 315, 319, 0, 308, 309, 310,
  311, 312, 324, 313, 318, 313, 313, 318, 321, 314,
  315, 322, 317, 319, 319, 324, 321, 313, 313, 324,
  319, 319, 314, 324, 324, 314, 319, 317, 319, 340,
  335, 336, 337, 338, 339, 340, 341, 342, 349, 350,
  319, 319, 353, 354, 355, 356, 317, 319, 359, 360,
  361, 362, 363, 364, 365, 366, 367, 257, 258, 259,
  260, 261, 262, 263, 264, 265, 266, 267, 268, 269,
  270, 271, 272, 273, 274, 275, 276, 277, 278, 279,
  280, 281, 319, 319, 314, 315, 319, 317, 319, 319,
  319, 321, 396, 52, 324, 295, 296, 297, 298, 299,
  346, 301, 302, 303, 304, 335, 336, 337, 338, 339,
  310, 311, 312, 466, 104, 283, 264, 230, 318, 319,
  312, 555, 322, 323, 600, 525, 601, 300, 455, 262,
  263, 264, 265, 266, 267, 268, 269, 270, 271, 272,
  273, 274, 275, 276, 277, 278, 279, 280, 281, 342,
  306, 107, 102, 236, 238, 137, 356, 285, 570, 359,
  360, 361, 362, 296, 297, 298, 299, 282, 301, 499,
  278, 72, 558, 343, 129, 204, 473, 310, 311, 312,
  406, 288, 518, -1, 317, 318, -1, -1, -1, 322,
   -1, 257, 258, 259, 260, 261, 262, 263, 264, 265,
  266, 267, 268, 269, 270, 271, 272, 273, 274, 275,
  276, 277, 278, 279, 280, 281, -1, -1, -1, -1,
   -1, -1, -1, -1, -1, -1, 359, 360, -1, -1,
  296, 297, 298, 299, 367, 301, -1, -1, -1, 305,
  306, 307, -1, -1, 310, 311, 312, 313, -1, 315,
  316, 317, 318, 319, -1, -1, -1, -1, 324, 257,
  258, 259, 260, 261, 262, 263, 264, 265, 266, 267,
  268, 269, 270, 271, 272, 273, 274, 275, 276, 277,
  278, 279, 280, 281, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, -1, 360, -1, -1, -1, 296, 297,
  298, 299, -1, 301, -1, -1, -1, 305, 306, 307,
   -1, -1, 310, 311, 312, 313, -1, 315, 316, 317,
  318, 319, -1, -1, -1, -1, 324, 257, 258, 259,
  260, 261, 262, 263, 264, 265, 266, 267, 268, 269,
  270, 271, 272, 273, 274, 275, 276, 277, 278, 279,
  280, 281, -1, -1, 314, 315, -1, 317, -1, 319,
   -1, 321, 360, -1, 324, 295, 296, 297, 298, 299,
   -1, 301, 302, 303, 304, 335, 336, 337, 338, -1,
  310, 311, 312, -1, -1, -1, -1, -1, -1, 319,
   -1, -1, 322, 323, 257, 258, 259, 260, 261, 262,
  263, 264, 265, 266, 267, 268, 269, 270, 271, 272,
  273, 274, 275, 276, 277, 278, 279, 280, 281, -1,
   -1, 314, 315, -1, 317, -1, 319, -1, 321, 359,
  360, 324, -1, 296, 297, 298, 299, -1, 301, 302,
  303, 304, 335, 336, 337, 338, -1, 310, 311, 312,
   -1, -1, -1, -1, 317, 318, -1, -1, -1, 322,
   -1, 324, 257, 258, 259, 260, 261, 262, 263, 264,
  265, 266, 267, 268, 269, 270, 271, 272, 273, 274,
  275, 276, 277, 278, 279, 280, 281, -1, -1, -1,
   -1, -1, -1, -1, -1, -1, 359, 360, -1, -1,
  295, 296, 297, 298, 299, -1, 301, 302, 303, 304,
   -1, -1, -1, -1, -1, 310, 311, 312, -1, -1,
   -1, -1, -1, 318, -1, -1, -1, 322, 257, 258,
  259, 260, 261, 262, 263, 264, 265, 266, 267, 268,
  269, 270, 271, 272, 273, 274, 275, 276, 277, 278,
  279, 280, 281, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, -1, 359, 360, 295, 296, 297, 298,
  299, -1, 301, 302, 303, 304, -1, -1, -1, -1,
   -1, 310, 311, 312, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, 322, 323, 257, 258, 259, 260, 261,
  262, 263, 264, 265, 266, 267, 268, 269, 270, 271,
  272, 273, 274, 275, 276, 277, 278, 279, 280, 281,
   -1, -1, 314, 315, -1, 317, -1, 319, -1, 321,
  359, 360, 324, 295, 296, 297, 298, 299, -1, 301,
  302, 303, 304, 335, 336, 337, -1, -1, 310, 311,
  312, -1, -1, -1, -1, -1, 318, -1, -1, -1,
  322, 257, 258, 259, 260, 261, 262, 263, 264, 265,
  266, 267, 268, 269, 270, 271, 272, 273, 274, 275,
  276, 277, 278, 279, 280, 281, -1, -1, -1, 314,
  315, -1, 317, -1, 319, -1, 321, -1, 360, 324,
  296, 297, 298, 299, -1, 301, 302, 303, 304, -1,
  335, 336, 337, -1, 310, 311, 312, -1, -1, -1,
   -1, -1, 318, -1, -1, -1, 322, 257, 258, 259,
  260, 261, 262, 263, 264, 265, 266, 267, 268, 269,
  270, 271, 272, 273, 274, 275, 276, 277, 278, 279,
  280, 281, -1, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, 359, 360, 295, 296, 297, 298, 299,
   -1, 301, 302, 303, 304, -1, -1, -1, -1, -1,
  310, 311, 312, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, 257, 258, 259, 260, 261, 262, 263,
  264, 265, 266, 267, 268, 269, 270, 271, 272, 273,
  274, 275, 276, 277, 278, 279, 280, 281, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, -1, 359,
  360, 295, 296, 297, 298, 299, -1, 301, 302, 303,
  304, -1, -1, -1, -1, -1, 310, 311, 312, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, -1, 323,
  257, 258, 259, 260, 261, 262, 263, 264, 265, 266,
  267, 268, 269, 270, 271, 272, 273, 274, 275, 276,
  277, 278, 279, 280, 281, -1, -1, -1, -1, -1,
   -1, -1, -1, -1, -1, -1, 360, -1, -1, 296,
  297, 298, 299, -1, 301, -1, -1, -1, 305, 306,
  307, -1, -1, 310, 311, 312, -1, -1, -1, -1,
  317, -1, -1, -1, -1, -1, 257, 258, 259, 260,
  261, 262, 263, 264, 265, 266, 267, 268, 269, 270,
  271, 272, 273, 274, 275, 276, 277, 278, 279, 280,
  281, -1, -1, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, 360, 295, 296, 297, 298, 299, -1,
  301, 302, 303, 304, -1, -1, -1, -1, -1, 310,
  311, 312, -1, -1, -1, -1, 257, 258, 259, 260,
  261, 262, 263, 264, 265, 266, 267, 268, 269, 270,
  271, 272, 273, 274, 275, 276, 277, 278, 279, 280,
  281, -1, -1, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, -1, -1, 296, 297, 298, 299, 360,
  301, 302, 303, 304, -1, -1, -1, -1, -1, 310,
  311, 312, 257, 258, 259, 260, 261, 262, 263, 264,
  265, 266, 267, 268, 269, 270, 271, 272, 273, 274,
  275, 276, 277, 278, 279, 280, 281, -1, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
   -1, 296, -1, -1, 299, -1, 301, -1, -1, 360,
   -1, -1, -1, -1, -1, 310, 311, 312, 313, -1,
   -1, -1, 317, 318, -1, 320, -1, 257, 258, 259,
  260, 261, 262, 263, 264, 265, 266, 267, 268, 269,
  270, 271, 272, 273, 274, 275, 276, 277, 278, 279,
  280, 281, 314, 315, -1, 317, -1, 319, -1, 321,
   -1, -1, 324, -1, -1, 360, 296, -1, -1, 299,
   -1, 301, -1, 335, 336, 337, 338, 339, 340, -1,
  310, 311, 312, -1, -1, -1, -1, 317, -1, 257,
  258, 259, 260, 261, 262, 263, 264, 265, 266, 267,
  268, 269, 270, 271, 272, 273, 274, 275, 276, 277,
  278, 279, 280, 281, 314, 315, -1, 317, -1, 319,
   -1, 321, -1, -1, 324, -1, -1, -1, 296, -1,
  360, 299, -1, 301, -1, 335, 336, 337, 338, 339,
  340, -1, 310, 311, 312, 262, 263, 264, 265, 266,
  267, 268, 269, 270, 271, 272, 273, 274, 275, 276,
  277, 278, 279, 280, 281, -1, -1, -1, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, 295, 296,
  297, 298, 299, -1, 301, -1, -1, 316, -1, -1,
   -1, -1, 360, 310, 311, 312, 325, 326, 327, 328,
  329, 330, 331, 332, 333, 334, -1, 324, -1, -1,
  262, 263, 264, 265, 266, 267, 268, 269, 270, 271,
  272, 273, 274, 275, 276, 277, 278, 279, 280, 281,
   -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, 360, 296, 297, 298, 299, -1, 301,
   -1, -1, -1, -1, -1, -1, -1, -1, 310, 311,
  312, -1, -1, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, 324, -1, -1, 262, 263, 264, 265, 266,
  267, 268, 269, 270, 271, 272, 273, 274, 275, 276,
  277, 278, 279, 280, 281, -1, -1, -1, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, 360, 296,
  297, 298, 299, -1, 301, -1, -1, -1, -1, -1,
   -1, -1, -1, 310, 311, 312, 262, 263, 264, 265,
  266, 267, 268, 269, 270, 271, 272, 273, 274, 275,
  276, 277, 278, 279, 280, 281, -1, -1, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  296, 297, 298, 299, -1, 301, -1, -1, -1, -1,
   -1, -1, -1, 360, 310, 311, 312, 282, 283, 284,
   -1, 286, 287, 288, 289, 290, 291, 292, 293, 294,
  295, -1, -1, -1, -1, 300, -1, -1, -1, -1,
  305, 306, 307, 308, 309, -1, -1, -1, 313, -1,
   -1, -1, -1, 318, -1, 314, 315, 322, 317, 324,
  319, -1, 321, -1, 360, 324, -1, -1, -1, -1,
   -1, -1, -1, -1, -1, 340, 335, 336, 337, 338,
  339, 340, 341, 342, 349, 350, -1, -1, 353, 354,
  355, 356, -1, -1, 359, 360, 361, 362, 363, 364,
  365, 366, 367, 282, 283, 284, -1, 286, 287, 288,
  289, 290, 291, 292, 293, 294, 295, -1, -1, -1,
   -1, 300, -1, -1, -1, -1, 305, 306, 307, 308,
  309, -1, -1, -1, 313, -1, -1, -1, -1, 318,
   -1, -1, -1, 322, -1, 324, -1, -1, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
   -1, 340, -1, -1, -1, -1, -1, -1, -1, -1,
  349, 350, -1, -1, 353, 354, 355, 356, -1, -1,
  359, 360, 361, 362, 363, 364, 365, 366, 367, 282,
  283, 284, -1, 286, 287, 288, 289, 290, 291, 292,
  293, 294, 295, -1, -1, -1, -1, 300, -1, -1,
   -1, -1, 305, 306, 307, 308, 309, -1, -1, -1,
   -1, -1, -1, -1, -1, 318, -1, -1, -1, 322,
   -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, 340, -1, -1,
   -1, -1, -1, -1, -1, -1, 349, 350, -1, -1,
  353, 354, 355, 356, -1, -1, 359, 360, 361, 362,
  363, 364, 365, 366, 367, 294, 295, -1, -1, -1,
   -1, 300, -1, -1, -1, -1, -1, -1, -1, 308,
  309, -1, -1, -1, 313, 314, -1, -1, -1, 318,
   -1, 320, -1, 322, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
   -1, 340, -1, -1, -1, -1, -1, -1, -1, -1,
  349, 350, -1, -1, 353, 354, 355, 356, 357, -1,
  359, -1, 361, 362, 363, 364, 365, 366, 367, 294,
  295, -1, -1, -1, -1, 300, -1, -1, -1, -1,
   -1, -1, -1, 308, 309, -1, -1, -1, 313, 314,
   -1, -1, -1, 318, -1, 320, -1, 322, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, -1, -1, 340, -1, -1, -1, -1,
   -1, -1, -1, -1, 349, 350, -1, -1, 353, 354,
  355, 356, 357, -1, 359, -1, 361, 362, 363, 364,
  365, 366, 367, 294, 295, -1, -1, -1, -1, 300,
   -1, -1, -1, -1, -1, -1, -1, 308, 309, -1,
   -1, -1, 313, 314, -1, -1, -1, 318, -1, 320,
   -1, 322, 294, 295, -1, -1, -1, -1, 300, 301,
   -1, -1, -1, -1, -1, -1, 308, 309, -1, 340,
   -1, -1, -1, -1, -1, -1, 318, -1, 349, 350,
  322, -1, 353, 354, 355, 356, 357, -1, 359, -1,
  361, 362, 363, 364, 365, 366, 367, -1, 340, -1,
   -1, -1, -1, -1, -1, -1, -1, 349, 350, -1,
   -1, 353, 354, 355, 356, -1, -1, 359, -1, 361,
  362, 363, 364, 365, 366, 367, 294, 295, -1, -1,
   -1, -1, 300, -1, -1, -1, -1, -1, -1, -1,
  308, 309, -1, -1, -1, 313, 294, 295, -1, -1,
  318, -1, 300, -1, 322, -1, -1, -1, -1, -1,
  308, 309, -1, -1, -1, 313, -1, -1, -1, -1,
  318, -1, 340, -1, 322, -1, -1, -1, -1, -1,
   -1, 349, 350, -1, -1, 353, 354, 355, 356, -1,
   -1, 359, 340, 361, 362, 363, 364, 365, 366, 367,
   -1, 349, 350, -1, -1, 353, 354, 355, 356, -1,
   -1, 359, -1, 361, 362, 363, 364, 365, 366, 367,
  294, 295, -1, -1, -1, -1, 300, -1, -1, -1,
   -1, -1, -1, -1, 308, 309, -1, -1, -1, -1,
  294, 295, -1, -1, 318, -1, 300, -1, 322, -1,
   -1, -1, -1, -1, 308, 309, -1, -1, -1, -1,
   -1, -1, -1, -1, 318, -1, 340, -1, 322, -1,
   -1, -1, -1, -1, -1, 349, 350, -1, -1, 353,
  354, 355, 356, -1, -1, 359, 340, 361, 362, 363,
  364, 365, 366, 367, -1, 349, 350, -1, -1, 353,
  354, 355, 356, -1, -1, 359, -1, 361, 362, 363,
  364, 365, 366, 367, 294, 295, -1, -1, -1, -1,
  300, -1, -1, -1, -1, -1, -1, -1, 308, 309,
   -1, -1, -1, -1, -1, -1, -1, -1, 318, -1,
   -1, -1, 322, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  340, -1, -1, -1, -1, -1, -1, -1, -1, 349,
  350, -1, -1, 353, 354, 355, 356, -1, -1, 359,
   -1, 361, 362, 363, 364, 365, 366, 367, 262, 263,
  264, 265, 266, 267, 268, 269, 270, 271, 272, 273,
  274, 275, 276, 277, 278, 279, 280, 281, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, 296, 297, 298, 299, -1, 301, -1, -1,
   -1, -1, -1, -1, -1, -1, 310, 311, 312, 314,
  315, 316, 317, 318, 319, 320, 321, 322, 323, 324,
  325, 326, 327, 328, 329, 330, 331, 332, 333, 334,
  335, 336, 337, 338, 339, 340, 341, 342, 343, 344,
  345, 346, 347, 348, 349, 350, 351, 352, 353, 354,
   -1, -1, 357, 358, 314, 315, 316, -1, 318, -1,
  320, -1, 322, 323, -1, 325, 326, 327, 328, 329,
  330, 331, 332, 333, 334, 335, 336, 337, 338, 339,
  340, 341, 342, 343, 344, 345, 346, 347, 348, 349,
  350, 351, 352, 353, 354, -1, -1, 357, 358, 315,
  316, 317, 318, -1, 320, -1, 322, 323, 324, 325,
  326, 327, 328, 329, 330, 331, 332, 333, 334, 335,
  336, 337, 338, 339, 340, 341, 342, 343, 344, 345,
  346, 347, 348, 349, 350, 351, 352, 353, 354, -1,
   -1, 357, 358, 315, 316, 317, 318, -1, 320, -1,
  322, 323, 324, 325, 326, 327, 328, 329, 330, 331,
  332, 333, 334, 335, 336, 337, 338, 339, 340, 341,
  342, 343, 344, 345, 346, 347, 348, 349, 350, 351,
  352, 353, 354, -1, -1, 357, 358, 314, 315, 316,
  317, -1, 319, -1, 321, 322, 323, 324, 325, 326,
  327, 328, 329, 330, 331, 332, 333, 334, 335, 336,
  337, 338, 339, 340, 341, 342, 343, 344, 345, 346,
  347, 348, 349, 350, 351, 352, 314, 315, 316, 317,
   -1, 319, -1, 321, 322, 323, 324, 325, 326, 327,
  328, 329, 330, 331, 332, 333, 334, 335, 336, 337,
  338, 339, 340, 341, 342, 343, 344, 345, 346, 347,
  348, 349, 350, 351, 352, 314, 315, 316, 317, -1,
  319, -1, 321, 322, 323, 324, 325, 326, 327, 328,
  329, 330, 331, 332, 333, 334, 335, 336, 337, 338,
  339, 340, 341, 342, 343, 344, 345, 346, 347, 348,
  349, 350, 351, 352, 314, 315, 316, 317, -1, 319,
   -1, 321, 322, 323, 324, 325, 326, 327, 328, 329,
  330, 331, 332, 333, 334, 335, 336, 337, 338, 339,
  340, 341, 342, 343, 344, 345, 346, 347, 348, 349,
  350, 351, 352, 314, 315, 316, 317, -1, 319, -1,
  321, 322, 323, 324, 325, 326, 327, 328, 329, 330,
  331, 332, 333, 334, 335, 336, 337, 338, 339, 340,
  341, 342, 343, 344, 345, 346, 347, 348, 349, 350,
  351, 352, 314, 315, -1, 317, -1, 319, -1, 321,
  322, 323, 324, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, 335, 336, 337, 338, 339, 340, 341,
  342, 343, 344, 345, 346, 347, 348, 349, 350, 351,
  352, 314, 315, -1, 317, -1, 319, -1, 321, -1,
  323, 324, -1, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, 335, 336, 337, 338, 339, 340, 341, 342,
  343, 344, 345, 346, 347, 348, 349, 350, 314, 315,
   -1, 317, -1, 319, -1, 321, -1, 323, 324, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, -1, 335,
  336, 337, 338, 339, 340, 341, 342, 343, 344, 345,
  346, 347, 348, 349, 350, 314, 315, -1, 317, -1,
  319, -1, 321, -1, 323, 324, -1, -1, -1, -1,
   -1, -1, -1, -1, -1, -1, 335, 336, 337, 338,
  339, 340, 341, 342, 343, 344, 345, 346, 347, 348,
  349, 350, 314, 315, -1, 317, -1, 319, -1, 321,
   -1, 323, 324, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, 335, 336, 337, 338, 339, 340, 341,
  342, 343, 344, 345, 346, 347, 348, 314, 315, -1,
  317, -1, 319, -1, 321, -1, 323, 324, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, 335, 336,
  337, 338, 339, 340, 341, 342, 343, 344, 345, 346,
  347, 348, 314, 315, -1, 317, -1, 319, -1, 321,
   -1, -1, 324, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, 335, 336, 337, 338, 339, 340, 341,
  342, 343, 344, 345, 346, 347, 348, 314, 315, -1,
  317, -1, 319, -1, 321, -1, -1, 324, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, 335, 336,
  337, 338, 339, 340, 341, 342, 343, 344, 345, 346,
  347, 348, 314, 315, -1, 317, -1, 319, -1, 321,
   -1, -1, 324, -1, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, 335, 336, 337, 338, 339, 340, 341,
  342, 343, 344, 345, 346, 347, 348, 314, 315, -1,
  317, -1, 319, -1, 321, -1, -1, 324, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, -1, 335, 336,
  337, 338, 339, 340, 341, 342, 343, 344, 345, 346,
  314, 315, -1, 317, -1, 319, -1, 321, -1, -1,
  324, -1, -1, -1, -1, -1, -1, -1, -1, -1,
   -1, 335, 336, 337, 338, 339, 340, 341, 342, 343,
  344, 345, 346, 314, 315, -1, 317, -1, 319, -1,
  321, -1, -1, 324, -1, -1, -1, -1, -1, -1,
   -1, -1, -1, -1, 335, 336, 337, 338, 339, 340,
  341, 342, 343, 344, 345, 346, 314, 315, -1, 317,
   -1, 319, -1, 321, -1, -1, 324, -1, -1, -1,
   -1, -1, -1, -1, -1, -1, -1, 335, 336, 337,
  338, 339, 340, 341, 342, 343, 344, 345, 346, 314,
  315, -1, 317, -1, 319, -1, 321, -1, -1, 324,
   -1, -1, -1, -1, -1, -1, -1, -1, -1, -1,
  335, 336, 337, 338, 339, 340, 341, 342, 343, 344,
  345, 346,
};
# 1858 "y.tab.c"
int yydebug;
int yynerrs;
int yyerrflag;
int yychar;
short *yyssp;
yyATTRIBUTES *yyvsp;
yyATTRIBUTES yyval;
yyATTRIBUTES yylval;


static short *yyss;
static short *yysslim;
static yyATTRIBUTES *yyvs;
static unsigned yystacksize;

static int yygrowstack(void)
{
    int i;
    unsigned newsize;
    short *newss;
    yyATTRIBUTES *newvs;

    if ((newsize = yystacksize) == 0)
        newsize = 500;
    else if (newsize >= 500)
        return -1;
    else if ((newsize *= 2) > 500)
        newsize = 500;

    i = yyssp - yyss;
    newss = (yyss != 0)
          ? (short *)realloc(yyss, newsize * sizeof(*newss))
          : (short *)malloc(newsize * sizeof(*newss));
    if (newss == 0)
        return -1;

    yyss = newss;
    yyssp = newss + i;
    newvs = (yyvs != 0)
          ? (yyATTRIBUTES *)realloc(yyvs, newsize * sizeof(*newvs))
          : (yyATTRIBUTES *)malloc(newsize * sizeof(*newvs));
    if (newvs == 0)
        return -1;

    yyvs = newvs;
    yyvsp = newvs + i;
    yystacksize = newsize;
    yysslim = yyss + newsize - 1;
    return 0;
}






int
yyparse(void)
{
    int yym, yyn, yystate;
# 1929 "y.tab.c"
    yynerrs = 0;
    yyerrflag = 0;
    yychar = (-1);
    yystate = 0;

    if (yyss == 
# 1934 "y.tab.c" 3 4
               ((void *)0) 
# 1934 "y.tab.c"
                    && yygrowstack()) goto yyoverflow;
    yyssp = yyss;
    yyvsp = yyvs;
    yystate = 0;
    *yyssp = 0;

yyloop:
    if ((yyn = yydefred[yystate]) != 0) goto yyreduce;
    if (yychar < 0)
    {
        if ((yychar = yylex()) < 0) yychar = 0;
# 1955 "y.tab.c"
    }
    if ((yyn = yysindex[yystate]) && (yyn += yychar) >= 0 &&
            yyn <= 4502 && yycheck[yyn] == yychar)
    {





        if (yyssp >= yysslim && yygrowstack())
        {
            goto yyoverflow;
        }
        yystate = yytable[yyn];
        *++yyssp = yytable[yyn];
        *++yyvsp = yylval;
        yychar = (-1);
        if (yyerrflag > 0) --yyerrflag;
        goto yyloop;
    }
    if ((yyn = yyrindex[yystate]) && (yyn += yychar) >= 0 &&
            yyn <= 4502 && yycheck[yyn] == yychar)
    {
        yyn = yytable[yyn];
        goto yyreduce;
    }
    if (yyerrflag) goto yyinrecovery;

    yyerror("syntax error");

    goto yyerrlab;

yyerrlab:
    ++yynerrs;

yyinrecovery:
    if (yyerrflag < 3)
    {
        yyerrflag = 3;
        for (;;)
        {
            if ((yyn = yysindex[*yyssp]) && (yyn += 256) >= 0 &&
                    yyn <= 4502 && yycheck[yyn] == 256)
            {





                if (yyssp >= yysslim && yygrowstack())
                {
                    goto yyoverflow;
                }
                yystate = yytable[yyn];
                *++yyssp = yytable[yyn];
                *++yyvsp = yylval;
                goto yyloop;
            }
            else
            {





                if (yyssp <= yyss) goto yyabort;
                --yyssp;
                --yyvsp;
            }
        }
    }
    else
    {
        if (yychar == 0) goto yyabort;
# 2039 "y.tab.c"
        yychar = (-1);
        goto yyloop;
    }

yyreduce:





    yym = yylen[yyn];
    if (yym)
        yyval = yyvsp[1-yym];
    else
        memset(&yyval, 0, sizeof yyval);
    switch (yyn)
    {
case 1:
# 136 "gen.y"
 {
yy yyb;
yy yyv_Unit;
yy yy_1_1;
yy yyv_Flag;
yy yy_2_1_1_1;
yy yy_2_1_2_1;
yy yy_2_1_2_2;
yy yy_2_1_3_1;
yy yy_2_2_1_1;
yy yy_2_2_2_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_Unit = yy_1_1;
{
yy yysb = yyb;
isAspectCompile(&yy_2_1_1_1);
yyv_Flag = yy_2_1_1_1;
yy_2_1_2_1 = yyv_Flag;
yy_2_1_2_2 = ((yy)1);
if ((long)yy_2_1_2_1 != (long)yy_2_1_2_2) goto yyfl_1_1_2_1;
yy_2_1_3_1 = yyv_Unit;
UnparseUnit(yy_2_1_3_1);
goto yysl_1_1_2;
yyfl_1_1_2_1 : ;
yy_2_2_1_1 = yyv_Unit;
SemanticUnit(yy_2_2_1_1);
yy_2_2_2_1 = yyv_Unit;
WeaveUnit(yy_2_2_2_1);
goto yysl_1_1_2;
yysl_1_1_2 : ;
yyb = yysb;
}
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 2:
# 178 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_Unit;
yy yy_4_1;
yy_4_1 = (yy)(yyvsp[-1].attr[1]);
yyv_Unit = yy_4_1;
yy_0_1 = yyv_Unit;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 3:
# 192 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 4:
# 206 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 3;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 5:
# 232 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_D;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_D = yy_2_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 6:
# 260 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 106;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 105;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 7:
# 287 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_D;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_D = yy_3_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 105;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 8:
# 315 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 131;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 9:
# 341 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy yyv_List;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yyv_List = yy_2_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyv_List;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 10:
# 369 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 131;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 11:
# 395 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy yyv_List;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yyv_List = yy_2_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyv_List;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 12:
# 423 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 131;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 13:
# 449 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy yyv_List;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yyv_List = yy_2_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyv_List;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 14:
# 481 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E;
yy yy_3_1;
yy yyv_Stmt;
yy yy_5_1;
yy_3_1 = (yy)(yyvsp[-2].attr[1]);
yy_5_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_E = yy_3_1;
yyv_Stmt = yy_5_1;
yy_0_1_1 = yyv_E;
yy_0_1_2 = yyv_Stmt;
yy_0_1 = yyb + 0;
yy_0_1[0] = 3;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 15:
# 515 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Stmt;
yy yy_2_1;
yy yyv_E;
yy yy_5_1;
yy_2_1 = (yy)(yyvsp[-5].attr[1]);
yy_5_1 = (yy)(yyvsp[-2].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Stmt = yy_2_1;
yyv_E = yy_5_1;
yy_0_1_1 = yyv_E;
yy_0_1_2 = yyv_Stmt;
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-6].attr[0];
}
break;
case 16:
# 551 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_InitExpr;
yy yy_3_1;
yy yyv_TestExpr;
yy yy_5_1;
yy yyv_IncExpr;
yy yy_7_1;
yy yyv_Stmt;
yy yy_9_1;
yy_3_1 = (yy)(yyvsp[-6].attr[1]);
yy_5_1 = (yy)(yyvsp[-4].attr[1]);
yy_7_1 = (yy)(yyvsp[-2].attr[1]);
yy_9_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_InitExpr = yy_3_1;
yyv_TestExpr = yy_5_1;
yyv_IncExpr = yy_7_1;
yyv_Stmt = yy_9_1;
yy_0_1_1 = yyv_InitExpr;
yy_0_1_2 = yyv_TestExpr;
yy_0_1_3 = yyv_IncExpr;
yy_0_1_4 = yyv_Stmt;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-8].attr[0];
}
break;
case 17:
# 593 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 24;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 18:
# 607 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 28;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 19:
# 621 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 29;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 20:
# 635 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 30;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 21:
# 649 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 31;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 22:
# 663 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 32;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 23:
# 677 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 33;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 24:
# 691 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 34;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 25:
# 705 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 25;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 26:
# 719 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 26;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 27:
# 733 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 27;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 28:
# 747 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 29:
# 764 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 35;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 30:
# 796 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_P;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_P = yy_1_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 113;
yy_0_1 = yyb + 0;
yy_0_1[0] = 111;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 31:
# 822 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_P;
yy yy_1_1;
yy yyv_D;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_P = yy_1_1;
yyv_D = yy_2_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 111;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 32:
# 850 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 31;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 111;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 33:
# 875 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 2;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 34:
# 902 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_E;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_E = yy_3_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 35:
# 931 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_P;
yy yy_1_1;
yy yyv_D;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_P = yy_1_1;
yyv_D = yy_2_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 29;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 36:
# 959 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 31;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 29;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 37:
# 985 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_P;
yy yy_1_1;
yy yyv_D;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_P = yy_1_1;
yyv_D = yy_2_1;
yy_0_1_1 = yyv_P;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 29;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 38:
# 1013 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 31;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 29;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 39:
# 1038 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 92;
yy_0_1 = yyb + 0;
yy_0_1[0] = 87;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 40:
# 1056 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 97;
yy_0_1 = yyb + 0;
yy_0_1[0] = 87;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 41:
# 1074 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 56;
yy_0_1 = yyb + 0;
yy_0_1[0] = 87;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 42:
# 1092 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 93;
yy_0_1 = yyb + 0;
yy_0_1[0] = 87;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 43:
# 1110 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 94;
yy_0_1 = yyb + 0;
yy_0_1[0] = 87;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 44:
# 1128 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 95;
yy_0_1 = yyb + 0;
yy_0_1[0] = 87;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 45:
# 1146 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 46:
# 1162 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E = yy_2_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 39;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 47:
# 1188 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E = yy_2_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 40;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 48:
# 1214 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Op;
yy yy_1_1;
yy yyv_E;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Op = yy_1_1;
yyv_E = yy_2_1;
yy_0_1_1 = yyv_Op;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 49:
# 1243 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E = yy_2_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 47;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 50:
# 1270 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yyv_E;
yy yy_3_1;
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_E = yy_3_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 47;
yy_0_1_2_1 = yyv_E;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 5;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 51:
# 1302 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yyv_T;
yy yy_3_1;
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_T = yy_3_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 47;
yy_0_1_2_1 = yyv_T;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 3;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 52:
# 1332 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E = yy_2_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 49;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 53:
# 1360 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yyv_T;
yy yy_3_1;
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_T = yy_3_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 49;
yy_0_1_2_1 = yyv_T;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 3;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 54:
# 1392 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E;
yy yy_3_1;
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E = yy_3_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 48;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 55:
# 1422 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_2_2;
yy yyv_E;
yy yy_3_1;
yy yyv_T;
yy yy_5_1;
yy_3_1 = (yy)(yyvsp[-3].attr[1]);
yy_5_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 7; if (yyh > yyhx) yyExtend();
yyv_E = yy_3_1;
yyv_T = yy_5_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 51;
yy_0_1_2_1 = yyv_E;
yy_0_1_2_2 = yyv_T;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 31;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_2[2] = ((long)yy_0_1_2_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-5].attr[0];
}
break;
case 56:
# 1460 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_T;
yy yy_1_1;
yy yyv_E;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_T = yy_1_1;
yyv_E = yy_3_1;
yy_0_1_1 = yyv_T;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 57:
# 1491 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_S;
yy yy_1_1;
yy yyv_L;
yy yy_2_1;
yy yyv_P;
yy yy_3_1;
yy yy_5_1;
yy yy_5_2;
yy yy_6_1;
yy yy_6_2;
yy yy_7_1;
yy yy_7_2;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_2_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_S = yy_1_1;
yyv_L = yy_2_1;
yyv_P = yy_3_1;
yy_5_1 = yyv_S;
yy_5_2 = yyv_L;
if_func_declarator_then_leave_scope(yy_5_1, yy_5_2);
yy_6_1 = yyv_S;
yy_6_2 = yyv_L;
if_typedef_then_patch(yy_6_1, yy_6_2);
yy_7_1 = yyv_S;
yy_7_2 = yyv_L;
if_declarator_then_patch(yy_7_1, yy_7_2);
yy_0_1_1 = yyv_S;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_P;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 58:
# 1549 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yy_0_1_5;
yy yyv_Id1;
yy yy_1_1;
yy yyv_Id2;
yy yy_2_1;
yy yyv_D;
yy yy_4_1;
yy yyv_PC;
yy yy_7_1;
yy yyv_P;
yy yy_8_1;
yy_1_1 = (yy)(yyvsp[-8].attr[1]);
yy_2_1 = (yy)(yyvsp[-7].attr[1]);
yy_4_1 = (yy)(yyvsp[-5].attr[1]);
yy_7_1 = (yy)(yyvsp[-2].attr[1]);
yy_8_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_Id1 = yy_1_1;
yyv_Id2 = yy_2_1;
yyv_D = yy_4_1;
yyv_PC = yy_7_1;
yyv_P = yy_8_1;
yy_0_1_1 = yyv_Id1;
yy_0_1_2 = yyv_Id2;
yy_0_1_3 = yyv_D;
yy_0_1_4 = yyv_PC;
yy_0_1_5 = yyv_P;
yy_0_1 = yyb + 0;
yy_0_1[0] = 12;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yy_0_1[5] = ((long)yy_0_1_5);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-8].attr[0];
}
break;
case 59:
# 1598 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 60:
# 1619 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 61:
# 1636 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 21;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 62:
# 1669 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_Ad;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_Ad = yy_2_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_Ad;
yy_0_1 = yyb + 0;
yy_0_1[0] = 144;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 63:
# 1698 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_D;
yy yy_2_1;
yy yy_3_1;
yy yy_3_2;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_D = yy_2_1;
yy_3_1 = yyv_L;
yy_3_2 = yyv_D;
patch_param_declarator(yy_3_1, yy_3_2);
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 109;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 64:
# 1732 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_Abstdecl;
yy yy_2_1;
yy yy_3_1;
yy yy_3_2;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_Abstdecl = yy_2_1;
yy_3_1 = yyv_L;
yy_3_2 = yyv_Abstdecl;
patch_param_declarator(yy_3_1, yy_3_2);
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_Abstdecl;
yy_0_1 = yyb + 0;
yy_0_1[0] = 110;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 65:
# 1765 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 66:
# 1782 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 8;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 67:
# 1816 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 9;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 68:
# 1850 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 10;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 69:
# 1882 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 70:
# 1899 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 14;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 71:
# 1933 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 16;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 72:
# 1967 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 15;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 73:
# 2001 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 17;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 74:
# 2033 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 129;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 128;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 75:
# 2060 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_D;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_D = yy_3_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 128;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 76:
# 2089 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Q;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Q = yy_2_1;
yy_0_1_1 = yyv_Q;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 31;
yy_0_1 = yyb + 0;
yy_0_1[0] = 32;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 77:
# 2116 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Q;
yy yy_2_1;
yy yyv_P;
yy yy_3_1;
yy_2_1 = (yy)(yyvsp[-1].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Q = yy_2_1;
yyv_P = yy_3_1;
yy_0_1_1 = yyv_Q;
yy_0_1_2 = yyv_P;
yy_0_1 = yyb + 0;
yy_0_1[0] = 32;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 78:
# 2143 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 124;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 79:
# 2157 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_L;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_L = yy_1_1;
yy_0_1 = yyv_L;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 80:
# 2172 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 124;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 123;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 81:
# 2198 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_D;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_D = yy_2_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 123;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 82:
# 2228 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Id;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_Id = yy_2_1;
yy_0_1_1 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 13;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 83:
# 2250 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 14;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 84:
# 2265 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 15;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 85:
# 2281 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_E;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_E = yy_2_1;
yy_0_1_1 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 16;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 86:
# 2303 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 17;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 87:
# 2328 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_K;
yy yy_1_1;
yy yyv_V;
yy yy_2_1;
yy yyv_O;
yy yy_4_1;
yy_1_1 = (yy)(yyvsp[-4].attr[1]);
yy_2_1 = (yy)(yyvsp[-3].attr[1]);
yy_4_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_K = yy_1_1;
yyv_V = yy_2_1;
yyv_O = yy_4_1;
yy_0_1_1 = yyv_K;
yy_0_1_2 = yyv_V;
yy_0_1_3 = yyv_O;
yy_0_1 = yyb + 0;
yy_0_1[0] = 10;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 88:
# 2363 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 57;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 89:
# 2377 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 58;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 90:
# 2391 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 59;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 91:
# 2404 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 96;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 92:
# 2418 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 93;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 93:
# 2432 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 94;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 94:
# 2446 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 95;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 95:
# 2460 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_S;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_S = yy_1_1;
yy_0_1_1 = yyv_S;
yy_0_1 = yyb + 0;
yy_0_1[0] = 17;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 96:
# 2481 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_S;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_S = yy_1_1;
yy_0_1_1 = yyv_S;
yy_0_1 = yyb + 0;
yy_0_1[0] = 18;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 97:
# 2502 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_S;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_S = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 16;
yy_0_1_2 = yyv_S;
yy_0_1 = yyb + 0;
yy_0_1[0] = 15;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 98:
# 2528 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_S;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_S = yy_2_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_S;
yy_0_1 = yyb + 0;
yy_0_1[0] = 15;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 99:
# 2557 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_S;
yy yy_1_1;
yy yyv_O;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_S = yy_1_1;
yyv_O = yy_2_1;
yy_0_1_1 = yyv_S;
yy_0_1_2 = yyv_O;
yy_0_1 = yyb + 0;
yy_0_1[0] = 60;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 100:
# 2584 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 161;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 101:
# 2599 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_O;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_O = yy_2_1;
yy_0_1_1 = yyv_O;
yy_0_1 = yyb + 0;
yy_0_1[0] = 61;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 102:
# 2622 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_V;
yy yy_1_1;
yy yyv_O;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_V = yy_1_1;
yyv_O = yy_3_1;
yy_0_1_1 = yyv_V;
yy_0_1_2 = yyv_O;
yy_0_1 = yyb + 0;
yy_0_1[0] = 62;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 103:
# 2650 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_V;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_V = yy_1_1;
yy_0_1_1 = yyv_V;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 161;
yy_0_1 = yyb + 0;
yy_0_1[0] = 62;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 104:
# 2677 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_V;
yy yy_1_1;
yy yyv_O;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_V = yy_1_1;
yyv_O = yy_3_1;
yy_0_1_1 = yyv_V;
yy_0_1_2 = yyv_O;
yy_0_1 = yyb + 0;
yy_0_1[0] = 63;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 105:
# 2705 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_V;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_V = yy_1_1;
yy_0_1_1 = yyv_V;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 161;
yy_0_1 = yyb + 0;
yy_0_1[0] = 63;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 106:
# 2729 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 161;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 107:
# 2743 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_V;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_V = yy_1_1;
yy_0_1_1 = yyv_V;
yy_0_1 = yyb + 0;
yy_0_1[0] = 64;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 108:
# 2764 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_L;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_L = yy_1_1;
yy_0_1 = yyv_L;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 109:
# 2778 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 161;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 110:
# 2792 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 161;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 160;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 111:
# 2819 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_D;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_D = yy_3_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 160;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 112:
# 2850 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_S;
yy yy_1_1;
yy yyv_E;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_S = yy_1_1;
yyv_E = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 27;
yy_0_1_2 = yyv_S;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 162;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 113:
# 2888 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_D;
yy yy_2_1;
yy yyv_S;
yy yy_4_1;
yy yyv_E;
yy yy_6_1;
yy_2_1 = (yy)(yyvsp[-5].attr[1]);
yy_4_1 = (yy)(yyvsp[-3].attr[1]);
yy_6_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_D = yy_2_1;
yyv_S = yy_4_1;
yyv_E = yy_6_1;
yy_0_1_1_1 = yyv_D;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 28;
yy_0_1_1[1] = ((long)yy_0_1_1_1);
yy_0_1_2 = yyv_S;
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 162;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-6].attr[0];
}
break;
case 114:
# 2927 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_S;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_S = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 163;
yy_0_1_2 = yyv_S;
yy_0_1 = yyb + 0;
yy_0_1[0] = 164;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 115:
# 2954 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_S;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_S = yy_3_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_S;
yy_0_1 = yyb + 0;
yy_0_1[0] = 164;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 116:
# 2982 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_D = yy_1_1;
yy_0_1 = yyv_D;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 117:
# 2997 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_D = yy_1_1;
yy_0_1 = yyv_D;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 118:
# 3013 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 4;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 119:
# 3034 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 11;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 120:
# 3048 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yy_0_1_1 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 6;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 121:
# 3069 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 122:
# 3084 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_S;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_S = yy_1_1;
yy_0_1 = yyv_S;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 123:
# 3101 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_E;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_E = yy_2_1;
yy_0_1_1 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 12;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 124:
# 3124 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Stmt;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_Stmt = yy_2_1;
yy_0_1_1 = yyv_Stmt;
yy_0_1 = yyb + 0;
yy_0_1[0] = 25;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 125:
# 3145 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 126:
# 3164 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy yyv_E3;
yy yy_5_1;
yy_1_1 = (yy)(yyvsp[-4].attr[1]);
yy_3_1 = (yy)(yyvsp[-2].attr[1]);
yy_5_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yyv_E3 = yy_5_1;
yy_0_1_1 = yyb + 5;
yy_0_1_1[0] = 1;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1_4 = yyv_E3;
yy_0_1 = yyb + 0;
yy_0_1[0] = 10;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 127:
# 3203 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 46;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 16;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 128:
# 3229 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_L = yy_2_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 47;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 16;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 129:
# 3255 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_C;
yy yy_1_1;
yy yyv_L;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_C = yy_1_1;
yyv_L = yy_2_1;
yy_0_1_1 = yyv_C;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 17;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 130:
# 3284 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_T;
yy yy_1_1;
yy yyv_L;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_T = yy_1_1;
yyv_L = yy_2_1;
yy_0_1_1 = yyv_T;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 17;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 131:
# 3313 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Q;
yy yy_1_1;
yy yyv_L;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Q = yy_1_1;
yyv_L = yy_2_1;
yy_0_1_1 = yyv_Q;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 17;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 132:
# 3342 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_G;
yy yy_1_1;
yy yyv_L;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_G = yy_1_1;
yyv_L = yy_2_1;
yy_0_1_1 = yyv_G;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 17;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 133:
# 3371 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_F;
yy yy_1_1;
yy yyv_L;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_F = yy_1_1;
yyv_L = yy_2_1;
yy_0_1_1 = yyv_F;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 17;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 134:
# 3399 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 82;
yy_0_1 = yyb + 0;
yy_0_1[0] = 81;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 135:
# 3417 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 83;
yy_0_1 = yyb + 0;
yy_0_1[0] = 81;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 136:
# 3435 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 84;
yy_0_1 = yyb + 0;
yy_0_1[0] = 81;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 137:
# 3453 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 138:
# 3468 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_IntTypeConst;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_IntTypeConst = yy_1_1;
yy_0_1_1 = yyv_IntTypeConst;
yy_0_1 = yyb + 0;
yy_0_1[0] = 24;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 139:
# 3489 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_C;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_C = yy_1_1;
yy_0_1_1 = yyv_C;
yy_0_1 = yyb + 0;
yy_0_1[0] = 19;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 140:
# 3510 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_C;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_C = yy_1_1;
yy_0_1_1 = yyv_C;
yy_0_1 = yyb + 0;
yy_0_1[0] = 20;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 141:
# 3531 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Float;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_Float = yy_1_1;
yy_0_1_1 = yyv_Float;
yy_0_1 = yyb + 0;
yy_0_1[0] = 21;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 142:
# 3552 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yy_0_1_1 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 22;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 143:
# 3573 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_C;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_C = yy_1_1;
yy_0_1_1 = yyv_C;
yy_0_1 = yyb + 0;
yy_0_1[0] = 23;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 144:
# 3594 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 145:
# 3612 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_3;
yy yyv_T;
yy yy_2_1;
yy yyv_E;
yy yy_4_1;
yy_2_1 = (yy)(yyvsp[-2].attr[1]);
yy_4_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 7; if (yyh > yyhx) yyExtend();
yyv_T = yy_2_1;
yyv_E = yy_4_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 36;
yy_0_1_2_1 = yyv_T;
yy_0_1_2 = yyb + 5;
yy_0_1_2[0] = 3;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_3 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 146:
# 3648 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 147:
# 3665 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 20;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 148:
# 3699 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 13;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 149:
# 3731 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_2_2;
yy yyv_I;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 8; if (yyh > yyhx) yyExtend();
yyv_I = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 102;
yy_0_1_2_1 = yyb + 7;
yy_0_1_2_1[0] = 165;
yy_0_1_2_2 = yyv_I;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 172;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_2[2] = ((long)yy_0_1_2_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 101;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 150:
# 3766 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_2_2;
yy yyv_L;
yy yy_1_1;
yy yyv_I;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 7; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_I = yy_3_1;
yy_0_1_1 = yyv_L;
yy_0_1_2_1 = yyb + 6;
yy_0_1_2_1[0] = 165;
yy_0_1_2_2 = yyv_I;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 172;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_2[2] = ((long)yy_0_1_2_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 101;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 151:
# 3804 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_2_1_1;
yy yy_0_1_2_2;
yy yyv_L;
yy yy_1_1;
yy yyv_I;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 9; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_I = yy_3_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 102;
yy_0_1_2_1_1 = yyv_L;
yy_0_1_2_1 = yyb + 7;
yy_0_1_2_1[0] = 166;
yy_0_1_2_1[1] = ((long)yy_0_1_2_1_1);
yy_0_1_2_2 = yyv_I;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 172;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_2[2] = ((long)yy_0_1_2_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 101;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 152:
# 3848 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_2_1_1;
yy yy_0_1_2_2;
yy yyv_L;
yy yy_1_1;
yy yyv_L2;
yy yy_3_1;
yy yyv_I;
yy yy_5_1;
yy_1_1 = (yy)(yyvsp[-4].attr[1]);
yy_3_1 = (yy)(yyvsp[-2].attr[1]);
yy_5_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 8; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_L2 = yy_3_1;
yyv_I = yy_5_1;
yy_0_1_1 = yyv_L;
yy_0_1_2_1_1 = yyv_L2;
yy_0_1_2_1 = yyb + 6;
yy_0_1_2_1[0] = 166;
yy_0_1_2_1[1] = ((long)yy_0_1_2_1_1);
yy_0_1_2_2 = yyv_I;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 172;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_2[2] = ((long)yy_0_1_2_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 101;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 153:
# 3893 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_2_1_1;
yy yy_0_1_2_2;
yy yyv_Id;
yy yy_1_1;
yy yyv_I;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 9; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_I = yy_3_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 102;
yy_0_1_2_1_1 = yyv_Id;
yy_0_1_2_1 = yyb + 7;
yy_0_1_2_1[0] = 167;
yy_0_1_2_1[1] = ((long)yy_0_1_2_1_1);
yy_0_1_2_2 = yyv_I;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 172;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_2[2] = ((long)yy_0_1_2_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 101;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 154:
# 3937 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_2_1_1;
yy yy_0_1_2_2;
yy yyv_L;
yy yy_1_1;
yy yyv_Id;
yy yy_3_1;
yy yyv_I;
yy yy_5_1;
yy_1_1 = (yy)(yyvsp[-4].attr[1]);
yy_3_1 = (yy)(yyvsp[-2].attr[1]);
yy_5_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 8; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_Id = yy_3_1;
yyv_I = yy_5_1;
yy_0_1_1 = yyv_L;
yy_0_1_2_1_1 = yyv_Id;
yy_0_1_2_1 = yyb + 6;
yy_0_1_2_1[0] = 167;
yy_0_1_2_1[1] = ((long)yy_0_1_2_1_1);
yy_0_1_2_2 = yyv_I;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 172;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_2[2] = ((long)yy_0_1_2_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 101;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 155:
# 3980 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_N;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_N = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 168;
yy_0_1_2 = yyv_N;
yy_0_1 = yyb + 0;
yy_0_1[0] = 169;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 156:
# 4006 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_N;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_N = yy_2_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_N;
yy_0_1 = yyb + 0;
yy_0_1[0] = 169;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 157:
# 4036 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_E;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_E = yy_2_1;
yy_0_1_1 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 170;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 158:
# 4058 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Id;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_Id = yy_2_1;
yy_0_1_1 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 171;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 159:
# 4079 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 19;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 18;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 160:
# 4107 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_1_1;
yy yy_0_1_1_2;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_2_2;
yy yyv_L;
yy yy_1_1;
yy yyv_G2;
yy yy_3_1;
yy yyv_D;
yy yy_4_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yy_4_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 10; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_G2 = yy_3_1;
yyv_D = yy_4_1;
yy_0_1_1_1 = yyv_L;
yy_0_1_1_2 = yyb + 6;
yy_0_1_1_2[0] = 48;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 23;
yy_0_1_1[1] = ((long)yy_0_1_1_1);
yy_0_1_1[2] = ((long)yy_0_1_1_2);
yy_0_1_2_1 = yyv_G2;
yy_0_1_2_2 = yyv_D;
yy_0_1_2 = yyb + 7;
yy_0_1_2[0] = 21;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_2[2] = ((long)yy_0_1_2_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 18;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 161:
# 4154 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 141;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 140;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 162:
# 4181 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_E;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_E = yy_3_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 140;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 163:
# 4209 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyv_D;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 26;
yy_0_1 = yyb + 0;
yy_0_1[0] = 132;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 164:
# 4236 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy yyv_W;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_W = yy_3_1;
yy_0_1_1 = yyv_D;
yy_0_1_2 = yyv_W;
yy_0_1 = yyb + 0;
yy_0_1[0] = 132;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 165:
# 4264 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 166:
# 4282 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 4;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 167:
# 4316 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E;
yy yy_1_1;
yy yyv_L;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_2_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E = yy_1_1;
yyv_L = yy_2_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 5;
yy_0_1_2 = yyv_E;
yy_0_1_3 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 168:
# 4350 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E;
yy yy_1_1;
yy yyv_Id;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E = yy_1_1;
yyv_Id = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 2;
yy_0_1_2 = yyv_E;
yy_0_1_3 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 8;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 169:
# 4384 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E;
yy yy_1_1;
yy yyv_Id;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E = yy_1_1;
yyv_Id = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 3;
yy_0_1_2 = yyv_E;
yy_0_1_3 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 8;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 170:
# 4417 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 37;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 171:
# 4443 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 38;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 172:
# 4473 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_T;
yy yy_2_1;
yy yyv_L;
yy yy_5_1;
yy_2_1 = (yy)(yyvsp[-4].attr[1]);
yy_5_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_T = yy_2_1;
yyv_L = yy_5_1;
yy_0_1_1 = yyv_T;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 29;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-5].attr[0];
}
break;
case 173:
# 4507 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_T;
yy yy_2_1;
yy yyv_L;
yy yy_5_1;
yy_2_1 = (yy)(yyvsp[-5].attr[1]);
yy_5_1 = (yy)(yyvsp[-2].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_T = yy_2_1;
yyv_L = yy_5_1;
yy_0_1_1 = yyv_T;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 30;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-6].attr[0];
}
break;
case 174:
# 4539 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_T;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[-3].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_T = yy_2_1;
yy_0_1_1 = yyv_T;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 102;
yy_0_1 = yyb + 0;
yy_0_1[0] = 29;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 175:
# 4565 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 176:
# 4580 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 41;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 177:
# 4594 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 45;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 178:
# 4608 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 42;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 179:
# 4622 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 43;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 180:
# 4636 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 46;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 181:
# 4650 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 44;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 182:
# 4664 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 50;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 183:
# 4678 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 184:
# 4695 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_Op;
yy yy_2_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_2_1 = (yy)(yyvsp[-1].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_Op = yy_2_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyv_Op;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 185:
# 4731 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_E = yy_1_1;
yy_0_1_1 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 186:
# 4752 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 46;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 125;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 187:
# 4778 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_L = yy_2_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 47;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 125;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 188:
# 4805 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Specs;
yy yy_1_1;
yy yyv_List;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_2_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Specs = yy_1_1;
yyv_List = yy_2_1;
yy_0_1_1 = yyv_Specs;
yy_0_1_2 = yyv_List;
yy_0_1 = yyb + 0;
yy_0_1[0] = 126;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 189:
# 4834 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Specs;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_Specs = yy_1_1;
yy_0_1_1 = yyv_Specs;
yy_0_1 = yyb + 0;
yy_0_1[0] = 127;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 190:
# 4855 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 11;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 191:
# 4869 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 131;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 192:
# 4894 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_1_1;
yy yy_0_1_1_1_1;
yy yy_0_1_2;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 8; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yy_0_1_1_1_1 = yyv_Id;
yy_0_1_1_1 = yyb + 5;
yy_0_1_1_1[0] = 86;
yy_0_1_1_1[1] = ((long)yy_0_1_1_1_1);
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 67;
yy_0_1_1[1] = ((long)yy_0_1_1_1);
yy_0_1_2 = yyb + 7;
yy_0_1_2[0] = 131;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 193:
# 4928 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy yyv_List;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yyv_List = yy_2_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyv_List;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 194:
# 4957 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_1_1;
yy yy_0_1_1_1_1;
yy yy_0_1_2;
yy yyv_Id;
yy yy_1_1;
yy yyv_List;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 7; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_List = yy_2_1;
yy_0_1_1_1_1 = yyv_Id;
yy_0_1_1_1 = yyb + 5;
yy_0_1_1_1[0] = 86;
yy_0_1_1_1[1] = ((long)yy_0_1_1_1_1);
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 67;
yy_0_1_1[1] = ((long)yy_0_1_1_1);
yy_0_1_2 = yyv_List;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 195:
# 4993 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 131;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 196:
# 5019 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy yyv_List;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yyv_List = yy_2_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyv_List;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 197:
# 5047 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 131;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 198:
# 5073 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy yyv_List;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yyv_List = yy_2_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyv_List;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 199:
# 5101 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 131;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 200:
# 5127 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy yyv_List;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yyv_List = yy_2_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyv_List;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 201:
# 5155 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 131;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 202:
# 5181 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy yyv_List;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yyv_List = yy_2_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyv_List;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 203:
# 5209 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 131;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 204:
# 5235 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Spec;
yy yy_1_1;
yy yyv_List;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Spec = yy_1_1;
yyv_List = yy_2_1;
yy_0_1_1 = yyv_Spec;
yy_0_1_2 = yyv_List;
yy_0_1 = yyb + 0;
yy_0_1[0] = 130;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 205:
# 5263 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_L;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_L = yy_1_1;
yy_0_1 = yyv_L;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 206:
# 5277 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 14;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 207:
# 5291 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 14;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 13;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 208:
# 5317 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_D;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_D = yy_2_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 13;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 209:
# 5348 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_S;
yy yy_1_1;
yy yyv_L;
yy yy_2_1;
yy yyv_P;
yy yy_3_1;
yy yy_5_1;
yy yy_5_2;
yy yy_6_1;
yy yy_6_2;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_2_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_S = yy_1_1;
yyv_L = yy_2_1;
yyv_P = yy_3_1;
yy_5_1 = yyv_S;
yy_5_2 = yyv_L;
if_typedef_then_patch(yy_5_1, yy_5_2);
yy_6_1 = yyv_S;
yy_6_2 = yyv_L;
if_declarator_then_patch(yy_6_1, yy_6_2);
yy_0_1_1 = yyv_S;
yy_0_1_2 = yyv_L;
yy_0_1_3 = yyv_P;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 210:
# 5394 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_C;
yy yy_1_1;
yy yyv_L;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_C = yy_1_1;
yyv_L = yy_2_1;
yy_0_1_1 = yyv_C;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 17;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 211:
# 5423 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_T;
yy yy_1_1;
yy yyv_L;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_T = yy_1_1;
yyv_L = yy_2_1;
yy_0_1_1 = yyv_T;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 17;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 212:
# 5452 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Q;
yy yy_1_1;
yy yyv_L;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Q = yy_1_1;
yyv_L = yy_2_1;
yy_0_1_1 = yyv_Q;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 17;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 213:
# 5480 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_D = yy_1_1;
yy_0_1 = yyv_D;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 214:
# 5494 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 15;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 215:
# 5512 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yy_0_1_5;
yy yyv_S;
yy yy_1_1;
yy yyv_D;
yy yy_2_1;
yy yyv_L;
yy yy_3_1;
yy yyv_Pos;
yy yy_4_1;
yy yyv_Stmt;
yy yy_5_1;
yy_1_1 = (yy)(yyvsp[-4].attr[1]);
yy_2_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-2].attr[1]);
yy_4_1 = (yy)(yyvsp[-1].attr[1]);
yy_5_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_S = yy_1_1;
yyv_D = yy_2_1;
yyv_L = yy_3_1;
yyv_Pos = yy_4_1;
yyv_Stmt = yy_5_1;
yy_0_1_1 = yyv_S;
yy_0_1_2 = yyv_D;
yy_0_1_3 = yyv_L;
yy_0_1_4 = yyv_Stmt;
yy_0_1_5 = yyv_Pos;
yy_0_1 = yyb + 0;
yy_0_1[0] = 8;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yy_0_1[5] = ((long)yy_0_1_5);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 216:
# 5564 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yy_0_1_5;
yy yyv_D;
yy yy_1_1;
yy yyv_L;
yy yy_2_1;
yy yyv_Pos;
yy yy_3_1;
yy yyv_Stmt;
yy yy_4_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_2_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yy_4_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 7; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_L = yy_2_1;
yyv_Pos = yy_3_1;
yyv_Stmt = yy_4_1;
yy_0_1_1 = yyb + 6;
yy_0_1_1[0] = 15;
yy_0_1_2 = yyv_D;
yy_0_1_3 = yyv_L;
yy_0_1_4 = yyv_Stmt;
yy_0_1_5 = yyv_Pos;
yy_0_1 = yyb + 0;
yy_0_1[0] = 8;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yy_0_1[5] = ((long)yy_0_1_5);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 217:
# 5615 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yy_0_1_5;
yy yyv_S;
yy yy_1_1;
yy yyv_D;
yy yy_2_1;
yy yyv_Pc;
yy yy_4_1;
yy yyv_Pos;
yy yy_5_1;
yy yyv_Stmt;
yy yy_6_1;
yy_1_1 = (yy)(yyvsp[-5].attr[1]);
yy_2_1 = (yy)(yyvsp[-4].attr[1]);
yy_4_1 = (yy)(yyvsp[-2].attr[1]);
yy_5_1 = (yy)(yyvsp[-1].attr[1]);
yy_6_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_S = yy_1_1;
yyv_D = yy_2_1;
yyv_Pc = yy_4_1;
yyv_Pos = yy_5_1;
yyv_Stmt = yy_6_1;
yy_0_1_1 = yyv_S;
yy_0_1_2 = yyv_D;
yy_0_1_3 = yyv_Stmt;
yy_0_1_4 = yyv_Pos;
yy_0_1_5 = yyv_Pc;
yy_0_1 = yyb + 0;
yy_0_1[0] = 159;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yy_0_1[5] = ((long)yy_0_1_5);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-5].attr[0];
}
break;
case 218:
# 5668 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yy_0_1_5;
yy yyv_D;
yy yy_1_1;
yy yyv_Pc;
yy yy_3_1;
yy yyv_Pos;
yy yy_4_1;
yy yyv_Stmt;
yy yy_5_1;
yy_1_1 = (yy)(yyvsp[-4].attr[1]);
yy_3_1 = (yy)(yyvsp[-2].attr[1]);
yy_4_1 = (yy)(yyvsp[-1].attr[1]);
yy_5_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 7; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_Pc = yy_3_1;
yyv_Pos = yy_4_1;
yyv_Stmt = yy_5_1;
yy_0_1_1 = yyb + 6;
yy_0_1_1[0] = 15;
yy_0_1_2 = yyv_D;
yy_0_1_3 = yyv_Stmt;
yy_0_1_4 = yyv_Pos;
yy_0_1_5 = yyv_Pc;
yy_0_1 = yyb + 0;
yy_0_1[0] = 159;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yy_0_1[5] = ((long)yy_0_1_5);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 219:
# 5714 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_D = yy_1_1;
yy_0_1 = yyv_D;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 220:
# 5731 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_LeftPointCut;
yy yy_1_1;
yy yyv_RightPointCut;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_LeftPointCut = yy_1_1;
yyv_RightPointCut = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 23;
yy_0_1_2 = yyv_LeftPointCut;
yy_0_1_3 = yyv_RightPointCut;
yy_0_1 = yyb + 0;
yy_0_1[0] = 146;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 221:
# 5763 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_D = yy_1_1;
yy_0_1 = yyv_D;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 222:
# 5780 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_LeftPointCut;
yy yy_1_1;
yy yyv_RightPointCut;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_LeftPointCut = yy_1_1;
yyv_RightPointCut = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 22;
yy_0_1_2 = yyv_LeftPointCut;
yy_0_1_3 = yyv_RightPointCut;
yy_0_1 = yyb + 0;
yy_0_1[0] = 146;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 223:
# 5812 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_D = yy_1_1;
yy_0_1 = yyv_D;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 224:
# 5828 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_PointCut;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_PointCut = yy_2_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 44;
yy_0_1_2 = yyv_PointCut;
yy_0_1 = yyb + 0;
yy_0_1[0] = 145;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 225:
# 5856 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Id;
yy yy_1_1;
yy yyv_F;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_F = yy_3_1;
yy_0_1_1 = yyv_Id;
yy_0_1_2 = yyv_F;
yy_0_1 = yyb + 0;
yy_0_1[0] = 147;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 226:
# 5887 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Id;
yy yy_1_1;
yy yyv_ArgList;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_ArgList = yy_3_1;
yy_0_1_1 = yyv_Id;
yy_0_1_2 = yyv_ArgList;
yy_0_1 = yyb + 0;
yy_0_1[0] = 147;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 227:
# 5919 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_2_2;
yy yyv_Id;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy yyv_Name;
yy yy_4_1;
yy_1_1 = (yy)(yyvsp[-4].attr[1]);
yy_3_1 = (yy)(yyvsp[-2].attr[1]);
yy_4_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_T = yy_3_1;
yyv_Name = yy_4_1;
yy_0_1_1 = yyv_Id;
yy_0_1_2_1 = yyv_T;
yy_0_1_2_2 = yyv_Name;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 5;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_2[2] = ((long)yy_0_1_2_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 147;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 228:
# 5960 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yy_0_1_1 = yyv_Id;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 153;
yy_0_1 = yyb + 0;
yy_0_1[0] = 147;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 229:
# 5988 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yyv_Id;
yy yy_1_1;
yy yyv_S;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_S = yy_3_1;
yy_0_1_1 = yyv_Id;
yy_0_1_2_1 = yyv_S;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 149;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1 = yyb + 0;
yy_0_1[0] = 147;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 230:
# 6022 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_D;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[-1].attr[1]);
yyv_D = yy_2_1;
yy_0_1 = yyv_D;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 231:
# 6040 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Id;
yy yy_1_1;
yy yyv_D;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_D = yy_3_1;
yy_0_1_1 = yyv_Id;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 148;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 232:
# 6068 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 7;
yy_0_1_2 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 6;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 233:
# 6095 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_Id;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_Id = yy_3_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 6;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 234:
# 6127 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_S;
yy yy_1_1;
yy yyv_Ident;
yy yy_2_1;
yy yyv_D;
yy yy_4_1;
yy_1_1 = (yy)(yyvsp[-4].attr[1]);
yy_2_1 = (yy)(yyvsp[-3].attr[1]);
yy_4_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_S = yy_1_1;
yyv_Ident = yy_2_1;
yyv_D = yy_4_1;
yy_0_1_1 = yyv_S;
yy_0_1_2 = yyv_Ident;
yy_0_1_3 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 150;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 235:
# 6165 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_S;
yy yy_1_1;
yy yyv_Ident;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_2_1 = (yy)(yyvsp[-2].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_S = yy_1_1;
yyv_Ident = yy_2_1;
yy_0_1_1 = yyv_S;
yy_0_1_2 = yyv_Ident;
yy_0_1_3 = yyb + 4;
yy_0_1_3[0] = 153;
yy_0_1 = yyb + 0;
yy_0_1[0] = 150;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 236:
# 6197 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 153;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 151;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 237:
# 6224 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_D;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_D = yy_3_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 151;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 238:
# 6252 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 153;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 152;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 239:
# 6279 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_D;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_D = yy_3_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 152;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 240:
# 6308 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_Abstdecl;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_Abstdecl = yy_2_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_Abstdecl;
yy_0_1 = yyb + 0;
yy_0_1[0] = 154;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 241:
# 6336 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yy_0_1_2_2;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 8; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 156;
yy_0_1_2_1 = yyv_Id;
yy_0_1_2_2 = yyb + 7;
yy_0_1_2_2[0] = 48;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 33;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1_2[2] = ((long)yy_0_1_2_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 154;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 242:
# 6369 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 156;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 108;
yy_0_1 = yyb + 0;
yy_0_1[0] = 154;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 243:
# 6392 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 156;
yy_0_1_2_1 = yyv_Id;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 157;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1 = yyb + 0;
yy_0_1[0] = 154;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 244:
# 6422 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_2_1;
yy yyv_Id;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_Id = yy_2_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 156;
yy_0_1_2_1 = yyv_Id;
yy_0_1_2 = yyb + 4;
yy_0_1_2[0] = 158;
yy_0_1_2[1] = ((long)yy_0_1_2_1);
yy_0_1 = yyb + 0;
yy_0_1[0] = 154;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 245:
# 6451 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_Stmt;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_Stmt = yy_1_1;
yy_0_1 = yyv_Stmt;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 246:
# 6466 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_Stmt;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_Stmt = yy_1_1;
yy_0_1 = yyv_Stmt;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 247:
# 6481 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_Stmt;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_Stmt = yy_1_1;
yy_0_1 = yyv_Stmt;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 248:
# 6496 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_Stmt;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_Stmt = yy_1_1;
yy_0_1 = yyv_Stmt;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 249:
# 6511 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_Stmt;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_Stmt = yy_1_1;
yy_0_1 = yyv_Stmt;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 250:
# 6526 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_Stmt;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_Stmt = yy_1_1;
yy_0_1 = yyv_Stmt;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 251:
# 6541 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_Stmt;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_Stmt = yy_1_1;
yy_0_1 = yyv_Stmt;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 252:
# 6556 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 253:
# 6573 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 18;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 254:
# 6607 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_D;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_D = yy_2_1;
yy_0_1_1 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 114;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 255:
# 6631 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy yyv_E;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_E = yy_3_1;
yy_0_1_1 = yyv_D;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 115;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 256:
# 6662 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy yyv_L;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_L = yy_3_1;
yy_0_1_1 = yyv_D;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 116;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 257:
# 6692 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_L = yy_2_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 113;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 116;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 258:
# 6717 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 41;
yy_0_1 = yyb + 0;
yy_0_1[0] = 39;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 259:
# 6735 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 42;
yy_0_1 = yyb + 0;
yy_0_1[0] = 39;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 260:
# 6753 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 43;
yy_0_1 = yyb + 0;
yy_0_1[0] = 39;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 261:
# 6771 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 44;
yy_0_1 = yyb + 0;
yy_0_1[0] = 39;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 262:
# 6789 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 45;
yy_0_1 = yyb + 0;
yy_0_1[0] = 39;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 263:
# 6807 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 264:
# 6824 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 23;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 265:
# 6856 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 266:
# 6873 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 22;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 267:
# 6909 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_T;
yy yy_1_1;
yy yyv_Tag;
yy yy_2_1;
yy yyv_L;
yy yy_4_1;
yy_1_1 = (yy)(yyvsp[-4].attr[1]);
yy_2_1 = (yy)(yyvsp[-3].attr[1]);
yy_4_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_T = yy_1_1;
yyv_Tag = yy_2_1;
yyv_L = yy_4_1;
yy_0_1_1 = yyv_T;
yy_0_1_2 = yyv_Tag;
yy_0_1_3 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 137;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 268:
# 6949 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_T;
yy yy_1_1;
yy yyv_Tag;
yy yy_2_1;
yy yyv_L;
yy yy_4_1;
yy_1_1 = (yy)(yyvsp[-5].attr[1]);
yy_2_1 = (yy)(yyvsp[-4].attr[1]);
yy_4_1 = (yy)(yyvsp[-2].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_T = yy_1_1;
yyv_Tag = yy_2_1;
yyv_L = yy_4_1;
yy_0_1_1 = yyv_T;
yy_0_1_2 = yyv_Tag;
yy_0_1_3 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 137;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-5].attr[0];
}
break;
case 269:
# 6985 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_T;
yy yy_1_1;
yy yyv_Id;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_T = yy_1_1;
yyv_Id = yy_2_1;
yy_0_1_1 = yyv_T;
yy_0_1_2 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 138;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 270:
# 7014 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_G;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_G = yy_2_1;
yy_0_1_1 = yyv_G;
yy_0_1 = yyb + 0;
yy_0_1[0] = 139;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 271:
# 7035 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yy_0_1_1 = yyv_Id;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 48;
yy_0_1 = yyb + 0;
yy_0_1[0] = 33;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 272:
# 7062 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_D;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_D = yy_2_1;
yy_0_1_1 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 34;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 273:
# 7086 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_1_1;
yy yy_0_1_1_2;
yy yyv_ATTR;
yy yy_2_1;
yy yyv_D;
yy yy_3_1;
yy_2_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_ATTR = yy_2_1;
yyv_D = yy_3_1;
yy_0_1_1_1 = yyv_ATTR;
yy_0_1_1_2 = yyv_D;
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 21;
yy_0_1_1[1] = ((long)yy_0_1_1_1);
yy_0_1_1[2] = ((long)yy_0_1_1_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 34;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 274:
# 7121 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy yyv_E;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_E = yy_3_1;
yy_0_1_1 = yyv_D;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 35;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 275:
# 7152 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyv_D;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 14;
yy_0_1 = yyb + 0;
yy_0_1[0] = 35;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 276:
# 7181 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_D;
yy yy_1_1;
yy yyv_P;
yy yy_4_1;
yy_1_1 = (yy)(yyvsp[-4].attr[1]);
yy_4_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_P = yy_4_1;
yy_0_1_1 = yyv_D;
yy_0_1_2 = yyv_P;
yy_0_1_3 = yyb + 4;
yy_0_1_3[0] = 48;
yy_0_1 = yyb + 0;
yy_0_1[0] = 36;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 277:
# 7217 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy yyv_I;
yy yy_4_1;
yy_1_1 = (yy)(yyvsp[-4].attr[1]);
yy_4_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_I = yy_4_1;
yy_0_1_1 = yyv_D;
yy_0_1_2 = yyv_I;
yy_0_1 = yyb + 0;
yy_0_1[0] = 37;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 278:
# 7244 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 48;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 279:
# 7258 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 66;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 280:
# 7279 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 48;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 65;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 281:
# 7305 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_D;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_D = yy_2_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 65;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 282:
# 7338 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_L;
yy yy_4_1;
yy_4_1 = (yy)(yyvsp[-2].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_L = yy_4_1;
yy_0_1_1 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 49;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-5].attr[0];
}
break;
case 283:
# 7364 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_L;
yy yy_4_1;
yy_4_1 = (yy)(yyvsp[-2].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_L = yy_4_1;
yy_0_1_1 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 50;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-5].attr[0];
}
break;
case 284:
# 7385 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 52;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 51;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 285:
# 7412 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_D;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_D = yy_3_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 51;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 286:
# 7440 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yy_0_1_1 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 53;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 287:
# 7461 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 97;
yy_0_1 = yyb + 0;
yy_0_1[0] = 54;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 288:
# 7479 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 92;
yy_0_1 = yyb + 0;
yy_0_1[0] = 54;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 289:
# 7500 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Id;
yy yy_1_1;
yy yyv_L;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_L = yy_3_1;
yy_0_1_1 = yyv_Id;
yy_0_1_2 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 55;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 290:
# 7529 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy yyv_G;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_G = yy_2_1;
yy_0_1_1 = yyv_D;
yy_0_1_2 = yyv_G;
yy_0_1 = yyb + 0;
yy_0_1[0] = 38;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 291:
# 7557 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yy_0_1_1 = yyv_Id;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 48;
yy_0_1 = yyb + 0;
yy_0_1[0] = 33;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 292:
# 7584 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_D;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_D = yy_2_1;
yy_0_1_1 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 34;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 293:
# 7608 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_1_1;
yy yy_0_1_1_2;
yy yyv_ATTR;
yy yy_2_1;
yy yyv_D;
yy yy_3_1;
yy_2_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_ATTR = yy_2_1;
yyv_D = yy_3_1;
yy_0_1_1_1 = yyv_ATTR;
yy_0_1_1_2 = yyv_D;
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 21;
yy_0_1_1[1] = ((long)yy_0_1_1_1);
yy_0_1_1[2] = ((long)yy_0_1_1_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 34;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 294:
# 7643 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy yyv_E;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_E = yy_3_1;
yy_0_1_1 = yyv_D;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 35;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 295:
# 7674 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_D;
yy yy_1_1;
yy yyv_P;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_P = yy_3_1;
yy_0_1_1 = yyv_D;
yy_0_1_2 = yyv_P;
yy_0_1_3 = yyb + 4;
yy_0_1_3[0] = 48;
yy_0_1 = yyb + 0;
yy_0_1[0] = 36;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 296:
# 7709 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy yyv_I;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_I = yy_3_1;
yy_0_1_1 = yyv_D;
yy_0_1_2 = yyv_I;
yy_0_1 = yyb + 0;
yy_0_1[0] = 37;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 297:
# 7737 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_E = yy_1_1;
yy_0_1_1 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 98;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 298:
# 7760 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_L;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_L = yy_2_1;
yy_0_1_1 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 99;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 299:
# 7784 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_L;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[-2].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_L = yy_2_1;
yy_0_1_1 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 100;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 300:
# 7806 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 102;
yy_0_1 = yyb + 0;
yy_0_1[0] = 99;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 301:
# 7824 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 26;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 302:
# 7847 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy yyv_I;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_I = yy_3_1;
yy_0_1_1 = yyv_D;
yy_0_1_2 = yyv_I;
yy_0_1 = yyb + 0;
yy_0_1[0] = 20;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 303:
# 7876 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_D;
yy yy_1_1;
yy yyv_G;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yyv_G = yy_2_1;
yy_0_1_1 = yyv_D;
yy_0_1_2 = yyv_G;
yy_0_1 = yyb + 0;
yy_0_1[0] = 22;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 304:
# 7904 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_L;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_L = yy_1_1;
yy_0_1 = yyv_L;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 305:
# 7918 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 24;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 306:
# 7932 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_S;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_S = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 24;
yy_0_1_2 = yyv_S;
yy_0_1 = yyb + 0;
yy_0_1[0] = 25;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 307:
# 7958 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_S;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_S = yy_2_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_S;
yy_0_1 = yyb + 0;
yy_0_1[0] = 25;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 308:
# 7986 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_Attr;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_Attr = yy_1_1;
yy_0_1 = yyv_Attr;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 309:
# 8001 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_Asm;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_Asm = yy_1_1;
yy_0_1 = yyv_Asm;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 310:
# 8016 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 311:
# 8033 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 19;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 312:
# 8068 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_Id;
yy yy_1_1;
yy yyv_D;
yy yy_3_1;
yy yyv_Stmt;
yy yy_4_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yy_4_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_D = yy_3_1;
yyv_Stmt = yy_4_1;
yy_0_1_1 = yyv_Id;
yy_0_1_2 = yyv_D;
yy_0_1_3 = yyv_Stmt;
yy_0_1 = yyb + 0;
yy_0_1[0] = 7;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 313:
# 8106 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E;
yy yy_2_1;
yy yyv_Stmt;
yy yy_4_1;
yy_2_1 = (yy)(yyvsp[-2].attr[1]);
yy_4_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_E = yy_2_1;
yyv_Stmt = yy_4_1;
yy_0_1_1 = yyv_E;
yy_0_1_2 = yyv_Stmt;
yy_0_1 = yyb + 0;
yy_0_1[0] = 8;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 314:
# 8136 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Stmt;
yy yy_3_1;
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_Stmt = yy_3_1;
yy_0_1_1 = yyv_Stmt;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 315:
# 8157 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Id;
yy yy_1_1;
yy yy_2_1;
yy yy_2_2;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yy_2_1 = yyv_Id;
yy_2_2 = yyb + 2;
yy_2_2[0] = 1;
patch_symbol_class(yy_2_1, yy_2_2);
yy_0_1_1 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 142;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 316:
# 8186 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Id;
yy yy_1_1;
yy yyv_E;
yy yy_3_1;
yy yy_4_1;
yy yy_4_2;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yyv_E = yy_3_1;
yy_4_1 = yyv_Id;
yy_4_2 = yyb + 3;
yy_4_2[0] = 1;
patch_symbol_class(yy_4_1, yy_4_2);
yy_0_1_1 = yyv_Id;
yy_0_1_2 = yyv_E;
yy_0_1 = yyb + 0;
yy_0_1[0] = 143;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 317:
# 8220 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 318:
# 8237 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 6;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 319:
# 8271 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 7;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 320:
# 8303 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 321:
# 8320 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyv_E1;
yy_0_1_2 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 11;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 322:
# 8348 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 323:
# 8365 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 11;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 324:
# 8399 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E1;
yy yy_1_1;
yy yyv_E2;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_E1 = yy_1_1;
yyv_E2 = yy_3_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 12;
yy_0_1_2 = yyv_E1;
yy_0_1_3 = yyv_E2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 9;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 325:
# 8435 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E;
yy yy_3_1;
yy yyv_Stmt;
yy yy_5_1;
yy_3_1 = (yy)(yyvsp[-2].attr[1]);
yy_5_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_E = yy_3_1;
yyv_Stmt = yy_5_1;
yy_0_1_1 = yyv_E;
yy_0_1_2 = yyv_Stmt;
yy_0_1 = yyb + 0;
yy_0_1[0] = 10;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 326:
# 8469 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_E;
yy yy_3_1;
yy yyv_Stmt1;
yy yy_5_1;
yy yyv_Stmt2;
yy yy_7_1;
yy_3_1 = (yy)(yyvsp[-4].attr[1]);
yy_5_1 = (yy)(yyvsp[-2].attr[1]);
yy_7_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_E = yy_3_1;
yyv_Stmt1 = yy_5_1;
yyv_Stmt2 = yy_7_1;
yy_0_1_1 = yyv_E;
yy_0_1_2 = yyv_Stmt1;
yy_0_1_3 = yyv_Stmt2;
yy_0_1 = yyb + 0;
yy_0_1[0] = 11;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-6].attr[0];
}
break;
case 327:
# 8508 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_E;
yy yy_3_1;
yy yyv_Stmt;
yy yy_5_1;
yy_3_1 = (yy)(yyvsp[-2].attr[1]);
yy_5_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_E = yy_3_1;
yyv_Stmt = yy_5_1;
yy_0_1_1 = yyv_E;
yy_0_1_2 = yyv_Stmt;
yy_0_1 = yyb + 0;
yy_0_1[0] = 12;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 328:
# 8540 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yy_0_1_4;
yy yyv_Indicator;
yy yy_1_1;
yy yyv_Tag;
yy yy_2_1;
yy yyv_L;
yy yy_4_1;
yy_1_1 = (yy)(yyvsp[-4].attr[1]);
yy_2_1 = (yy)(yyvsp[-3].attr[1]);
yy_4_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 6; if (yyh > yyhx) yyExtend();
yyv_Indicator = yy_1_1;
yyv_Tag = yy_2_1;
yyv_L = yy_4_1;
yy_0_1_1 = yyb + 5;
yy_0_1_1[0] = 46;
yy_0_1_2 = yyv_Indicator;
yy_0_1_3 = yyv_Tag;
yy_0_1_4 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 117;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yy_0_1[4] = ((long)yy_0_1_4);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-4].attr[0];
}
break;
case 329:
# 8580 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_Indicator;
yy yy_1_1;
yy yyv_Id;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_Indicator = yy_1_1;
yyv_Id = yy_2_1;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 46;
yy_0_1_2 = yyv_Indicator;
yy_0_1_3 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 118;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 330:
# 8615 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_L;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[-2].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_L = yy_2_1;
yy_0_1_1 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 5;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 331:
# 8635 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 18;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 332:
# 8649 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_L;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_L = yy_1_1;
yy_0_1 = yyv_L;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 333:
# 8664 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_D;
yy yy_1_1;
yy yy_2_1;
yy yyv_Line;
yy yy_2_2;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_2_1 = ((yy)1);
get_current_pos(yy_2_1, &yy_2_2);
yyv_Line = yy_2_2;
yy_0_1_1 = yyb + 4;
yy_0_1_1[0] = 18;
yy_0_1_2 = yyv_D;
yy_0_1_3 = yyv_Line;
yy_0_1 = yyb + 0;
yy_0_1[0] = 19;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 334:
# 8700 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yy_0_1_3;
yy yyv_List;
yy yy_1_1;
yy yyv_Line;
yy yy_2_1;
yy yyv_D;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_2_1 = (yy)(yyvsp[-1].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_List = yy_1_1;
yyv_Line = yy_2_1;
yyv_D = yy_3_1;
yy_0_1_1 = yyv_List;
yy_0_1_2 = yyv_D;
yy_0_1_3 = yyv_Line;
yy_0_1 = yyb + 0;
yy_0_1[0] = 19;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yy_0_1[3] = ((long)yy_0_1_3);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 335:
# 8735 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_D = yy_1_1;
yy_0_1_1 = yyv_D;
yy_0_1 = yyb + 0;
yy_0_1[0] = 20;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 336:
# 8756 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Stmt;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_Stmt = yy_1_1;
yy_0_1_1 = yyv_Stmt;
yy_0_1 = yyb + 0;
yy_0_1[0] = 21;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 337:
# 8780 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_L;
yy yy_3_1;
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_L = yy_3_1;
leave_patch_scope();
yy_0_1_1 = yyv_L;
yy_0_1 = yyb + 0;
yy_0_1[0] = 6;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 338:
# 8802 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 107;
yy_0_1 = yyb + 0;
yy_0_1[0] = 104;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 339:
# 8829 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyb + 3;
yy_0_1_2[0] = 108;
yy_0_1 = yyb + 0;
yy_0_1[0] = 104;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 340:
# 8855 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_G;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_G = yy_2_1;
yy_0_1_1 = yyv_G;
yy_0_1 = yyb + 0;
yy_0_1[0] = 121;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 341:
# 8877 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_G;
yy yy_2_1;
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_G = yy_2_1;
yy_0_1_1 = yyv_G;
yy_0_1 = yyb + 0;
yy_0_1[0] = 122;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 342:
# 8898 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Q;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Q = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 134;
yy_0_1_2 = yyv_Q;
yy_0_1 = yyb + 0;
yy_0_1[0] = 133;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 343:
# 8923 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_G;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_G = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 134;
yy_0_1_2 = yyv_G;
yy_0_1 = yyb + 0;
yy_0_1[0] = 133;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 344:
# 8949 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_Q;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_Q = yy_2_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_Q;
yy_0_1 = yyb + 0;
yy_0_1[0] = 133;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 345:
# 8978 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_G;
yy yy_2_1;
yy_1_1 = (yy)(yyvsp[-1].attr[1]);
yy_2_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_G = yy_2_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_G;
yy_0_1 = yyb + 0;
yy_0_1[0] = 133;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-1].attr[0];
}
break;
case 346:
# 9006 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yy_0_1_1 = yyb + 3;
yy_0_1_1[0] = 28;
yy_0_1_2 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 27;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 347:
# 9033 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_2;
yy yyv_L;
yy yy_1_1;
yy yyv_Id;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-2].attr[1]);
yy_3_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yyv_L = yy_1_1;
yyv_Id = yy_3_1;
yy_0_1_1 = yyv_L;
yy_0_1_2 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 27;
yy_0_1[1] = ((long)yy_0_1_1);
yy_0_1[2] = ((long)yy_0_1_2);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-2].attr[0];
}
break;
case 348:
# 9061 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_D = yy_1_1;
yy_0_1 = yyv_D;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 349:
# 9076 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_1_1;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 4; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yy_0_1_1_1 = yyv_Id;
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 86;
yy_0_1_1[1] = ((long)yy_0_1_1_1);
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 350:
# 9101 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 68;
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 351:
# 9119 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 69;
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 352:
# 9137 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 70;
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 353:
# 9155 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 71;
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 354:
# 9173 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 72;
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 355:
# 9191 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 73;
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 356:
# 9209 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 74;
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 357:
# 9227 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 75;
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 358:
# 9245 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 76;
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 359:
# 9263 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 77;
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 360:
# 9281 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 78;
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 361:
# 9299 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 85;
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 362:
# 9317 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 79;
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 363:
# 9335 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_S;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_S = yy_1_1;
yy_0_1_1 = yyv_S;
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 364:
# 9356 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_S;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_S = yy_1_1;
yy_0_1_1 = yyv_S;
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 365:
# 9380 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_1_1;
yy yy_0_1_1_2;
yy yyv_Op;
yy yy_1_1;
yy yyv_E;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 5; if (yyh > yyhx) yyExtend();
yyv_Op = yy_1_1;
yyv_E = yy_3_1;
yy_0_1_1_1 = yyv_Op;
yy_0_1_1_2 = yyv_E;
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 88;
yy_0_1_1[1] = ((long)yy_0_1_1_1);
yy_0_1_1[2] = ((long)yy_0_1_1_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 366:
# 9415 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yy_0_1_1_1;
yy yy_0_1_1_2;
yy yy_0_1_1_2_1;
yy yyv_Op;
yy yy_1_1;
yy yyv_T;
yy yy_3_1;
yy_1_1 = (yy)(yyvsp[-3].attr[1]);
yy_3_1 = (yy)(yyvsp[-1].attr[1]);
yyb = yyh;
yyh += 7; if (yyh > yyhx) yyExtend();
yyv_Op = yy_1_1;
yyv_T = yy_3_1;
yy_0_1_1_1 = yyv_Op;
yy_0_1_1_2_1 = yyv_T;
yy_0_1_1_2 = yyb + 5;
yy_0_1_1_2[0] = 3;
yy_0_1_1_2[1] = ((long)yy_0_1_1_2_1);
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 88;
yy_0_1_1[1] = ((long)yy_0_1_1_1);
yy_0_1_1[2] = ((long)yy_0_1_1_2);
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[-3].attr[0];
}
break;
case 367:
# 9451 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yyb = yyh;
yyh += 3; if (yyh > yyhx) yyExtend();
yy_0_1_1 = yyb + 2;
yy_0_1_1[0] = 80;
yy_0_1 = yyb + 0;
yy_0_1[0] = 67;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 368:
# 9469 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 89;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 369:
# 9483 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 91;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 370:
# 9497 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 90;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 371:
# 9511 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 372:
# 9525 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 13;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 373:
# 9539 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_D = yy_1_1;
yy_0_1 = yyv_D;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 374:
# 9553 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 112;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 375:
# 9567 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_L;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_L = yy_1_1;
yy_0_1 = yyv_L;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 376:
# 9581 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 377:
# 9595 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_D = yy_1_1;
yy_0_1 = yyv_D;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 378:
# 9609 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 30;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 379:
# 9623 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_0_1_1;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyb = yyh;
yyh += 2; if (yyh > yyhx) yyExtend();
yyv_Id = yy_1_1;
yy_0_1_1 = yyv_Id;
yy_0_1 = yyb + 0;
yy_0_1[0] = 1;
yy_0_1[1] = ((long)yy_0_1_1);
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 380:
# 9643 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 2;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 381:
# 9657 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_D = yy_1_1;
yy_0_1 = yyv_D;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 382:
# 9671 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 15;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 383:
# 9685 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_E;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_E = yy_1_1;
yy_0_1 = yyv_E;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 384:
# 9699 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 13;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 385:
# 9713 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_L;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_L = yy_1_1;
yy_0_1 = yyv_L;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 386:
# 9727 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 19;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 387:
# 9741 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_D;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_D = yy_1_1;
yy_0_1 = yyv_D;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 388:
# 9755 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 113;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 389:
# 9769 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_L;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_L = yy_1_1;
yy_0_1 = yyv_L;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 390:
# 9783 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 103;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 391:
# 9797 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_L;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_L = yy_1_1;
yy_0_1 = yyv_L;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 392:
# 9811 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 134;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 393:
# 9825 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_L;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_L = yy_1_1;
yy_0_1 = yyv_L;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 394:
# 9839 "gen.y"
 {
yy yyb;
yy yy_0_1;
yyb = yyh;
yyh += 1; if (yyh > yyhx) yyExtend();
yy_0_1 = yyb + 0;
yy_0_1[0] = 28;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 395:
# 9853 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_Id = yy_1_1;
yy_0_1 = yyv_Id;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 396:
# 9868 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_Id = yy_1_1;
yy_0_1 = yyv_Id;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 397:
# 9883 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yyv_Id;
yy yy_1_1;
yy_1_1 = (yy)(yyvsp[0].attr[1]);
yyv_Id = yy_1_1;
yy_0_1 = yyv_Id;
yyval.attr[1] = ((long)yy_0_1);
yyval.attr[0] = yyvsp[0].attr[0];
}
break;
case 398:
# 9897 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_1_1;
yy yyv_P;
yy yy_1_2;
yy_1_1 = ((yy)1);
get_current_pos(yy_1_1, &yy_1_2);
yyv_P = yy_1_2;
yy_0_1 = yyv_P;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 399:
# 9913 "gen.y"
 {
yy yyb;
enter_patch_scope();
yyGetPos(&yyval.attr[0]);
}
break;
case 400:
# 9921 "gen.y"
 {
yy yyb;
leave_patch_scope();
yyGetPos(&yyval.attr[0]);
}
break;
case 401:
# 9929 "gen.y"
 {
yy yyb;
init_patch_stack();
yyGetPos(&yyval.attr[0]);
}
break;
case 402:
# 9937 "gen.y"
 {
yy yyb;
yy yy_0_1;
yy yy_1_1;
yy yyv_N;
yy yy_1_2;
yy_1_1 = ((yy)1);
get_current_pos(yy_1_1, &yy_1_2);
yyv_N = yy_1_2;
yy_0_1 = yyv_N;
yyval.attr[1] = ((long)yy_0_1);
yyGetPos(&yyval.attr[0]);
}
break;
case 403:
# 9953 "gen.y"
 {
yy yyb;
yy yy_1_1;
yy yyv_Line;
yy yy_1_2;
yy yy_2_1;
yy_1_1 = ((yy)0);
get_current_pos(yy_1_1, &yy_1_2);
yyv_Line = yy_1_2;
yy_2_1 = yyv_Line;
PUTVarLine(yy_2_1);
InitDefTab();
yyGetPos(&yyval.attr[0]);
}
break;
# 11091 "y.tab.c"
    }
    yyssp -= yym;
    yystate = *yyssp;
    yyvsp -= yym;
    yym = yylhs[yyn];
    if (yystate == 0 && yym == 0)
    {





        yystate = 1;
        *++yyssp = 1;
        *++yyvsp = yyval;
        if (yychar < 0)
        {
            if ((yychar = yylex()) < 0) yychar = 0;
# 11119 "y.tab.c"
        }
        if (yychar == 0) goto yyaccept;
        goto yyloop;
    }
    if ((yyn = yygindex[yym]) && (yyn += yystate) >= 0 &&
            yyn <= 4502 && yycheck[yyn] == yystate)
        yystate = yytable[yyn];
    else
        yystate = yydgoto[yym];





    if (yyssp >= yysslim && yygrowstack())
    {
        goto yyoverflow;
    }
    *++yyssp = (short) yystate;
    *++yyvsp = yyval;
    goto yyloop;

yyoverflow:
    yyerror("yacc stack overflow");

yyabort:
    return (1);

yyaccept:
    return (0);
}
