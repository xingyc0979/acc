# 1 "/home/sd/ACC_v09/ACC/src/lexer.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "/home/sd/ACC_v09/ACC/src/lexer.c"
# 15 "/home/sd/ACC_v09/ACC/src/lexer.c"
# 1 "/home/sd/ACC_v09/ACC/src/gen.h" 1
typedef struct {long attr[2];} yyATTRIBUTES;

extern yyATTRIBUTES yylval;
# 16 "/home/sd/ACC_v09/ACC/src/lexer.c" 2
# 1 "/home/sd/ACC_v09/ACC/src/lexer.h" 1
# 19 "/home/sd/ACC_v09/ACC/src/lexer.h"
typedef struct IdentRec *Ident;

struct IdentRec
{
   char *firstposptr;
   long length;
   long symbol_class;
   long meaning;
   long tagmeaning;
   Ident next;
} ;

struct file_pos_chain {
        unsigned long fpos;
        struct file_pos_chain * next;
};

struct file_chain {
        char * name;
        char * mappedName;
        char * level;
        char returnAble;
        struct file_pos_chain * preFilePos;
        struct file_chain *next;
};


extern long SYM;
extern long CurCol;
extern long CurLine;
extern Ident CurId;
extern char CurChar;
extern long CurNumber;
extern double CurFloat;
void addMapFileName(char * mapOption);
struct file_chain * number_to_file(unsigned long n) ;
char *number_to_name (unsigned long);
char *number_to_level (unsigned long);
# 17 "/home/sd/ACC_v09/ACC/src/lexer.c" 2

# 1 "/usr/include/stdio.h" 1 3 4
# 27 "/usr/include/stdio.h" 3 4
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
# 28 "/usr/include/stdio.h" 2 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
# 209 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4

# 209 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 3 4
typedef long unsigned int size_t;
# 34 "/usr/include/stdio.h" 2 3 4


# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 37 "/usr/include/stdio.h" 2 3 4

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
# 39 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h" 1 3 4




# 1 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h" 1 3 4
# 13 "/usr/include/x86_64-linux-gnu/bits/types/__mbstate_t.h" 3 4
typedef struct
{
  int __count;
  union
  {
    unsigned int __wch;
    char __wchb[4];
  } __value;
} __mbstate_t;
# 6 "/usr/include/x86_64-linux-gnu/bits/types/__fpos_t.h" 2 3 4




typedef struct _G_fpos_t
{
  __off_t __pos;
  __mbstate_t __state;
} __fpos_t;
# 40 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h" 1 3 4
# 10 "/usr/include/x86_64-linux-gnu/bits/types/__fpos64_t.h" 3 4
typedef struct _G_fpos64_t
{
  __off64_t __pos;
  __mbstate_t __state;
} __fpos64_t;
# 41 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/__FILE.h" 1 3 4



struct _IO_FILE;
typedef struct _IO_FILE __FILE;
# 42 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/FILE.h" 1 3 4



struct _IO_FILE;


typedef struct _IO_FILE FILE;
# 43 "/usr/include/stdio.h" 2 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h" 1 3 4
# 35 "/usr/include/x86_64-linux-gnu/bits/types/struct_FILE.h" 3 4
struct _IO_FILE;
struct _IO_marker;
struct _IO_codecvt;
struct _IO_wide_data;




typedef void _IO_lock_t;





struct _IO_FILE
{
  int _flags;


  char *_IO_read_ptr;
  char *_IO_read_end;
  char *_IO_read_base;
  char *_IO_write_base;
  char *_IO_write_ptr;
  char *_IO_write_end;
  char *_IO_buf_base;
  char *_IO_buf_end;


  char *_IO_save_base;
  char *_IO_backup_base;
  char *_IO_save_end;

  struct _IO_marker *_markers;

  struct _IO_FILE *_chain;

  int _fileno;
  int _flags2;
  __off_t _old_offset;


  unsigned short _cur_column;
  signed char _vtable_offset;
  char _shortbuf[1];

  _IO_lock_t *_lock;







  __off64_t _offset;

  struct _IO_codecvt *_codecvt;
  struct _IO_wide_data *_wide_data;
  struct _IO_FILE *_freeres_list;
  void *_freeres_buf;
  size_t __pad5;
  int _mode;

  char _unused2[15 * sizeof (int) - 4 * sizeof (void *) - sizeof (size_t)];
};
# 44 "/usr/include/stdio.h" 2 3 4
# 52 "/usr/include/stdio.h" 3 4
typedef __gnuc_va_list va_list;
# 63 "/usr/include/stdio.h" 3 4
typedef __off_t off_t;
# 77 "/usr/include/stdio.h" 3 4
typedef __ssize_t ssize_t;






typedef __fpos_t fpos_t;
# 133 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/stdio_lim.h" 1 3 4
# 134 "/usr/include/stdio.h" 2 3 4



extern FILE *stdin;
extern FILE *stdout;
extern FILE *stderr;






extern int remove (const char *__filename) __attribute__ ((__nothrow__ , __leaf__));

extern int rename (const char *__old, const char *__new) __attribute__ ((__nothrow__ , __leaf__));



extern int renameat (int __oldfd, const char *__old, int __newfd,
       const char *__new) __attribute__ ((__nothrow__ , __leaf__));
# 173 "/usr/include/stdio.h" 3 4
extern FILE *tmpfile (void) ;
# 187 "/usr/include/stdio.h" 3 4
extern char *tmpnam (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;




extern char *tmpnam_r (char *__s) __attribute__ ((__nothrow__ , __leaf__)) ;
# 204 "/usr/include/stdio.h" 3 4
extern char *tempnam (const char *__dir, const char *__pfx)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__malloc__)) ;







extern int fclose (FILE *__stream);




extern int fflush (FILE *__stream);
# 227 "/usr/include/stdio.h" 3 4
extern int fflush_unlocked (FILE *__stream);
# 246 "/usr/include/stdio.h" 3 4
extern FILE *fopen (const char *__restrict __filename,
      const char *__restrict __modes) ;




extern FILE *freopen (const char *__restrict __filename,
        const char *__restrict __modes,
        FILE *__restrict __stream) ;
# 279 "/usr/include/stdio.h" 3 4
extern FILE *fdopen (int __fd, const char *__modes) __attribute__ ((__nothrow__ , __leaf__)) ;
# 292 "/usr/include/stdio.h" 3 4
extern FILE *fmemopen (void *__s, size_t __len, const char *__modes)
  __attribute__ ((__nothrow__ , __leaf__)) ;




extern FILE *open_memstream (char **__bufloc, size_t *__sizeloc) __attribute__ ((__nothrow__ , __leaf__)) ;





extern void setbuf (FILE *__restrict __stream, char *__restrict __buf) __attribute__ ((__nothrow__ , __leaf__));



extern int setvbuf (FILE *__restrict __stream, char *__restrict __buf,
      int __modes, size_t __n) __attribute__ ((__nothrow__ , __leaf__));




extern void setbuffer (FILE *__restrict __stream, char *__restrict __buf,
         size_t __size) __attribute__ ((__nothrow__ , __leaf__));


extern void setlinebuf (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));







extern int fprintf (FILE *__restrict __stream,
      const char *__restrict __format, ...);




extern int printf (const char *__restrict __format, ...);

extern int sprintf (char *__restrict __s,
      const char *__restrict __format, ...) __attribute__ ((__nothrow__));





extern int vfprintf (FILE *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg);




extern int vprintf (const char *__restrict __format, __gnuc_va_list __arg);

extern int vsprintf (char *__restrict __s, const char *__restrict __format,
       __gnuc_va_list __arg) __attribute__ ((__nothrow__));



extern int snprintf (char *__restrict __s, size_t __maxlen,
       const char *__restrict __format, ...)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 4)));

extern int vsnprintf (char *__restrict __s, size_t __maxlen,
        const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__)) __attribute__ ((__format__ (__printf__, 3, 0)));
# 379 "/usr/include/stdio.h" 3 4
extern int vdprintf (int __fd, const char *__restrict __fmt,
       __gnuc_va_list __arg)
     __attribute__ ((__format__ (__printf__, 2, 0)));
extern int dprintf (int __fd, const char *__restrict __fmt, ...)
     __attribute__ ((__format__ (__printf__, 2, 3)));







extern int fscanf (FILE *__restrict __stream,
     const char *__restrict __format, ...) ;




extern int scanf (const char *__restrict __format, ...) ;

extern int sscanf (const char *__restrict __s,
     const char *__restrict __format, ...) __attribute__ ((__nothrow__ , __leaf__));






extern int fscanf (FILE *__restrict __stream, const char *__restrict __format, ...) __asm__ ("" "__isoc99_fscanf")

                               ;
extern int scanf (const char *__restrict __format, ...) __asm__ ("" "__isoc99_scanf")
                              ;
extern int sscanf (const char *__restrict __s, const char *__restrict __format, ...) __asm__ ("" "__isoc99_sscanf") __attribute__ ((__nothrow__ , __leaf__))

                      ;
# 432 "/usr/include/stdio.h" 3 4
extern int vfscanf (FILE *__restrict __s, const char *__restrict __format,
      __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 2, 0))) ;





extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__format__ (__scanf__, 1, 0))) ;


extern int vsscanf (const char *__restrict __s,
      const char *__restrict __format, __gnuc_va_list __arg)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__format__ (__scanf__, 2, 0)));




extern int vfscanf (FILE *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vfscanf")



     __attribute__ ((__format__ (__scanf__, 2, 0))) ;
extern int vscanf (const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vscanf")

     __attribute__ ((__format__ (__scanf__, 1, 0))) ;
extern int vsscanf (const char *__restrict __s, const char *__restrict __format, __gnuc_va_list __arg) __asm__ ("" "__isoc99_vsscanf") __attribute__ ((__nothrow__ , __leaf__))



     __attribute__ ((__format__ (__scanf__, 2, 0)));
# 485 "/usr/include/stdio.h" 3 4
extern int fgetc (FILE *__stream);
extern int getc (FILE *__stream);





extern int getchar (void);






extern int getc_unlocked (FILE *__stream);
extern int getchar_unlocked (void);
# 510 "/usr/include/stdio.h" 3 4
extern int fgetc_unlocked (FILE *__stream);
# 521 "/usr/include/stdio.h" 3 4
extern int fputc (int __c, FILE *__stream);
extern int putc (int __c, FILE *__stream);





extern int putchar (int __c);
# 537 "/usr/include/stdio.h" 3 4
extern int fputc_unlocked (int __c, FILE *__stream);







extern int putc_unlocked (int __c, FILE *__stream);
extern int putchar_unlocked (int __c);






extern int getw (FILE *__stream);


extern int putw (int __w, FILE *__stream);







extern char *fgets (char *__restrict __s, int __n, FILE *__restrict __stream)
     ;
# 603 "/usr/include/stdio.h" 3 4
extern __ssize_t __getdelim (char **__restrict __lineptr,
                             size_t *__restrict __n, int __delimiter,
                             FILE *__restrict __stream) ;
extern __ssize_t getdelim (char **__restrict __lineptr,
                           size_t *__restrict __n, int __delimiter,
                           FILE *__restrict __stream) ;







extern __ssize_t getline (char **__restrict __lineptr,
                          size_t *__restrict __n,
                          FILE *__restrict __stream) ;







extern int fputs (const char *__restrict __s, FILE *__restrict __stream);





extern int puts (const char *__s);






extern int ungetc (int __c, FILE *__stream);






extern size_t fread (void *__restrict __ptr, size_t __size,
       size_t __n, FILE *__restrict __stream) ;




extern size_t fwrite (const void *__restrict __ptr, size_t __size,
        size_t __n, FILE *__restrict __s);
# 673 "/usr/include/stdio.h" 3 4
extern size_t fread_unlocked (void *__restrict __ptr, size_t __size,
         size_t __n, FILE *__restrict __stream) ;
extern size_t fwrite_unlocked (const void *__restrict __ptr, size_t __size,
          size_t __n, FILE *__restrict __stream);







extern int fseek (FILE *__stream, long int __off, int __whence);




extern long int ftell (FILE *__stream) ;




extern void rewind (FILE *__stream);
# 707 "/usr/include/stdio.h" 3 4
extern int fseeko (FILE *__stream, __off_t __off, int __whence);




extern __off_t ftello (FILE *__stream) ;
# 731 "/usr/include/stdio.h" 3 4
extern int fgetpos (FILE *__restrict __stream, fpos_t *__restrict __pos);




extern int fsetpos (FILE *__stream, const fpos_t *__pos);
# 757 "/usr/include/stdio.h" 3 4
extern void clearerr (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));

extern int feof (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;

extern int ferror (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;



extern void clearerr_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
extern int feof_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
extern int ferror_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;







extern void perror (const char *__s);





# 1 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 1 3 4
# 26 "/usr/include/x86_64-linux-gnu/bits/sys_errlist.h" 3 4
extern int sys_nerr;
extern const char *const sys_errlist[];
# 782 "/usr/include/stdio.h" 2 3 4




extern int fileno (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;




extern int fileno_unlocked (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;
# 800 "/usr/include/stdio.h" 3 4
extern FILE *popen (const char *__command, const char *__modes) ;





extern int pclose (FILE *__stream);





extern char *ctermid (char *__s) __attribute__ ((__nothrow__ , __leaf__));
# 840 "/usr/include/stdio.h" 3 4
extern void flockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));



extern int ftrylockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__)) ;


extern void funlockfile (FILE *__stream) __attribute__ ((__nothrow__ , __leaf__));
# 858 "/usr/include/stdio.h" 3 4
extern int __uflow (FILE *);
extern int __overflow (FILE *, int);
# 873 "/usr/include/stdio.h" 3 4

# 19 "/home/sd/ACC_v09/ACC/src/lexer.c" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 25 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 26 "/usr/include/stdlib.h" 2 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
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
# 97 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
typedef __pid_t pid_t;





typedef __id_t id_t;
# 114 "/usr/include/x86_64-linux-gnu/sys/types.h" 3 4
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

# 20 "/home/sd/ACC_v09/ACC/src/lexer.c" 2
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

# 21 "/home/sd/ACC_v09/ACC/src/lexer.c" 2
# 1 "/usr/include/assert.h" 1 3 4
# 66 "/usr/include/assert.h" 3 4



extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 22 "/home/sd/ACC_v09/ACC/src/lexer.c" 2
# 113 "/home/sd/ACC_v09/ACC/src/lexer.c"

# 113 "/home/sd/ACC_v09/ACC/src/lexer.c"
struct file_chain * first_file = 0;
struct file_chain * last_file = 0;



long SYM;
long preSYM;
long CurCol;
long CurLine;
unsigned long CurFileNo;
Ident CurId;
char CurChar;
char *CurString;
long CurNumber;
double *CurFloatPtr;
double CurFloat;

char *bufptr;
char *lastptr;
char *sentinelptr;
char *firstcolptr;
char buf [500002];

int IsLetgit [256];
int IsDigit [256];
int IsHexDigit [256];
int IsAlNum[256];
char idstringtab [500000];
char *idstringtab_ptr;
Ident HashTab [2048];
struct IdentRec idtab [50000];
long idnum;
double FloatTab [200];
char stringtab [500000];
char *stringtab_ptr;

char isWideChar;
unsigned long name_to_number();
unsigned long create_file_pos(unsigned long fileno, unsigned long lineno) ;
unsigned long create_new_file_pos(unsigned long fileno, unsigned long lineno);

extern char * copy_chars (char *);
# 169 "/home/sd/ACC_v09/ACC/src/lexer.c"
unsigned long preFilePos[50];
long lastPreFilePosIndex;

unsigned long totalFiles = 0 ;

FILE *stream;
char curr_token[32];
char *curr_token_p = curr_token;




int not_typedef_by_preToken(long preToken) {
  switch(preToken) {
  case 320 : case 357 : case 317: case 333 : case 339:
  case 327: case 352: case 325: case 322: case 330:
  case 347: case 345 : case 343: case 331: case 348:
  case 346 : case 344 : case 336: case 334 : case 338:
  case 337: case 332: case 340 : case 341: case 316:
  case 342 : case 356 : case 353 : case 328: case 349:
  case 354: case 329: case 358: case 350 : case 326:
  case 351:
  case 360: case 262 : case 263 : case 264 : case 265 : case 266 : case 267 :
  case 268 : case 269 : case 270 : case 271 : case 272: case 273 :
  case 278 : case 279 : case 280 : case 281 : case 282 :
  case 359 :
   return 1;
  default:
   return 0;
 }
}



char * get_next_token_type(char * buf, char * val) {
   register char *BUFPTR;
   int category = 1;
   int old_line_no = CurLine;
   BUFPTR = buf;
   { while(1) { if(*BUFPTR == ' ' || *BUFPTR == '\011') { { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; }else if(*BUFPTR == '\012') { { if (BUFPTR == sentinelptr) { bufptr = BUFPTR; FillBuf(); BUFPTR = bufptr; } else BUFPTR++; CurLine++; firstcolptr = bufptr; }; }else { break; } } };
   switch(*BUFPTR) {
    case ';' : case '?' : case '~' : case ']' : case '.' :
 case '^' : case '%' : case '<' : case '>' :
 case '|' : case '&' : case '=' : case '!' : case '+' :
 case '-' :
  category = 0;
   }

   CurLine = old_line_no;
   *val = category;
   return BUFPTR;
}




void addMapFileName(char * mapOption) {
 char * src, *target;
 char * ptr;

 ptr = strstr(mapOption, "=");
 ptr ++;
 src = ptr;

 ptr = strstr(ptr, "|");
 *ptr = '\0';

 ptr ++;
 target = ptr;
 name_to_number(src, target);
}



int yylex ()
{
   register char *BUFPTR;

   BUFPTR = bufptr;

   again:

   curr_token_p = curr_token;

   switch (*BUFPTR) {




   case ',' : { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (315); *curr_token_p = '\0'; return(315); }
   case ';' : { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (324); *curr_token_p = '\0'; return(324); }
   case '?' : { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (335); *curr_token_p = '\0'; return(335); }
   case '~' : { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (355); *curr_token_p = '\0'; return(355); }
   case '(' : { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (318); *curr_token_p = '\0'; return(318); }
   case ')' : { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (319); *curr_token_p = '\0'; return(319); }
   case '[' : { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (320); *curr_token_p = '\0'; return(320); }
   case ']' : { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (321); *curr_token_p = '\0'; return(321); }

   case '.' :
      { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
      if (*BUFPTR == '.') {
  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
         if (*BUFPTR == '.') {
     { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (323); *curr_token_p = '\0'; return(323); }
  }
  else { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (9999); *curr_token_p = '\0'; return(9999); }
      } else {
 switch(*BUFPTR) {
  case '0': case '1': case '2': case '3' : case '4' :
     case '5' : case '6' : case '7' : case '8' : case '9' :


   BUFPTR = BUFPTR - 2;
   *BUFPTR = '0';
   goto again;
  default:
        { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (357); *curr_token_p = '\0'; return(357); };
 }
      }

   case ':' :
      { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
      { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (317); *curr_token_p = '\0'; return(317); }


   case '{' :
      { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
      { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (313); *curr_token_p = '\0'; return(313); }

   case '}' : { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (314); *curr_token_p = '\0'; return(314); }

   case '^' :
      { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
      if (*BUFPTR == '=') {
  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (333); *curr_token_p = '\0'; return(333); }
      } else { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (339); *curr_token_p = '\0'; return(339); }

   case '%' :
      { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
      if (*BUFPTR == '=') {
  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (327); *curr_token_p = '\0'; return(327); }
      } else { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (352); *curr_token_p = '\0'; return(352); }

   case '*' :
      { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
      if (*BUFPTR == '=') {
  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (325); *curr_token_p = '\0'; return(325); }
      } else { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (322); *curr_token_p = '\0'; return(322); }

   case '<' :
      { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
      if (*BUFPTR == '<') {
  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
  if (*BUFPTR == '=') { { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (330); *curr_token_p = '\0'; return(330); }}
  else { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (347); *curr_token_p = '\0'; return(347); }
      } else if (*BUFPTR == '=') { { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (345); *curr_token_p = '\0'; return(345); } }
      else { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (343); *curr_token_p = '\0'; return(343); }
      break;
   case '>' :
      { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
      if (*BUFPTR == '>') {
  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
  if (*BUFPTR == '=') { { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (331); *curr_token_p = '\0'; return(331); }}
  else { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (348); *curr_token_p = '\0'; return(348); }
      } else if (*BUFPTR == '=') { { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (346); *curr_token_p = '\0'; return(346); } }
      else { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (344); *curr_token_p = '\0'; return(344); }
      break;
   case '|' :
      { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
      if (*BUFPTR == '|') { { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (336); *curr_token_p = '\0'; return(336); } }
      else if (*BUFPTR == '=') { { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (334); *curr_token_p = '\0'; return(334); } }
      else { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (338); *curr_token_p = '\0'; return(338); }
      break;
   case '&' :
      { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
      if (*BUFPTR == '&'){ { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (337); *curr_token_p = '\0'; return(337); } }
      else if (*BUFPTR == '=') { { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (332); *curr_token_p = '\0'; return(332); } }
      else { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (340); *curr_token_p = '\0'; return(340); }
      break;
   case '=' :
      { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
      if (*BUFPTR == '=') { { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (341); *curr_token_p = '\0'; return(341); } }
      else { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (316); *curr_token_p = '\0'; return(316); }
      break;
   case '!' :
      { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
      if (*BUFPTR == '=') { { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (342); *curr_token_p = '\0'; return(342); } }
      else { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (356); *curr_token_p = '\0'; return(356); }
      break;
   case '+' :
      { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
      if (*BUFPTR == '+') { { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (353); *curr_token_p = '\0'; return(353); } }
      else if (*BUFPTR == '=') {{ if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (328); *curr_token_p = '\0'; return(328); }}
      else { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (349); *curr_token_p = '\0'; return(349); }
      break;
   case '-' :
      { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
      if (*BUFPTR == '-') { { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (354); *curr_token_p = '\0'; return(354); } }
      else if (*BUFPTR == '=') {{ if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (329); *curr_token_p = '\0'; return(329); }}
      else if (*BUFPTR == '>') { { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (358); *curr_token_p = '\0'; return(358); } }
      else { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (350); *curr_token_p = '\0'; return(350); }
      break;



   case '/' :
      { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
      if (*BUFPTR == '*') {
  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
  for(;;) {
     if (*BUFPTR == '*') { { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; if (*BUFPTR == '/') { { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; goto again; } }
     else if (*BUFPTR == '\012') { if (BUFPTR == sentinelptr) { bufptr = BUFPTR; FillBuf(); BUFPTR = bufptr; } else BUFPTR++; CurLine++; firstcolptr = bufptr; }
     else if (*BUFPTR == '\014') {
        LexError("eof inside comment");
        SYM = 9999;
        break;
     }
     else { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
  }
      }
      else if (*BUFPTR == '/') {

   { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
   for(;;) {
  if(*BUFPTR=='\012' || *BUFPTR=='\014')
  {
   goto again;
  }
  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
   }
      }
      else if (*BUFPTR == '=') { { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (326); *curr_token_p = '\0'; return(326); } }
      else { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (351); *curr_token_p = '\0'; return(351); }


   case 'L' :
 if( *(BUFPTR+1) == '\'' || *(BUFPTR+1) == '\"') {
  isWideChar = 1;
  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
  goto again ;
 }else {
  isWideChar = 0;
 }
   case 'a' : case 'b' : case 'c' : case 'd' : case 'e' : case 'f' :
   case 'g' : case 'h' : case 'i' : case 'j' : case 'k' : case 'l' :
   case 'm' : case 'n' : case 'o' : case 'p' : case 'q' : case 'r' :
   case 's' : case 't' : case 'u' : case 'v' : case 'w' : case 'x' :
   case 'y' : case 'z' : case 'A' : case 'B' : case 'C' : case 'D' :
   case 'E' : case 'F' : case 'G' : case 'H' : case 'I' : case 'J' :
   case 'K' : case 'M' : case 'N' : case 'O' : case 'P' :
   case 'Q' : case 'R' : case 'S' : case 'T' : case 'U' : case 'V' :
   case 'W' : case 'X' : case 'Y' : case 'Z' :
   case '_' : case '$' :

      {
  char namebuf[300];
  char *idstart, *idstop;
  idstart = &namebuf[0];

  while (IsLetgit[*BUFPTR]) {
         *idstart = *BUFPTR;
  idstart ++;
  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } } ;
 }
 process_ident(namebuf, idstart);
      }

      SYM = CurId->symbol_class;

      if(SYM == 360) {
             if(not_typedef_by_preToken(preSYM)) {
   SYM = 359;
      }else {
  char nextTokenType;
       BUFPTR = get_next_token_type(BUFPTR, &nextTokenType);
              if(nextTokenType == 0) {
   SYM = 359;
       }
             }
      }

      yylval.attr[1] = (long) CurId;

      { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (SYM); *curr_token_p = '\0'; return(SYM); }



   case '"' : case '\'':

      {
  char delimiter;
  long length;
  char preIsBackSlash=0;


  delimiter = *BUFPTR;
  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
  length = 0;

  CurString = stringtab_ptr;
  stringtab_ptr++;

  for (;;) {
     if (*BUFPTR == delimiter && preIsBackSlash == 0) {
        if (delimiter == '\'') {
                  app_to_string('\0');
                  length++;
                  if(isWideChar) {
   SYM = 365;
    }else {
   SYM = 364;
    }
                  isWideChar = 0;
    *CurString = length;
                  yylval.attr[1] = (long) CurString;

                  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
  }
        else {
   app_to_string('\0');
   length++;
   if(isWideChar) {
   SYM= 362;
  }else {
   SYM = 361;
   }
  isWideChar = 0;
  *CurString = length;
                yylval.attr[1] = (long) CurString;
    { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
  }
        break;
     }
     else if (*BUFPTR == '\012') {
        LexError("eol inside char or string constant");
        SYM = 9999;
        break;
     }
     else if (*BUFPTR == '\014') {
        LexError("eof inside char or string");
        SYM = 9999;
        break;
     }
     else {
  CurChar = *BUFPTR;
  if(CurChar == '\\' && preIsBackSlash == 0) {
   preIsBackSlash = 1;
                }else {
   preIsBackSlash = 0;
  }
     }
     app_to_string(CurChar);
     length++;
     { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
  }
      }

      break;


   case '0' : case '1' : case '2' : case '3' : case '4' :
   case '5' : case '6' : case '7' : case '8' : case '9' :

      {
  long base;
  int len;
  char *start_number;
  char *stop_number;
  char *stop_int_number;
  char *Repr;
  char *p;

  start_number = BUFPTR;
  Repr = stringtab_ptr;




 while(IsAlNum[*BUFPTR] || *BUFPTR == '.' ) {
                if( 'e' == *BUFPTR || 'E' == *BUFPTR) {
   { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
   if('+' == *BUFPTR || '-' == *BUFPTR) {
    { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
   }
  }else {
   { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
  }
 }

        SYM = 366;
 stop_number = BUFPTR;
 for (p = start_number; p != stop_number; p++) {
     app_to_string(*p);
 }
 app_to_string('\0');
        yylval.attr[1] = (long) Repr;
      }

      break;



   case ' ' : { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; goto again;
   case '\011' : { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } }; goto again;
   case '\012' : { if (BUFPTR == sentinelptr) { bufptr = BUFPTR; FillBuf(); BUFPTR = bufptr; } else BUFPTR++; CurLine++; firstcolptr = bufptr; }; goto again;



   case '#' :



      {
  int n;
  char strbuf[256];
  char *strptr;

  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };

        if( strstr(BUFPTR, "include ") == BUFPTR ||
  strstr(BUFPTR, "pragma ") == BUFPTR ) {

  char *start;
                char *stop;
                char *Repr;
                char *p;

                start = BUFPTR;
                Repr = stringtab_ptr;
                while( *BUFPTR != '\012') {
                       { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
                }
                stop = BUFPTR;
                for (p = start; p != stop; p++) {
                       app_to_string(*p);
                }
                app_to_string('\0');
                yylval.attr[1] = (long) Repr;
                SYM = 368;
                break;
        }else if(strstr(BUFPTR, "line") == BUFPTR) {

  BUFPTR += 4;
        }

       while (*BUFPTR == ' ' || *BUFPTR == '\011') { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };



  if (*BUFPTR == 'p') {
     do {
        { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
     } while (*BUFPTR != '\n');

     goto again;
  }

  if (! IsDigit[*BUFPTR]) {
     LexError("lineno missing");
     { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (9999); *curr_token_p = '\0'; return(9999); };
  }
  n = 0;
  while (IsDigit[*BUFPTR]) {
     n = n*10+(*BUFPTR - '0');
     { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
  }
  CurLine = n;

  while (*BUFPTR == ' ' || *BUFPTR == '\011') { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };



  if (*BUFPTR == '"') {
     { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
     strptr = &strbuf[0];
     while (*BUFPTR != '"') {
        if (*BUFPTR == '\012' || *BUFPTR == '\014') {
    LexError("string not closed");
    { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (9999); *curr_token_p = '\0'; return(9999); };
        }
        *strptr++ = *BUFPTR;
        { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
     }
     { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
  }

  while (*BUFPTR == ' ' || *BUFPTR == '\011') { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };



  if ( IsDigit[*BUFPTR] ) {

     *strptr++ = '&';
  *strptr++ = *BUFPTR;

  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
     while (*BUFPTR == ' ' || *BUFPTR == '\011') { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
  }

  while (*BUFPTR == ' ' || *BUFPTR == '\011') { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };



  while (IsDigit[*BUFPTR]) {

     *strptr++ = ' ';
                *strptr++ = *BUFPTR;

  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
  }


         while (*BUFPTR == ' ' || *BUFPTR == '\011') { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };

         while (IsDigit[*BUFPTR]) {

            *strptr++ = ' ';
                *strptr++ = *BUFPTR;

  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
         }

         while (*BUFPTR == ' ' || *BUFPTR == '\011') { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };

         if (*BUFPTR == '\012') {
                *strptr = '\0';
             CurFileNo = name_to_number(strbuf, 0);

  { if (BUFPTR == sentinelptr) { bufptr = BUFPTR; FillBuf(); BUFPTR = bufptr; } else BUFPTR++; CurLine++; firstcolptr = bufptr; };
      CurLine--;


  
# 701 "/home/sd/ACC_v09/ACC/src/lexer.c" 3 4
 ((void) sizeof ((
# 701 "/home/sd/ACC_v09/ACC/src/lexer.c"
 lastPreFilePosIndex <= (50 -2)
# 701 "/home/sd/ACC_v09/ACC/src/lexer.c" 3 4
 ) ? 1 : 0), __extension__ ({ if (
# 701 "/home/sd/ACC_v09/ACC/src/lexer.c"
 lastPreFilePosIndex <= (50 -2)
# 701 "/home/sd/ACC_v09/ACC/src/lexer.c" 3 4
 ) ; else __assert_fail (
# 701 "/home/sd/ACC_v09/ACC/src/lexer.c"
 "lastPreFilePosIndex <= (MaxInclFileDepth-2)"
# 701 "/home/sd/ACC_v09/ACC/src/lexer.c" 3 4
 , "/home/sd/ACC_v09/ACC/src/lexer.c", 701, __extension__ __PRETTY_FUNCTION__); }))
# 701 "/home/sd/ACC_v09/ACC/src/lexer.c"
                                                    ;
  preFilePos[++lastPreFilePosIndex] = create_file_pos(CurFileNo, CurLine);
  }
  else {
     LexError("invalid line directive");
     { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (9999); *curr_token_p = '\0'; return(9999); };
  }


  goto again;
      }



   case '\014' :



 if( *(BUFPTR+1) != '\000') {
  { if( BUFPTR == lastptr) { bufptr = BUFPTR ; FillBuf(); BUFPTR = bufptr; } else { *(curr_token_p) = *BUFPTR ; if(curr_token_p - curr_token < 32 - 1) { curr_token_p ++; } BUFPTR++ ; } };
  goto again;
 }
 SYM = 0; break;


   default :
      BUFPTR++;
      SYM = 9999;
   };

   { bufptr = BUFPTR; CurCol = BUFPTR - firstcolptr; preSYM = (SYM); *curr_token_p = '\0'; return(SYM); }
}
# 743 "/home/sd/ACC_v09/ACC/src/lexer.c"
FillBuf ()
{
   register char *i, *p;
   long n;
   int nbytes;






   p = &buf[0]; i = bufptr;
   while (i < lastptr) {
      *++p = *++i;
   }


   nbytes = &buf[500000]-p;
   nbytes--;

   n = fread
         ( p+1, 1, nbytes, stream);


   lastptr = p+n;
   bufptr = &buf[1];


   buf[0] = '\012';
   i = lastptr;
   while (*i != '\012') i--;

   sentinelptr = i;
   *(lastptr+1) = '\014' ;
   *(lastptr+2) = '\000';
}

void initStream(FILE *s){
  stream = s;
}



SkipRestOfInput()
{
   char buf[5000];
   int n;

   do {
      n = fread ( buf, 1, sizeof buf, 
# 792 "/home/sd/ACC_v09/ACC/src/lexer.c" 3 4
                                                                                 stdin
# 792 "/home/sd/ACC_v09/ACC/src/lexer.c"
                                                                                      );
   } while (n > 0);
}



app_to_string (ch)
   char ch;
{
   if (stringtab_ptr>=&stringtab[500000]){
      printf("stringtab full\n");
      exit(1);
   }
   *stringtab_ptr++ = ch;
}



InitScanner ()
{
   char ch;
   long i;

   for (i = 0; i <= 255; i++) {
      ch = i;
      switch (ch) {
      case '0' : case '1' : case '2' : case '3' : case '4' : case '5' :
      case '6' : case '7' : case '8' : case '9' :
  IsDigit[i] = 1;
      case 'A' : case 'B' : case 'C' : case 'D' : case 'E' : case 'F' :
  IsHexDigit[i] = 1;
      case 'a' : case 'b' : case 'c' : case 'd' : case 'e' : case 'f' :
      case 'g' : case 'h' : case 'i' : case 'j' : case 'k' : case 'l' :
      case 'm' : case 'n' : case 'o' : case 'p' : case 'q' : case 'r' :
      case 's' : case 't' : case 'u' : case 'v' : case 'w' : case 'x' :
      case 'y' : case 'z' :
      case 'G' : case 'H' : case 'I' : case 'J' : case 'K' : case 'L' :
      case 'M' : case 'N' : case 'O' : case 'P' : case 'Q' : case 'R' :
      case 'S' : case 'T' : case 'U' : case 'V' : case 'W' : case 'X' :
      case 'Y' : case 'Z' :
        IsLetgit[i] = 1;
  IsAlNum[i] = 1;
  break;
      case '_' : case '$' :
         IsLetgit[i] = 1;
         IsAlNum[i] = 0;
  break;
      default:
         IsAlNum[i] = 0;
  IsLetgit[i] = 0;
      }
   }

   for (i = 0; i<=2048 -1; i++) HashTab[i] = 0;

   idstringtab_ptr = &idstringtab[1];
   idnum = 0;

   stringtab_ptr = &stringtab[1];


enter_ident(294, "sizeof");
enter_ident(257, "auto");
enter_ident(259, "static");
enter_ident(258, "register");
enter_ident(273, "unsigned");
enter_ident(268, "long");
enter_ident(269, "float");
enter_ident(270, "double");
enter_ident(262, "void");
enter_ident(263, "char");
enter_ident(265, "int");
enter_ident(266, "_Complex");
enter_ident(267, "_Imaginary");
enter_ident(264, "short");
enter_ident(279, "struct");
enter_ident(280, "union");
enter_ident(281, "enum");
enter_ident(284, "if");
enter_ident(285, "else");
enter_ident(288, "do");
enter_ident(287, "while");
enter_ident(292, "break");
enter_ident(291, "continue");
enter_ident(293, "return");
enter_ident(290, "goto");
enter_ident(289, "for");
enter_ident(286, "switch");
enter_ident(282, "case");
enter_ident(283, "default");
enter_ident(260, "extern");
enter_ident(261, "typedef");
enter_ident(271, "signed");
enter_ident(272, "__signed__");
enter_ident(274, "const");
enter_ident(275, "volatile");
enter_ident(276, "__volatile");
enter_ident(277, "__volatile__");
enter_ident(278, "_Bool");


enter_ident(295, "__extension__");
enter_ident(296, "__const");
enter_ident(297, "__attribute__");
enter_ident(298, "__attribute");
enter_ident(299, "__builtin_va_list");
enter_ident(309, "__builtin_offsetof");
enter_ident(301, "__restrict");
enter_ident(300, "__builtin_va_arg");


enter_ident(304, "inline");
enter_ident(302, "__inline");
enter_ident(303, "__inline__");

enter_ident(305, "asm");
enter_ident(306, "__asm");
enter_ident(307, "__asm__");
enter_ident(308, "__alignof__");

enter_ident(310, "__typeof");
enter_ident(312, "__typeof__");
enter_ident(311, "typeof");




   lastptr = &buf[0];
   bufptr = &buf[0];
   sentinelptr = bufptr;

   CurLine = 1;
   firstcolptr = &buf[1];

   lastPreFilePosIndex = -1;

   FillBuf();


}

void setCurFileName(char * fName) {
    CurFileNo = name_to_number(fName, 0);
}





process_ident (idstart, idstop) char *idstart, *idstop;
{
   long hash, length;
   Ident chain;

   length = idstop-idstart;
   hash = ( length*256 + ((*idstart)&0xf)*16 + (*(idstop-1)&0xf) )
   & (2048 -1);
   chain = HashTab[hash];

   for(;;) {
      if (chain == 0) {

  idnum++;
  if (idnum>=50000){
     printf ("idtab full\n");
     exit(1);
  }
  {
     register Ident new;
     new = & idtab[idnum];
     new->firstposptr = idstringtab_ptr;
     new->length = length;
     new->next = HashTab[hash];
     new->symbol_class = 359;
     new->meaning = 0;
     new->tagmeaning = 0;
     HashTab[hash] = new;
     CurId = new;
  }
  {
     register char *i, *freeptr, *stop;
     i = idstart;
     freeptr = idstringtab_ptr;
     stop = idstop;
     while (i < stop) {
        *freeptr++ = *i++;
     }
     *freeptr = '\000';
     freeptr++;
     idstringtab_ptr= freeptr;
     if (freeptr >&idstringtab[500000]){
        printf("idstringtab full\n");
        exit(1);
     }
  }
  break;
      }


      if (chain->length == length) {
         char *i;
  register char *j;
  int index = 0;
  i = idstart; j = chain->firstposptr;
  for(index = 0 ; index < length ; index ++) {
  if(*i != *j) break;
  i++; j++;
  }
  if ((i) == idstop && *(j) == '\000') {
  CurId = chain;
  break;
  }
      }

      chain = chain->next;
   }
}


enter_ident (class, idstart) long class; char *idstart;
{
   char *idstop;
   idstop = idstart;
   while (*idstop != '\000') idstop++;
   process_ident (idstart, idstop, 0);
   CurId->symbol_class = class;
}


string_to_id (str, ref_id)
   char *str;
   Ident *ref_id;
{
   enter_ident(359, str);
   *ref_id = CurId;
}



int DefTagMeaning (id, m) Ident id; long m;
{
   id->tagmeaning = m;
   return 1;
}


int GetTagMeaning (id, m) Ident id; long *m;
{
   if (id->tagmeaning == 0)
      return 0;
   *m = id->tagmeaning;
   return 1;
}


int DefMeaning (id, m) Ident id; long m;
{
   id->meaning = m;
   return 1;
}


int GetMeaning (id, m) Ident id; long *m;
{
   if (id->meaning == 0)
      return 0;
   *m = id->meaning;
   return 1;
}


GetRepr (id, repr) Ident id; char *repr;
{
   char *i, *j;
   i = repr; j = id->firstposptr;
   do {
      *i = *j;
      i++; j++;
   } while (*j != '\000');
   *i = '\000';
}


int GetRepr2 (id, repr) Ident id; char **repr;
{
   *repr = id->firstposptr;
   return 1;
}



set_typedef (Id)
   long Id;
{
   ((Ident) Id) ->symbol_class = 360;
}

set_identifier (Id)
   long Id;
{
   ((Ident) Id) ->symbol_class = 359;
}




set_enum (Id)
   long Id;
{
# 1112 "/home/sd/ACC_v09/ACC/src/lexer.c"
}




set_symbol_class (Id, C)
   long Id;
   long C;
{
   ((Ident) Id)->symbol_class = C;
}



get_symbol_class (Id, C)
   long Id;
   long *C;
{
   *C = ((Ident) Id)->symbol_class;
}

test_symclass_typedef(Id, C)
   long Id;
   long *C;
{
   if( ((Ident)Id)->symbol_class == 360) {
 *C = 1;
   }else {
 *C = 0;
   }
}



make_dummy_Ident (I)
   long *I;
{
   *I =-4711;
}





get_current_pos (N, L)
   int N; unsigned long *L;

{




   if(N==0 || lastPreFilePosIndex < 1) {
 *L= create_file_pos(CurFileNo , CurLine);
   }else {
 *L= create_new_file_pos(CurFileNo, CurLine);
   }
   return 1;
}


unsigned long create_file_pos(unsigned long fileno, unsigned long lineno) {
   unsigned long abc = fileno * 1000000 + CurLine;

   if(abc <= 0) {
 printf("fileno = %lu, lineno = %lu \n", fileno, lineno );
 printf("abc = %lu\n", abc);
 
# 1179 "/home/sd/ACC_v09/ACC/src/lexer.c" 3 4
((void) sizeof ((
# 1179 "/home/sd/ACC_v09/ACC/src/lexer.c"
0
# 1179 "/home/sd/ACC_v09/ACC/src/lexer.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 1179 "/home/sd/ACC_v09/ACC/src/lexer.c"
0
# 1179 "/home/sd/ACC_v09/ACC/src/lexer.c" 3 4
) ; else __assert_fail (
# 1179 "/home/sd/ACC_v09/ACC/src/lexer.c"
"0"
# 1179 "/home/sd/ACC_v09/ACC/src/lexer.c" 3 4
, "/home/sd/ACC_v09/ACC/src/lexer.c", 1179, __extension__ __PRETTY_FUNCTION__); }))
# 1179 "/home/sd/ACC_v09/ACC/src/lexer.c"
         ;
   }

   return abc;
}



unsigned long create_new_file_pos(unsigned long filep , unsigned long lineno) {
 struct file_chain * p;
 struct file_pos_chain * fpc;
 int i = 0;
 unsigned long fileno = filep;

 struct file_chain * oldFile = number_to_file(fileno);

 
# 1195 "/home/sd/ACC_v09/ACC/src/lexer.c" 3 4
((void) sizeof ((
# 1195 "/home/sd/ACC_v09/ACC/src/lexer.c"
oldFile
# 1195 "/home/sd/ACC_v09/ACC/src/lexer.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 1195 "/home/sd/ACC_v09/ACC/src/lexer.c"
oldFile
# 1195 "/home/sd/ACC_v09/ACC/src/lexer.c" 3 4
) ; else __assert_fail (
# 1195 "/home/sd/ACC_v09/ACC/src/lexer.c"
"oldFile"
# 1195 "/home/sd/ACC_v09/ACC/src/lexer.c" 3 4
, "/home/sd/ACC_v09/ACC/src/lexer.c", 1195, __extension__ __PRETTY_FUNCTION__); }))
# 1195 "/home/sd/ACC_v09/ACC/src/lexer.c"
               ;


 p = (struct file_chain *)malloc(sizeof(struct file_chain));

 p->name = copy_chars(oldFile->name);
 p->level = copy_chars(oldFile->level);
 p->mappedName=copy_chars(oldFile->mappedName);
 p->returnAble = 0;
 p->next = 0;
 p->preFilePos = (struct file_pos_chain *)malloc(sizeof(struct file_pos_chain));

 fpc = p->preFilePos;


 for(i = 0; i < lastPreFilePosIndex - 1 ; i++) {
  fpc->fpos = preFilePos[i];
  fpc->next = (struct file_pos_chain *)malloc(sizeof(struct file_pos_chain));
  fpc=fpc->next;
 }

 fpc->fpos = preFilePos[i];
 fpc->next = 0;

 lastPreFilePosIndex = -1;

        last_file->next = p;
        last_file = p;

    totalFiles++;

 return create_file_pos(totalFiles, lineno);
}



yyGetPos(ref_pos)
   long *ref_pos;
{
   *ref_pos = 0;
}

char * get_current_token() {
 return curr_token;
}

void free_file_pos(struct file_pos_chain * fpc) {
 if(fpc == 0) return;
 free_file_pos(fpc->next);
 free(fpc);
}

void free_files(struct file_chain * f) {
        if(0 == f) return;
        free_files(f->next);
      free(f->name);
 if(f->mappedName) free(f->mappedName);
 if(f->level) free(f->level);
 free_file_pos(f->preFilePos);

 free(f);
}

void free_file_chain() {
      free_files(first_file);
}




unsigned long name_to_number(str, mappedStr)
   char *str;
   char *mappedStr;
{
   struct file_chain *p = first_file;
   unsigned long n = 1;
   char * level = 0;



   level = strstr(str, "&");
   if(level) {
 *level = '\0';
 level ++;
   }

   for (;;) {
      if(p == 0) {

  p = (struct file_chain *) malloc(sizeof (struct file_chain));
  if (p == 0) LexAbort("cannot malloc");
  p->name = (char *) malloc(strlen(str)+1);
  if (p->name == 0) LexAbort("cannot malloc");
  strcpy(p->name, str);
         if(mappedStr != 0) {
  p->mappedName = (char *) malloc(strlen(mappedStr)+1);
                if (p->mappedName == 0) LexAbort("cannot malloc");
  strcpy(p->mappedName, mappedStr);
  }else {
  p->mappedName = 0;
  }

 if(level != 0) {
  p->level = (char *)malloc(strlen(level) + 1);
  strcpy(p->level, level);
 }else {
  p->level = 0;
 }

        p->returnAble = 1;
        p->preFilePos = 0;
 p->next = 0;

 if(strstr(str, "setjmp.h")) {
         setSJMPH_Emitted();
        }

 if (first_file == 0) first_file = p;
 else last_file->next = p;
 last_file = p;

 totalFiles ++;

 return n;
      }

 if(strcmp(p->name, str) == 0 ) {
  if(mappedStr == 0) {
   mappedStr = p->mappedName;
  }

  if(p->returnAble == 1 &&
                 ( (p->level == 0 && level == 0) ||
                     (p->level != 0 && level != 0 && strcmp(p->level, level) == 0)
                 )
         ){
                 if(strstr(str, "setjmp.h")) {
                         setSJMPH_Emitted();
                 }


                 return n;
         }
 }

        p = p->next;
       n++;
   }
}

struct file_chain * number_to_file(unsigned long n) {

 struct file_chain *p;
    unsigned long i;

    p = first_file;
    i = 1;
    while(1) {
        if (p == 0 || i == n) break;
        p = p->next;
        i++;
    }

 return p;
}


char *number_to_name (unsigned long n)
{
   struct file_chain *p = number_to_file(n);
   if(p == 0) {
  return "<unknown file>";
   }
   return p->mappedName ? p->mappedName : p->name;
}



char *number_to_level (unsigned long n)
{
   struct file_chain *p = number_to_file(n);
   if(p == 0) return (char *)0;
   return p->level;
}






LexError(msg)
   char *msg;
{
   yyerror(msg);
}



LexAbort(msg)
   char *msg;
{
   printf("%s\n", msg);
   exit(1);
}
