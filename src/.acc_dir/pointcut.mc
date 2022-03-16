# 1 "/home/sd/ACC_v09/ACC/src/pointcut.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "/home/sd/ACC_v09/ACC/src/pointcut.c"
# 26 "/home/sd/ACC_v09/ACC/src/pointcut.c"
# 1 "/home/sd/ACC_v09/ACC/src/pointcut.h" 1
# 29 "/home/sd/ACC_v09/ACC/src/pointcut.h"
# 1 "/home/sd/ACC_v09/ACC/src/symboltable.h" 1
# 29 "/home/sd/ACC_v09/ACC/src/symboltable.h"
typedef int boolean;


typedef enum{FUNCDECL, FUNCBODY, STRUCTDECL, PARAMDECL, PARAMFPDECL, FUNCPDECL, TYPEDEFFPDECL, TYPEDEFDECL, PCMATCHING, ADFUNCDECL, GLOBVARDECL, UNKNOWNDECL} DeclType;


struct Param{
   char *id;
   char *type;
   struct Param *next;
};
# 62 "/home/sd/ACC_v09/ACC/src/symboltable.h"
struct FuncInfo{
   char *fname;
   char *rtType;
   struct Param *p;
   struct FuncInfo *next;
   int malInfo ;



};







struct TypedefInfo{
 char * source;
 char * target;
 struct TypedefInfo * next;
};


struct checkFrame {
        int info ;
 DeclType type;
 int paramCount;
 struct FuncInfo * curFunc;
        struct TypedefInfo * curTypedef;
        struct checkFrame * parent;
 char * qualifier;
 int declaratorLevel;
 struct Param * paramFor2ndDeclarator;





 boolean paramFor2ndDeclaratorIsSet;
};


extern struct FuncInfo *funcTable;
extern struct FuncInfo *fpTable;
extern struct FuncInfo *varTable;

extern struct TypedefInfo * typedefTable;

void addFunc(struct FuncInfo **head, struct FuncInfo *data);
struct FuncInfo *searchFunc(struct FuncInfo *head, char * key);
struct FuncInfo *searchFP(struct FuncInfo *head, char * key, char * infunc);

struct Param * addParam(struct Param **head, struct Param *data);
struct Param * copy_parameters(struct Param *);
char * copy_chars(char *);
void setType(char *t);
void setQualifier(char *);
void setComplexType(long, char*);
void setComplexTypeName(long, char [], char *);
void setPointerType() ;
void setEllipsis();
void setStorageClass(char *);

void addStarToType(char **);
void removeStarToType(char **);
char * addType(char * t1, char * t2);
void setId(char *id);
void appendId(char *id);
char * add_chars_with_dot(char * str1, char * str2);
void printFuncs(struct FuncInfo *table);
void free_func(struct FuncInfo *);
void free_typedefTable(struct TypedefInfo *);
void free_declframe(struct checkFrame * f);


void initDeclCollection(char *);
void endDeclCollection();
void setFuncDecl();
void setFuncDecl_old();
void setInsideATypedefDecl();

char * make_param_name(int);
char * make_func_pointer_type(struct checkFrame *);
void make_fp_name(struct checkFrame * frame);

void enter_paren_declarator();
void leave_paren_declarator();
void setDeclaratorWithPointer();

void enter_gcc_attribute();
void leave_gcc_attribute();


void isATypeDefDecl(long *);
void setTypeDefTarget();

void isKNRDecl(long *);

void setNoNameTag(char **);

void setTypedefTargetSource(char *);
char * findRealType(char * name);
void switchTypedefTargetSource(struct TypedefInfo * oneTypedef);

void addQualifier(char ** type, char ** qualifier);
void getPlainType(char *, char *);

void setDeclIsFuncLike();

void isDiffName(char *, char *, long *);

void setEndFuncDeclarator();
# 30 "/home/sd/ACC_v09/ACC/src/pointcut.h" 2
# 1 "/home/sd/ACC_v09/ACC/src/utac_tag.h" 1
# 193 "/home/sd/ACC_v09/ACC/src/utac_tag.h"
extern char * errmsg_fmt[];
# 31 "/home/sd/ACC_v09/ACC/src/pointcut.h" 2

# 1 "/usr/include/assert.h" 1 3 4
# 35 "/usr/include/assert.h" 3 4
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
# 36 "/usr/include/assert.h" 2 3 4
# 66 "/usr/include/assert.h" 3 4




# 69 "/usr/include/assert.h" 3 4
extern void __assert_fail (const char *__assertion, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));


extern void __assert_perror_fail (int __errnum, const char *__file,
      unsigned int __line, const char *__function)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));




extern void __assert (const char *__assertion, const char *__file, int __line)
     __attribute__ ((__nothrow__ , __leaf__)) __attribute__ ((__noreturn__));



# 33 "/home/sd/ACC_v09/ACC/src/pointcut.h" 2
# 44 "/home/sd/ACC_v09/ACC/src/pointcut.h"

# 44 "/home/sd/ACC_v09/ACC/src/pointcut.h"
typedef enum {CALL, EXECUTION, CALLP, ARGS, RESULT, INFILE, INFUNC, INTYPE, COMPOUND, COMP_AND, COMP_OR, COMP_NOT, NAMEDPC, PCNAME, CFLOW, TRY, GETPC, SETPC, UNKNOWN_PC} PointcutType;

typedef enum {BEFORE, AFTER, AROUND, INTRODUCE, CATCH, ADFORNAMEDPC, ADBEFORECFLOW, ADAFTERCFLOW, ADARGSCFLOW, ADBEFORETRY, ADAFTERTRY, UNKNOWN_AD } AdviceType;

typedef enum {PROCEED, PRETURN, THROW, THIS, ARG, ARGTYPE, UNKNOWN_ADKEYWORD} AdviceKeyword;
# 72 "/home/sd/ACC_v09/ACC/src/pointcut.h"
struct argIndexInContext {
 struct Context * c;
 int argIndex;
 struct argIndexInContext * nextContext;
};



struct jpInfo {
         char * name;
         long pos;
         PointcutType type;
         struct jpInfo * next;
   };







struct adviceParam {
 struct Param p;
 struct argIndexInContext * indexInContext;
 char * callCflowContextFunc;

 boolean matchAddress ;
 boolean usedInPC;
 struct adviceParam * next;
};




struct advice {
  char *name;
  char *rtType;
  AdviceType type;
  struct adviceParam *p ;
  int malInfo;
  char * acFileBaseName;
  char * cflowCondition;

};



struct AdviceQueue{
   struct advice *data;
   struct AdviceQueue *next;
   boolean emitCond;
};
# 132 "/home/sd/ACC_v09/ACC/src/pointcut.h"
struct pointcutParam {
 struct Param p;
        struct adviceParam * ap;
        struct pointcutParam * next;
};

struct matchInfo{
  char *funcName;
  char *rtType;
  struct pointcutParam *p ;
};


union MatchingInfo {
        struct matchInfo * mInfo;
        struct Record * childPCs[2];
        struct Record * childPC;
 char * inside;
};


struct Record {
  int id;
  char *name;
  PointcutType type;
  struct advice *aList;
  struct Record *next;
  union MatchingInfo info;
  struct Record *parentPC;
  char * cflowFuncName;
};


struct ArgsInCflow {
 struct Record * pc;
 char * funcName;
 struct ArgsInCflow * next;
};

struct CFlowRecord {
        struct Record * pc;
        struct CFlowRecord * next;
        struct ArgsInCflow * argsPCs;


        boolean notPrinted;
};


struct TryRecord {
        struct Record * pc;
        struct TryRecord * next;
        struct advice * ad;
};


struct Context {
 long insideFile;
 char * insideFunc;
 char * funcName;
 PointcutType type;
 char * rtType;
 struct Param * p;

 struct AdviceQueue * before_advices;
        struct AdviceQueue * after_advices;
        struct AdviceQueue * around_advices;
        int malInfo ;
 long numOfCH ;
};


struct CallContext {
 struct Context context;
 char * newFuncName;
 struct CallContext * next;
};

extern struct Record *pCutInfo;
extern struct Record *PointCutTable;
extern struct CFlowRecord * cflowTable;
extern struct TypedefInfo * typedefTable;
extern struct TryRecord * tryTable;
extern char * currTypeQualifier ;

void addPointCutType2Current(char *type);
void addNewAdvice(struct advice **head);
void addPointCutToCFlowTable(struct Record * pc);
struct ArgsInCflow * addArgsPCsInCFlow(struct Record * pc, char * baseFuncName, int * index);


void startPointcutInfo();
void startAdFuncHeader();
void startAdReturnType();
void startJPReturnType();
void startAdFunctionBD();
void startGetDynInfo();

void endPointcutInfo();
void endAdFuncHeader();
void endAdReturnType();
void endJPReturnType();
void endAdFunctionBD();
void endPointcutName();
void endGetDynInfo();


void isPointcutInfo(long *flag);
void isAdFuncHeader(long *flag);
void isAdFunctionBD(long *flag);


void assertKeyword(char * s, char * keyword);
void assert2Keywords(char * s, char * keyword1, char * keyword2);
void checkKeywordInAdvice(char *s, long * flag);


struct Record * createNewRecord(int id);
char * createAdName(char *fname, int counter);
void createNewArgIndex(struct adviceParam * adParam, struct Context *, int initValue);
void createPointcutMatchingInfo(struct checkFrame * cf);
struct adviceParam * create_advice_parameter(struct Param * p);
struct argIndexInContext * copy_argindex_incontext(struct argIndexInContext *);
char * create_dot_types(struct Param * p);


void setACName(char * id);
void setACType(char * t);
void setACComplexType(long type, char *t);
void setACTypePointer();
void setAdviceType(char *);
void resetCurrParamAndType() ;
void resetAdviceCounter();
void setInsideFile(char *);
void setPointcutName(char * s);


char *getPointCutTypeText(PointcutType p);
char *getAdviceText(AdviceType a);
void getAdviceName(char **);
struct advice * getCurrAdvice();


struct Param * findParam(struct Param * head, char * name);
struct Record * findPointcut(struct Record * head, char * name);
struct CFlowRecord * findPointcutInTable(struct CFlowRecord * head, struct Record * target);

boolean hasIntypePCOnly(struct Record * pc) ;
boolean hasTryPCOnly(struct Record *pc);


AdviceType text2AdviceType(char *type);
PointcutType text2PointcutType(char *type);

void pushAChildForCompPC(long index) ;

void popChild();

void outputAdviceFuncBeginTag();
void outputAdviceFuncEndTag();

void endACParamDeclCollection();


void free_pointcut(struct Record *);
void free_matchinginfo_struct(struct matchInfo * info);
void free_pointcut_param(struct pointcutParam * pp);
void free_matchinginfo(struct Record * rec) ;
void free_advices(struct advice * a);
void free_advice_param(struct adviceParam *p) ;
void free_argIndexInContext(struct argIndexInContext * arg);
void free_cflowTable(struct CFlowRecord *);
void free_tryTable(struct TryRecord *);

char * checkContextExposureInCflow(struct Record *pc, char * fName, int * index);
# 27 "/home/sd/ACC_v09/ACC/src/pointcut.c" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 27 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
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

# 28 "/home/sd/ACC_v09/ACC/src/pointcut.c" 2
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

# 29 "/home/sd/ACC_v09/ACC/src/pointcut.c" 2
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

# 30 "/home/sd/ACC_v09/ACC/src/pointcut.c" 2



# 32 "/home/sd/ACC_v09/ACC/src/pointcut.c"
struct Record *pCutInfo = 
# 32 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                         ((void *)0)
# 32 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                             ;
struct Record *PointCutTable = 
# 33 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                              ((void *)0)
# 33 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                  ;
struct CFlowRecord *cflowTable = 
# 34 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                ((void *)0)
# 34 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                    ;

struct TryRecord * tryTable = 
# 36 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                             ((void *)0)
# 36 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                 ;

struct advice * currAdvice = 
# 38 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                            ((void *)0)
# 38 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                ;

extern struct checkFrame * currCheckFrame;


int count = 0;
int cflowCounter = 0;
int adviceCounter = 0;
int cflowArgCounter = 0;

int state = 0;
# 79 "/home/sd/ACC_v09/ACC/src/pointcut.c"
void addNewAdvice(struct advice **head) {
 struct advice *tmp;
     char * fileName;
 char * fileName2;

 get_target_file_name(&fileName);
 get_target_file_base_name(&fileName2);

 tmp = (struct advice *)malloc(sizeof(struct advice));
     tmp->name = createAdName(fileName2, ++adviceCounter);
     tmp->type = UNKNOWN_AD;
 tmp->rtType = 
# 90 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
              ((void *)0)
# 90 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                  ;
 tmp->acFileBaseName = copy_chars(fileName);
 tmp->p = 
# 92 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
         ((void *)0)
# 92 "/home/sd/ACC_v09/ACC/src/pointcut.c"
             ;
 tmp->malInfo = 0;
 tmp->cflowCondition = 
# 94 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                      ((void *)0)
# 94 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                          ;

 *head = tmp;
     currAdvice = tmp;
}

struct ArgsInCflow * addArgsPCsInCFlow(struct Record * pc, char * baseFuncName, int * index) {
 struct ArgsInCflow * a1, *a2;

 if(pc == 
# 103 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
         ((void *)0)
# 103 "/home/sd/ACC_v09/ACC/src/pointcut.c"
             ) return;
        
# 104 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ((void) sizeof ((
# 104 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       pc->type != CFLOW && pc->type != UNKNOWN_PC
# 104 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 104 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       pc->type != CFLOW && pc->type != UNKNOWN_PC
# 104 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ; else __assert_fail (
# 104 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       "pc->type != CFLOW && pc->type != UNKNOWN_PC"
# 104 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/pointcut.c", 104, __extension__ __PRETTY_FUNCTION__); }))
# 104 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                                          ;

        switch(pc->type) {
                case CALL : case EXECUTION : case CALLP : case RESULT : case INFILE :
                case INFUNC : case INTYPE : case COMP_NOT: case GETPC: case SETPC :
                        return 
# 109 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                              ((void *)0)
# 109 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                  ;
                case COMP_AND : case COMP_OR :
                        a1 = addArgsPCsInCFlow(pc->info.childPCs[0], baseFuncName, index);
                        a2 = addArgsPCsInCFlow(pc->info.childPCs[1], baseFuncName, index);
                        if(a1 == 
# 113 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                ((void *)0)
# 113 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                    ) return a2;
   if(a2 == 
# 114 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
           ((void *)0)
# 114 "/home/sd/ACC_v09/ACC/src/pointcut.c"
               ) return a1;
   a1->next = a2;
   return a1;
                case PCNAME:
                        {
    struct Record * realPC = findPointcut(PointCutTable, pc->name);
    
# 120 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ((void) sizeof ((
# 120 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   realPC
# 120 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ) ? 1 : 0), __extension__ ({ if (
# 120 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   realPC
# 120 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ) ; else __assert_fail (
# 120 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   "realPC"
# 120 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   , "/home/sd/ACC_v09/ACC/src/pointcut.c", 120, __extension__ __PRETTY_FUNCTION__); })) 
# 120 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                  ;
              a1 = addArgsPCsInCFlow(realPC, baseFuncName, index);
    if(a1 != 
# 122 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
            ((void *)0)
# 122 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                ) {
                   struct pointcutParam * pp = pc->info.mInfo->p;
                   struct adviceParam * ap = realPC->aList->p;
                   
# 125 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                  ((void) sizeof ((
# 125 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                  realPC->aList && realPC->aList->p
# 125 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                  ) ? 1 : 0), __extension__ ({ if (
# 125 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                  realPC->aList && realPC->aList->p
# 125 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                  ) ; else __assert_fail (
# 125 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                  "realPC->aList && realPC->aList->p"
# 125 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                  , "/home/sd/ACC_v09/ACC/src/pointcut.c", 125, __extension__ __PRETTY_FUNCTION__); }))
# 125 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                                           ;
                   while(pp) {
      pp->ap->callCflowContextFunc = copy_chars(ap->callCflowContextFunc);
                           ap = ap->next;
                           pp = pp->next;
                   }
    }
                         return a1;
   }
                case NAMEDPC:
   return addArgsPCsInCFlow(pc->info.childPC, baseFuncName, index);
  case ARGS :
                        {
   char * cflowContextFunc = checkContextExposureInCflow(pc, baseFuncName, index);
   if(cflowContextFunc != 
# 139 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                         ((void *)0)
# 139 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                             ) {
    a1 = (struct ArgsInCflow *)malloc(sizeof(struct ArgsInCflow));
    
# 141 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ((void) sizeof ((
# 141 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   a1
# 141 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ) ? 1 : 0), __extension__ ({ if (
# 141 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   a1
# 141 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ) ; else __assert_fail (
# 141 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   "a1"
# 141 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   , "/home/sd/ACC_v09/ACC/src/pointcut.c", 141, __extension__ __PRETTY_FUNCTION__); }))
# 141 "/home/sd/ACC_v09/ACC/src/pointcut.c"
             ;
    a1->pc = pc;
    a1->funcName = cflowContextFunc;
    a1->next = 
# 144 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
              ((void *)0)
# 144 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                  ;
    return a1;
   }else return 
# 146 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
               ((void *)0)
# 146 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                   ;
  }
  default:
   
# 149 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ((void) sizeof ((
# 149 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  0
# 149 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 149 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  0
# 149 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ) ; else __assert_fail (
# 149 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  "0"
# 149 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/pointcut.c", 149, __extension__ __PRETTY_FUNCTION__); }))
# 149 "/home/sd/ACC_v09/ACC/src/pointcut.c"
           ;
 }
}

void addPointCutToCFlowTable(struct Record * pc) {
 struct CFlowRecord * newCFlowRec = 
# 154 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                   ((void *)0)
# 154 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                       ;
 struct CFlowRecord * existRec = 
# 155 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                ((void *)0)
# 155 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                    ;
 char buf[300];
 int index = 0;
 char * fileName;

        existRec = findPointcutInTable(cflowTable, pc);
 if(existRec) {
  pc->cflowFuncName = copy_chars(existRec->pc->cflowFuncName);
  return;
 }

 get_target_file_base_name(&fileName);
 newCFlowRec = (struct CFlowRecord*)malloc(sizeof(struct CFlowRecord));
 sprintf(buf, "%s_%s_%d", "__utac__cflow", fileName, cflowCounter++);

 pc->cflowFuncName = copy_chars(buf);


 newCFlowRec->pc = pc;
 newCFlowRec->next = cflowTable;
 newCFlowRec->notPrinted = 1;
 newCFlowRec->argsPCs = addArgsPCsInCFlow(pc, pc->cflowFuncName, &index);
 cflowTable = newCFlowRec;
}


void addPointCutToTryTable(struct Record * pc, struct advice * ad) {
        struct TryRecord * oneTryRec = 
# 182 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                      ((void *)0)
# 182 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                          ;
        struct CatchHandler * handler = 
# 183 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                       ((void *)0)
# 183 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                           ;


        oneTryRec = (struct TryRecord*)malloc(sizeof(struct TryRecord));
        oneTryRec->pc = pc;
 oneTryRec->next = 
# 188 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                  ((void *)0)
# 188 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                      ;
        oneTryRec->ad = ad;

 if(tryTable == 
# 191 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
               ((void *)0)
# 191 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                   ) {
  tryTable = oneTryRec;
 }else {

  struct TryRecord * tmp = tryTable;
  while(tmp->next) {
   tmp = tmp->next;
  }
  tmp->next = oneTryRec;
 }
}

void addPointCutType2Current(char *type){
 PointcutType tmp;
 if(pCutInfo != 
# 205 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
               ((void *)0)
# 205 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                   ){
   tmp = text2PointcutType(type);

          switch(pCutInfo->type = tmp) {
  case CALL:
         pCutInfo->name = "call"; break;
  case CALLP:
   pCutInfo->name = "callp"; break;
           case EXECUTION:
         pCutInfo->name = "execution"; break;
    case COMP_AND:
         pCutInfo->name = "compound_and"; break;
           case COMP_OR :
         pCutInfo->name = "compound_or"; break;
           case COMP_NOT :
         pCutInfo->name = "compound_not"; break;
           case ARGS :
                pCutInfo->name = "args"; break;
  case RESULT:
                pCutInfo->name = "result"; break;
           case INFILE:
         pCutInfo->name = "infile"; break;
  case INFUNC:
   pCutInfo->name = "infunc"; break;
  case CFLOW:
   pCutInfo->name = "cflow"; break;
         case PCNAME:
   pCutInfo->name = copy_chars(type); break;
  case INTYPE:
   pCutInfo->name = "intype"; break;
  case TRY:
   pCutInfo->name = "try"; break;
  case GETPC:
   pCutInfo->name = "get"; break;
  case SETPC:
   pCutInfo->name = "set" ; break;
  default:
   
# 242 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ((void) sizeof ((
# 242 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  0
# 242 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 242 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  0
# 242 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ) ; else __assert_fail (
# 242 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  "0"
# 242 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/pointcut.c", 242, __extension__ __PRETTY_FUNCTION__); }))
# 242 "/home/sd/ACC_v09/ACC/src/pointcut.c"
           ;
             }
      }else {
   
# 245 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ((void) sizeof ((
# 245 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  0
# 245 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 245 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  0
# 245 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ) ; else __assert_fail (
# 245 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  "0"
# 245 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/pointcut.c", 245, __extension__ __PRETTY_FUNCTION__); }))
# 245 "/home/sd/ACC_v09/ACC/src/pointcut.c"
           ;
 }
}

void setACName(char * id){
     if(pCutInfo!=
# 250 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                 ((void *)0)
# 250 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                     )
     
# 251 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
    ((void) sizeof ((
# 251 "/home/sd/ACC_v09/ACC/src/pointcut.c"
    1
# 251 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
    ) ? 1 : 0), __extension__ ({ if (
# 251 "/home/sd/ACC_v09/ACC/src/pointcut.c"
    1
# 251 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
    ) ; else __assert_fail (
# 251 "/home/sd/ACC_v09/ACC/src/pointcut.c"
    "1"
# 251 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
    , "/home/sd/ACC_v09/ACC/src/pointcut.c", 251, __extension__ __PRETTY_FUNCTION__); }))
# 251 "/home/sd/ACC_v09/ACC/src/pointcut.c"
             ;
        else
        
# 253 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ((void) sizeof ((
# 253 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       0
# 253 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 253 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       0
# 253 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ; else __assert_fail (
# 253 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       "0"
# 253 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/pointcut.c", 253, __extension__ __PRETTY_FUNCTION__); }))
# 253 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                ;
 if(currCheckFrame != 
# 254 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                     ((void *)0)
# 254 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                         ) {
     if(( state & 0x0000000000000100 ? 1 : 0)) {


   char buf[300];
   sprintf(buf, "*%s", id);
                        setId(buf);
   state &= ~0x0000000000000100;
  }
  else if(pCutInfo->type == CALL || pCutInfo->type == CALLP || pCutInfo->type == EXECUTION) {
                 if(( state & 0x0000000000000008 ? 1 : 0)) {
                         setACType(id);
                 }else if(currCheckFrame->curFunc->fname == 
# 266 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                                           ((void *)0)
# 266 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                                               ) {
                         if(pCutInfo->type == CALLP && strstr(id, "$")) {
     sem_error (1, errmsg_fmt[1]) ; return ;
    }

    setId(id);
   }else {
    setACType(id);
   }
                }
  else {
   setId(id);
  }

  if(currCheckFrame->type == ADFUNCDECL) {

   char * adName;

                        setAdviceType(id);
                        if(currAdvice->type == BEFORE ||
                           currAdvice->type == AFTER ||
                           currAdvice->type == INTRODUCE ||
      currAdvice->type == CATCH) {
                           if(currCheckFrame->curFunc->rtType != 
# 289 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                                                ((void *)0)
# 289 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                                                    ) {
    sem_error_i (2, errmsg_fmt[2], id ) ; return ;
      }
      s("void ");
                        }

                        getAdviceName(&adName);
                        s(adName);
  }else {
   s(id);
  }
   }
}

void setPointcutName(char * s) {
        
# 304 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ((void) sizeof ((
# 304 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       pCutInfo && pCutInfo->type == UNKNOWN_PC
# 304 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 304 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       pCutInfo && pCutInfo->type == UNKNOWN_PC
# 304 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ; else __assert_fail (
# 304 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       "pCutInfo && pCutInfo->type == UNKNOWN_PC"
# 304 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/pointcut.c", 304, __extension__ __PRETTY_FUNCTION__); }))
# 304 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                                       ;
        
# 305 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ((void) sizeof ((
# 305 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       currAdvice && currAdvice->type == UNKNOWN_AD
# 305 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 305 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       currAdvice && currAdvice->type == UNKNOWN_AD
# 305 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ; else __assert_fail (
# 305 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       "currAdvice && currAdvice->type == UNKNOWN_AD"
# 305 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/pointcut.c", 305, __extension__ __PRETTY_FUNCTION__); }))
# 305 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                                           ;

 if(text2PointcutType(s) != COMPOUND &&
           text2PointcutType(s) != PCNAME) {
  sem_error_i (3, errmsg_fmt[3], s ) ; return ;
 }

 if(text2PointcutType(s) == PCNAME && findPointcut(PointCutTable, s)) {
  sem_error_i (4, errmsg_fmt[4], s ) ; return ;
 }

        pCutInfo->type = NAMEDPC;
        pCutInfo->name = copy_chars(s);

        currAdvice->type = ADFORNAMEDPC;
}



void startPointcutInfo(){
   struct Record *tmp;
   pCutInfo = (struct Record *)createNewRecord(count);
   count++;
   tmp = PointCutTable;
   PointCutTable = pCutInfo;
   PointCutTable->next = tmp;

   state |= 0x0000000000000001;
}



void startAdFuncHeader() {
        
# 338 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ((void) sizeof ((
# 338 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       pCutInfo
# 338 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 338 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       pCutInfo
# 338 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ; else __assert_fail (
# 338 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       "pCutInfo"
# 338 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/pointcut.c", 338, __extension__ __PRETTY_FUNCTION__); }))
# 338 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                       ;
        addNewAdvice(&(pCutInfo->aList));
        state |= 0x0000000000000002;
}

void startAdReturnType() { state |= 0x0000000000000004 ; }
void startJPReturnType() { state |= 0x0000000000000008; }
void startAdFunctionBD() {
 state |= 0x0000000000000010;

 outputDefnBgnLn();

 if(currAdvice->type == INTRODUCE) {
  s("\n"); s("/* __utac__introduce__begin@ */"); s("\n");
 }

}

void startGetDynInfo() {
 pushAChildForCompPC(0);
}




void outputAdviceFuncBeginTag() {
 s("/* UTAC__ADVICEFUNCDECL__BEGIN__ */");
 s(" inline ");
}

void outputAdviceFuncEndTag() {
 s("\n") ;
        s("/* UTAC__ADVICEFUNCDECL__END__ */");
        s("\n");
}



void endPointcutInfo(){
 if(currAdvice && currAdvice->type == CATCH) {
  if(!pCutInfo || ! hasTryPCOnly(pCutInfo)) {
   sem_error (18, errmsg_fmt[18]) ; return ;
  }
  if(! currAdvice->p || currAdvice->p->next || currAdvice->p->usedInPC == 1) {
   sem_error (19, errmsg_fmt[19]) ; return ;
  }
 }

 if(currAdvice && currAdvice->p) {
  struct adviceParam * adp = currAdvice->p;
  while(adp) {
   if(adp->usedInPC == 0 && currAdvice->type != CATCH ) {
    sem_error_i (5, errmsg_fmt[5], adp->p.id ) ; return ;
   }
   adp = adp->next;
  }
 }

 pCutInfo = 
# 396 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
           ((void *)0)
# 396 "/home/sd/ACC_v09/ACC/src/pointcut.c"
               ;

 state &= ~0x0000000000000001;
}

void endAdFuncHeader(){ state &= ~0x0000000000000002; }
void endAdReturnType(){ state &= ~0x0000000000000004; }
void endJPReturnType(){ state &= ~0x0000000000000008; }

void endAdFunctionBD(){
        state &= ~0x0000000000000010;
        if(currAdvice->type == INTRODUCE) {
                s("\n"); s("/* __utac__introduce__end@   */"); s("\n");
        }
 if( (currAdvice->malInfo & 0x0000000000000800 || currAdvice->malInfo & 0x0000000000001000)
  && (isSJMPH_Emitted() == 0) ) {
                logGenDecls("#include <setjmp.h> \n", getCurrDefnLineNum());
  setSJMPH_Emitted();
 }

 if(currAdvice->malInfo) {
  logAroundDeclaration();
        }
 currAdvice = 
# 419 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
             ((void *)0)
# 419 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                 ;
 state = 0;

}

void endGetDynInfo(){
        struct Record * currRec;
        popChild();
        currRec = pCutInfo;
        switch(currRec->type) {
  case CFLOW:
          addPointCutToCFlowTable(currRec->info.childPC);
   break;
  case TRY:
                        if(!currAdvice || currAdvice->type != CATCH) {
    sem_error (18, errmsg_fmt[18]) ; return ;
   }
   addPointCutToTryTable(currRec->info.childPC, currAdvice);
                        break;
  default:
   
# 439 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ((void) sizeof ((
# 439 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  0
# 439 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 439 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  0
# 439 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ) ; else __assert_fail (
# 439 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  "0"
# 439 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/pointcut.c", 439, __extension__ __PRETTY_FUNCTION__); }))
# 439 "/home/sd/ACC_v09/ACC/src/pointcut.c"
           ;
 }
}

void endPointcutName() { endAdFuncHeader(); }

void endACParamDeclCollection() {
 struct checkFrame * oldFrame = currCheckFrame;

 
# 448 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
((void) sizeof ((
# 448 "/home/sd/ACC_v09/ACC/src/pointcut.c"
currCheckFrame
# 448 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 448 "/home/sd/ACC_v09/ACC/src/pointcut.c"
currCheckFrame
# 448 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
) ; else __assert_fail (
# 448 "/home/sd/ACC_v09/ACC/src/pointcut.c"
"currCheckFrame"
# 448 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
, "/home/sd/ACC_v09/ACC/src/pointcut.c", 448, __extension__ __PRETTY_FUNCTION__); }))
# 448 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                      ;

 if(currCheckFrame->parent) {

  if(( state & 0x0000000000000008 ? 1 : 0) == 1) {
   currCheckFrame->parent->curFunc->rtType =
    copy_chars(currCheckFrame->curFunc->rtType);
  }else {
   addParamToFunc(currCheckFrame->parent, currCheckFrame);
  }
 }else {
  switch(currCheckFrame->type) {
   case ADFUNCDECL:
    
# 461 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ((void) sizeof ((
# 461 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   currAdvice
# 461 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ) ? 1 : 0), __extension__ ({ if (
# 461 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   currAdvice
# 461 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ) ; else __assert_fail (
# 461 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   "currAdvice"
# 461 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   , "/home/sd/ACC_v09/ACC/src/pointcut.c", 461, __extension__ __PRETTY_FUNCTION__); }))
# 461 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                     ;
    
# 462 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ((void) sizeof ((
# 462 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   currAdvice->rtType == 
# 462 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ((void *)0)) ? 1 : 0), __extension__ ({ if (
# 462 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   currAdvice->rtType == 
# 462 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ((void *)0)) ; else __assert_fail (
# 462 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   "currAdvice->rtType == NULL"
# 462 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   , "/home/sd/ACC_v09/ACC/src/pointcut.c", 462, __extension__ __PRETTY_FUNCTION__); }))
# 462 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                     ;
    
# 463 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ((void) sizeof ((
# 463 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   (currAdvice->malInfo & 0x0000000000000400) ==0
# 463 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ) ? 1 : 0), __extension__ ({ if (
# 463 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   (currAdvice->malInfo & 0x0000000000000400) ==0
# 463 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ) ; else __assert_fail (
# 463 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   "(currAdvice->malInfo & HASPROCEED) ==FALSE"
# 463 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   , "/home/sd/ACC_v09/ACC/src/pointcut.c", 463, __extension__ __PRETTY_FUNCTION__); }))
# 463 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                                     ;
           
# 464 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
          ((void) sizeof ((
# 464 "/home/sd/ACC_v09/ACC/src/pointcut.c"
          (currAdvice->malInfo & 0x0000000000002000) == 0
# 464 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
          ) ? 1 : 0), __extension__ ({ if (
# 464 "/home/sd/ACC_v09/ACC/src/pointcut.c"
          (currAdvice->malInfo & 0x0000000000002000) == 0
# 464 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
          ) ; else __assert_fail (
# 464 "/home/sd/ACC_v09/ACC/src/pointcut.c"
          "(currAdvice->malInfo & HASTHISJPN) == FALSE"
# 464 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
          , "/home/sd/ACC_v09/ACC/src/pointcut.c", 464, __extension__ __PRETTY_FUNCTION__); }))
# 464 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                                             ;
                         
# 465 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                        ((void) sizeof ((
# 465 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                        currAdvice->cflowCondition==
# 465 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                        ((void *)0)) ? 1 : 0), __extension__ ({ if (
# 465 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                        currAdvice->cflowCondition==
# 465 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                        ((void *)0)) ; else __assert_fail (
# 465 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                        "currAdvice->cflowCondition==NULL"
# 465 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                        , "/home/sd/ACC_v09/ACC/src/pointcut.c", 465, __extension__ __PRETTY_FUNCTION__); }))
# 465 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                                                ;

    currAdvice->rtType= copy_chars(currCheckFrame->curFunc->rtType);
           currAdvice->p = create_advice_parameter(currCheckFrame->curFunc->p);
    break;
   case PCMATCHING:
    createPointcutMatchingInfo(currCheckFrame);
    break;
   default: 
# 473 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
           ((void) sizeof ((
# 473 "/home/sd/ACC_v09/ACC/src/pointcut.c"
           0
# 473 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
           ) ? 1 : 0), __extension__ ({ if (
# 473 "/home/sd/ACC_v09/ACC/src/pointcut.c"
           0
# 473 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
           ) ; else __assert_fail (
# 473 "/home/sd/ACC_v09/ACC/src/pointcut.c"
           "0"
# 473 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
           , "/home/sd/ACC_v09/ACC/src/pointcut.c", 473, __extension__ __PRETTY_FUNCTION__); }))
# 473 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                    ;
  }
 }

 currCheckFrame = currCheckFrame->parent;

 free_func(oldFrame->curFunc);
        free_declframe(oldFrame);
}




void isPointcutInfo(long *flag) { *flag = ( state & 0x0000000000000001 ? 1 : 0); }
void isAdFuncHeader(long *flag) { *flag = ( state & 0x0000000000000002 ? 1 : 0); }
void isAdFunctionBD(long *flag) { *flag = ( state & 0x0000000000000010 ? 1 : 0); }

void checkKeywordInAdvice(char * s, long *flag) {
 if(match_name("proceed", s)) *flag = PROCEED;
 else if(match_name("preturn", s)) { printf("i'm in\n");
 *flag = PRETURN;}
 else if(match_name("throw", s)) *flag = THROW;
 else if(match_name("this", s)) *flag = THIS;
 else if(match_name("arg", s)) * flag = ARG;
 else if(match_name("argType", s)) * flag = ARGTYPE;
 else *flag = UNKNOWN_ADKEYWORD;
}




void assertKeyword(char * s, char * keyword) {
 if( ! match_name(keyword, s) ) {
  sem_error_ii (16, errmsg_fmt[16], keyword, s ); return ;
 }
}

void assert2Keywords(char * s, char * keyword1, char * keyword2) {
        if( ! match_name(keyword1, s) && ! match_name(keyword2, s)) {
                char buf[1000];
                sprintf(buf, "%s or %s", keyword1, keyword2);
                sem_error_ii (16, errmsg_fmt[16], buf, s ); return ;
        }
}
# 525 "/home/sd/ACC_v09/ACC/src/pointcut.c"
char * checkContextExposureInCflow(struct Record *pc, char * fName, int * index) {
 struct pointcutParam *p;
 char * cFunc = 
# 527 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
               ((void *)0)
# 527 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                   ;
 char * fCall = 
# 528 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
               ((void *)0)
# 528 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                   ;
 char buf[300];
 char buf2[1000];
 
# 531 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
((void) sizeof ((
# 531 "/home/sd/ACC_v09/ACC/src/pointcut.c"
pc && pc->type == ARGS
# 531 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 531 "/home/sd/ACC_v09/ACC/src/pointcut.c"
pc && pc->type == ARGS
# 531 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
) ; else __assert_fail (
# 531 "/home/sd/ACC_v09/ACC/src/pointcut.c"
"pc && pc->type == ARGS"
# 531 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
, "/home/sd/ACC_v09/ACC/src/pointcut.c", 531, __extension__ __PRETTY_FUNCTION__); }))
# 531 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                              ;
 p = pc->info.mInfo->p;
 while(p != 
# 533 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
           ((void *)0)
# 533 "/home/sd/ACC_v09/ACC/src/pointcut.c"
               ) {
                if(p->ap != 
# 534 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                           ((void *)0)
# 534 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                               ) {
   if(cFunc == 
# 535 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
              ((void *)0)
# 535 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                  ) {
    sprintf(buf, "%s_%d", fName, cflowArgCounter++);
    cFunc = (char *)malloc(strlen(buf) + 1);
    sprintf(cFunc, "%s", buf);
   }
          sprintf(buf2, "%s ( %d , %d, 0 ) ", cFunc, 2, *index);
   *index = *index + 1;
          fCall = (char *)malloc(strlen(buf2) + 1);
          sprintf(fCall, "%s", buf2);
          if(p->ap->callCflowContextFunc) if(p->ap->callCflowContextFunc) free(p->ap->callCflowContextFunc);
   p->ap->callCflowContextFunc = fCall;
  }
  p = p->next;
 }
 return cFunc;
}



struct Record * createNewRecord(int id){
 struct Record *tmp;
 tmp = (struct Record *)malloc(sizeof(struct Record));
        tmp->id = id;
    tmp->name = 
# 558 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
               ((void *)0)
# 558 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                   ;
    tmp->type = UNKNOWN_PC;
 tmp->aList = 
# 560 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
             ((void *)0)
# 560 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                 ;
    tmp->next = 
# 561 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
               ((void *)0)
# 561 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                   ;
 tmp->cflowFuncName = 
# 562 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                     ((void *)0)
# 562 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                         ;

    tmp->info.mInfo = 
# 564 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                     ((void *)0)
# 564 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                         ;
   tmp->info.childPCs[0] = 
# 565 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                          ((void *)0)
# 565 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                              ;
 tmp->info.childPCs[1] = 
# 566 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                        ((void *)0)
# 566 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                            ;
 tmp->info.childPC = 
# 567 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                    ((void *)0)
# 567 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                        ;
 tmp->info.inside = 
# 568 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                   ((void *)0)
# 568 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                       ;

 tmp->parentPC = 
# 570 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                ((void *)0)
# 570 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                    ;

 return tmp;
}


void createNewArgIndex(struct adviceParam * adParam, struct Context * c, int initValue) {
 struct argIndexInContext * newArgIndex = 
# 577 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                         ((void *)0)
# 577 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                             ;
 newArgIndex = (struct argIndexInContext *)(malloc(sizeof(struct argIndexInContext)));

 newArgIndex->c = c;
        newArgIndex->argIndex = initValue;
        newArgIndex->nextContext = adParam->indexInContext;
 adParam->indexInContext = newArgIndex;
}


struct argIndexInContext * copy_argindex_incontext(struct argIndexInContext * ori) {
 struct argIndexInContext * new = 
# 588 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                 ((void *)0)
# 588 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                     ;
 if(ori != 
# 589 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
          ((void *)0)
# 589 "/home/sd/ACC_v09/ACC/src/pointcut.c"
              ) {
  new = (struct argIndexInContext *)malloc(sizeof(struct argIndexInContext));
  
# 591 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
 ((void) sizeof ((
# 591 "/home/sd/ACC_v09/ACC/src/pointcut.c"
 new
# 591 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
 ) ? 1 : 0), __extension__ ({ if (
# 591 "/home/sd/ACC_v09/ACC/src/pointcut.c"
 new
# 591 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
 ) ; else __assert_fail (
# 591 "/home/sd/ACC_v09/ACC/src/pointcut.c"
 "new"
# 591 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
 , "/home/sd/ACC_v09/ACC/src/pointcut.c", 591, __extension__ __PRETTY_FUNCTION__); }))
# 591 "/home/sd/ACC_v09/ACC/src/pointcut.c"
            ;
  new->argIndex = ori->argIndex;
  new->c = ori->c;
  new->nextContext = copy_argindex_incontext(ori->nextContext);
 }
 return new;




}


char * createAdName(char *fname, int counter){
        char *temp;



 temp = (char *)malloc(strlen("utac_acc") + strlen(fname) + 6 + 4 + 1);
        sprintf(temp, "__%s__%s__%d", "utac_acc", fname, counter);
 return temp;
}



char * create_dot_types(struct Param * p) {
 char * type ;
 char * result;
 char * restStr;
 if(p == 
# 620 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
        ((void *)0)
# 620 "/home/sd/ACC_v09/ACC/src/pointcut.c"
            ) return 
# 620 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                     ((void *)0)
# 620 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                         ;

 restStr = create_dot_types(p->next);

 type = (p->type ? p->type : p->id);

 if(restStr == 
# 626 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
              ((void *)0)
# 626 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                  ) return copy_chars(type);

 result = add_chars_with_dot(type, restStr);

 free(restStr);
 return result;
}



struct pointcutParam * create_pointcut_param(struct Param * p) {
 struct pointcutParam * pp = 
# 637 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                            ((void *)0)
# 637 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                ;
 struct pointcutParam * rest = 
# 638 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                              ((void *)0)
# 638 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                  ;
 if(p == 
# 639 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
        ((void *)0)
# 639 "/home/sd/ACC_v09/ACC/src/pointcut.c"
            ) return 
# 639 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                     ((void *)0)
# 639 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                         ;

 pp = (struct pointcutParam*)malloc(sizeof(struct pointcutParam));

 pp->ap = 
# 643 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
         ((void *)0)
# 643 "/home/sd/ACC_v09/ACC/src/pointcut.c"
             ;

 
# 645 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
((void) sizeof ((
# 645 "/home/sd/ACC_v09/ACC/src/pointcut.c"
currAdvice
# 645 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 645 "/home/sd/ACC_v09/ACC/src/pointcut.c"
currAdvice
# 645 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
) ; else __assert_fail (
# 645 "/home/sd/ACC_v09/ACC/src/pointcut.c"
"currAdvice"
# 645 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
, "/home/sd/ACC_v09/ACC/src/pointcut.c", 645, __extension__ __PRETTY_FUNCTION__); }))
# 645 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                  ;


 if(p->id == 
# 648 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
            ((void *)0) 
# 648 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                 || strstr(p->id, "__utac__para") == p->id ) {
  
# 649 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
 ((void) sizeof ((
# 649 "/home/sd/ACC_v09/ACC/src/pointcut.c"
 p->type
# 649 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
 ) ? 1 : 0), __extension__ ({ if (
# 649 "/home/sd/ACC_v09/ACC/src/pointcut.c"
 p->type
# 649 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
 ) ; else __assert_fail (
# 649 "/home/sd/ACC_v09/ACC/src/pointcut.c"
 "p->type"
# 649 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
 , "/home/sd/ACC_v09/ACC/src/pointcut.c", 649, __extension__ __PRETTY_FUNCTION__); }))
# 649 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                ;
  pp->p.id = 
# 650 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
            ((void *)0)
# 650 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                ;
  pp->p.type = copy_chars(p->type);
  pp->ap = 
# 652 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
          ((void *)0)
# 652 "/home/sd/ACC_v09/ACC/src/pointcut.c"
              ;
 }else if(p->type == 
# 653 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                    ((void *)0)
# 653 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                        ) {
  struct Param * adParam;
  boolean matchAddress = 0;
  char * id = p->id;

  
# 658 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
 ((void) sizeof ((
# 658 "/home/sd/ACC_v09/ACC/src/pointcut.c"
 p->id
# 658 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
 ) ? 1 : 0), __extension__ ({ if (
# 658 "/home/sd/ACC_v09/ACC/src/pointcut.c"
 p->id
# 658 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
 ) ; else __assert_fail (
# 658 "/home/sd/ACC_v09/ACC/src/pointcut.c"
 "p->id"
# 658 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
 , "/home/sd/ACC_v09/ACC/src/pointcut.c", 658, __extension__ __PRETTY_FUNCTION__); }))
# 658 "/home/sd/ACC_v09/ACC/src/pointcut.c"
              ;
               if(*(id) == '*') {
   matchAddress = 1;
   id++;
  }

  adParam = findParam((struct Param*)(currAdvice->p), id);
                if(adParam) {
   if( ((struct adviceParam*)(adParam))->usedInPC == 0) {
    ((struct adviceParam*)(adParam))->usedInPC = 1;
   }else {
    free(pp);
    sem_error_i (6, errmsg_fmt[6], id ) ; return 
# 670 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ((void *)0)
# 670 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                            ;
   }

   pp->p.id = copy_chars(id);
   pp->p.type = copy_chars(adParam->type);

   if(matchAddress == 1) {
                         int len = strlen(pp->p.type);
                         
# 678 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                        ((void) sizeof ((
# 678 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                        pp->p.type[len-1] == '*'
# 678 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                        ) ? 1 : 0), __extension__ ({ if (
# 678 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                        pp->p.type[len-1] == '*'
# 678 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                        ) ; else __assert_fail (
# 678 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                        "pp->p.type[len-1] == '*'"
# 678 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                        , "/home/sd/ACC_v09/ACC/src/pointcut.c", 678, __extension__ __PRETTY_FUNCTION__); }))
# 678 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                                        ;
                         pp->p.type[len-1] = '\0';
                         ((struct adviceParam*)adParam)->matchAddress = 1;
                 }

   pp->ap = (struct adviceParam*)(adParam);
  }else {
   if(matchAddress == 1) {
                         free(pp);
    sem_error_ii (7, errmsg_fmt[7], id, "args" ); return 
# 687 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ((void *)0)
# 687 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                            ;
   }else if(pCutInfo->type == PCNAME) {
    free(pp);
    sem_error_ii (7, errmsg_fmt[7], id, pCutInfo->name ); return 
# 690 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ((void *)0)
# 690 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                                  ;
   }


   pp->p.id = 
# 694 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
             ((void *)0)
# 694 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                 ;
   pp->p.type = copy_chars(p->id);
  }

 }else 
# 698 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
      ((void) sizeof ((
# 698 "/home/sd/ACC_v09/ACC/src/pointcut.c"
      0
# 698 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
      ) ? 1 : 0), __extension__ ({ if (
# 698 "/home/sd/ACC_v09/ACC/src/pointcut.c"
      0
# 698 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
      ) ; else __assert_fail (
# 698 "/home/sd/ACC_v09/ACC/src/pointcut.c"
      "0"
# 698 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
      , "/home/sd/ACC_v09/ACC/src/pointcut.c", 698, __extension__ __PRETTY_FUNCTION__); }))
# 698 "/home/sd/ACC_v09/ACC/src/pointcut.c"
               ;

 rest = create_pointcut_param(p->next);

 pp->p.next = (struct Param *)(rest);
 pp->next = rest;

        return pp;
}

struct adviceParam * create_advice_parameter(struct Param * p) {
        struct adviceParam * ap = 
# 709 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                 ((void *)0)
# 709 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                     ;
        struct adviceParam * rest = 
# 710 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                   ((void *)0)
# 710 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                       ;
        if(p == 
# 711 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
               ((void *)0)
# 711 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                   ) return 
# 711 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                            ((void *)0)
# 711 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                ;

        ap = (struct adviceParam*)malloc(sizeof(struct adviceParam));

        
# 715 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ((void) sizeof ((
# 715 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       currAdvice
# 715 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 715 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       currAdvice
# 715 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ; else __assert_fail (
# 715 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       "currAdvice"
# 715 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/pointcut.c", 715, __extension__ __PRETTY_FUNCTION__); }))
# 715 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                         ;

 ap->p.id = copy_chars(p->id);
 ap->p.type = copy_chars(p->type);

 ap->indexInContext = 
# 720 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                     ((void *)0)
# 720 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                         ;
        createNewArgIndex(ap, 
# 721 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                             ((void *)0)
# 721 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                 , -1);

 ap->matchAddress = 0;
 ap->usedInPC = 0;
 ap->callCflowContextFunc = 
# 725 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                           ((void *)0)
# 725 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                               ;
 rest = create_advice_parameter(p->next);

        ap->p.next = (struct Param *)(rest);
        ap->next = rest;

 return ap;
}


void createPointcutMatchingInfo(struct checkFrame * cf) {
 
# 736 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
((void) sizeof ((
# 736 "/home/sd/ACC_v09/ACC/src/pointcut.c"
pCutInfo->info.mInfo == 
# 736 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
((void *)0)) ? 1 : 0), __extension__ ({ if (
# 736 "/home/sd/ACC_v09/ACC/src/pointcut.c"
pCutInfo->info.mInfo == 
# 736 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
((void *)0)) ; else __assert_fail (
# 736 "/home/sd/ACC_v09/ACC/src/pointcut.c"
"pCutInfo->info.mInfo == NULL"
# 736 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
, "/home/sd/ACC_v09/ACC/src/pointcut.c", 736, __extension__ __PRETTY_FUNCTION__); }))
# 736 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                    ;
        
# 737 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ((void) sizeof ((
# 737 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       pCutInfo->type == CALL || pCutInfo->type == CALLP || pCutInfo->type == EXECUTION || pCutInfo->type == ARGS || pCutInfo->type == RESULT || pCutInfo->type == PCNAME || pCutInfo->type == INTYPE || pCutInfo->type == INFILE || pCutInfo->type == INFUNC || pCutInfo->type == GETPC || pCutInfo->type == SETPC
# 737 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 737 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       pCutInfo->type == CALL || pCutInfo->type == CALLP || pCutInfo->type == EXECUTION || pCutInfo->type == ARGS || pCutInfo->type == RESULT || pCutInfo->type == PCNAME || pCutInfo->type == INTYPE || pCutInfo->type == INFILE || pCutInfo->type == INFUNC || pCutInfo->type == GETPC || pCutInfo->type == SETPC
# 737 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ; else __assert_fail (
# 737 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       "pCutInfo->type == CALL || pCutInfo->type == CALLP || pCutInfo->type == EXECUTION || pCutInfo->type == ARGS || pCutInfo->type == RESULT || pCutInfo->type == PCNAME || pCutInfo->type == INTYPE || pCutInfo->type == INFILE || pCutInfo->type == INFUNC || pCutInfo->type == GETPC || pCutInfo->type == SETPC"
# 737 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/pointcut.c", 737, __extension__ __PRETTY_FUNCTION__); }))
# 747 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                        ;

 
# 749 "/home/sd/ACC_v09/ACC/src/pointcut.c"
if(currAdvice->type != ADFORNAMEDPC) {
  if(pCutInfo->type == INTYPE && currAdvice->type != INTRODUCE) {
                 sem_error (8, errmsg_fmt[8]) ; return ;
  }
  if(currAdvice->type == INTRODUCE && hasIntypePCOnly(pCutInfo) == 0) {
   sem_error (9, errmsg_fmt[9]) ; return ;
  }




 }

 if( pCutInfo->type == RESULT || pCutInfo->type == INTYPE ||
            pCutInfo->type == INFUNC) {
  if(cf->curFunc->p == 
# 764 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                      ((void *)0) 
# 764 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                           || cf->curFunc->p->next != 
# 764 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                                      ((void *)0)
# 764 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                                          ) {
                        sem_error_i (17, errmsg_fmt[17], pCutInfo->name ) ; return ;
  }
 }else if(pCutInfo->type == INFILE && cf->curFunc->fname == 
# 767 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                                           ((void *)0)
# 767 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                                               ) {
   sem_error_i (17, errmsg_fmt[17], pCutInfo->name ) ; return ;
 }

 switch(pCutInfo->type) {
  case INFUNC:
   pCutInfo->info.inside = copy_chars(cf->curFunc->p->id);
   return;
  case INFILE:
   pCutInfo->info.inside = copy_chars(cf->curFunc->fname);
   return;
  default:
          pCutInfo->info.mInfo = (struct matchInfo *)malloc(sizeof(struct matchInfo));
          pCutInfo->info.mInfo->funcName = 
# 780 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                          ((void *)0)
# 780 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                              ;
          pCutInfo->info.mInfo->rtType = 
# 781 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                        ((void *)0)
# 781 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                            ;
          pCutInfo->info.mInfo->p = 
# 782 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                   ((void *)0)
# 782 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                       ;
 }

 switch(pCutInfo->type) {
  case CALL:
  case CALLP:
  case EXECUTION:
   pCutInfo->info.mInfo->funcName = copy_chars(cf->curFunc->fname);
   pCutInfo->info.mInfo->rtType = copy_chars(cf->curFunc->rtType);
   pCutInfo->info.mInfo->p = create_pointcut_param(cf->curFunc->p);
   break;
  case SETPC:
   
# 794 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ((void) sizeof ((
# 794 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  cf->curFunc->p
# 794 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 794 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  cf->curFunc->p
# 794 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ) ; else __assert_fail (
# 794 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  "cf->curFunc->p"
# 794 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/pointcut.c", 794, __extension__ __PRETTY_FUNCTION__); }))
# 794 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                        ;
                        pCutInfo->info.mInfo->funcName = copy_chars(cf->curFunc->fname);
                        pCutInfo->info.mInfo->rtType =
                                create_dot_types(cf->curFunc->p);
                        {



                                struct pointcutParam * pp1 = (struct pointcutParam *)malloc(sizeof(struct pointcutParam));
                                struct pointcutParam * pp2 = (struct pointcutParam *)malloc(sizeof(struct pointcutParam));

    pp1->p.id = 
# 805 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
               ((void *)0)
# 805 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                   ;
                                pp1->p.type = copy_chars(pCutInfo->info.mInfo->rtType);
                                addStarToType(&(pp1->p.type));
    pp1->p.next = (struct Param *)pp2;
                                pp1->ap = 
# 809 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                         ((void *)0)
# 809 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                             ;
                                pp1->next = pp2;

    pp2->p.id = 
# 812 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
               ((void *)0)
# 812 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                   ;
                                pp2->p.type = copy_chars(pCutInfo->info.mInfo->rtType);
    pp2->p.next = 
# 814 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                 ((void *)0)
# 814 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                     ;
                                pp2->ap = 
# 815 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                         ((void *)0)
# 815 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                             ;
    pp2->next = 
# 816 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
               ((void *)0)
# 816 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                   ;

    pCutInfo->info.mInfo->p = pp1;
                        }
                        break;

  case GETPC:
                        
# 823 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                       ((void) sizeof ((
# 823 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                       cf->curFunc->p
# 823 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                       ) ? 1 : 0), __extension__ ({ if (
# 823 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                       cf->curFunc->p
# 823 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                       ) ; else __assert_fail (
# 823 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                       "cf->curFunc->p"
# 823 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                       , "/home/sd/ACC_v09/ACC/src/pointcut.c", 823, __extension__ __PRETTY_FUNCTION__); }))
# 823 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                             ;
   pCutInfo->info.mInfo->funcName = copy_chars(cf->curFunc->fname);
                        pCutInfo->info.mInfo->rtType =
    create_dot_types(cf->curFunc->p);
                        {

    struct pointcutParam * pp = (struct pointcutParam *)malloc(sizeof(struct pointcutParam));
    pp->p.id = 
# 830 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
              ((void *)0)
# 830 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                  ;


    pp->p.type = copy_chars(pCutInfo->info.mInfo->rtType);
    pp->p.next = 
# 834 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                ((void *)0)
# 834 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                    ;
    pp->ap = 
# 835 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
            ((void *)0)
# 835 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                ;
    pp->next = 
# 836 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
              ((void *)0)
# 836 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                  ;
    pCutInfo->info.mInfo->p = pp;
   }
                        break;
  case ARGS:
              pCutInfo->info.mInfo->rtType = copy_chars("$");
               pCutInfo->info.mInfo->funcName = copy_chars("$");
         case INTYPE:
  case PCNAME:

   pCutInfo->info.mInfo->p = create_pointcut_param(cf->curFunc->p);
   if(pCutInfo->type == PCNAME) {


    struct Record * pc = findPointcut(PointCutTable, pCutInfo->name);
    if(pc == 
# 851 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
            ((void *)0)
# 851 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                ) {
                          sem_error_i (0, errmsg_fmt[0], pCutInfo->name ) ; return ;
    }

    if(! match_parameters(pCutInfo->info.mInfo->p,
            (struct Param *)(pc->aList->p),
            0,
            0,
            
# 859 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
           ((void *)0)
# 859 "/home/sd/ACC_v09/ACC/src/pointcut.c"
               )) {
     sem_error_i (10, errmsg_fmt[10], pCutInfo->name ) ; return ;
    }
   }
   break;
  case RESULT:
               pCutInfo->info.mInfo->funcName = copy_chars("$");

   if(cf->curFunc->p->type) {
    pCutInfo->info.mInfo->rtType = copy_chars(cf->curFunc->p->type);
   }else {

    struct Param * adParam;
    boolean matchAddress = 0;

    
# 874 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ((void) sizeof ((
# 874 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   cf->curFunc->p->id
# 874 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ) ? 1 : 0), __extension__ ({ if (
# 874 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   cf->curFunc->p->id
# 874 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   ) ; else __assert_fail (
# 874 "/home/sd/ACC_v09/ACC/src/pointcut.c"
   "cf->curFunc->p->id"
# 874 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
   , "/home/sd/ACC_v09/ACC/src/pointcut.c", 874, __extension__ __PRETTY_FUNCTION__); }))
# 874 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                             ;
                  
# 875 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                 ((void) sizeof ((
# 875 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                 currAdvice
# 875 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                 ) ? 1 : 0), __extension__ ({ if (
# 875 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                 currAdvice
# 875 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                 ) ; else __assert_fail (
# 875 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                 "currAdvice"
# 875 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                 , "/home/sd/ACC_v09/ACC/src/pointcut.c", 875, __extension__ __PRETTY_FUNCTION__); }))
# 875 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                   ;

                  if(*(cf->curFunc->p->id) == '*') {
                          matchAddress = 1;
                          cf->curFunc->p->id++;
                  }

    adParam = findParam((struct Param*)(currAdvice->p), cf->curFunc->p->id);
                  if(adParam) {
                   if( ((struct adviceParam*)(adParam))->usedInPC == 0) {
                                  ((struct adviceParam*)(adParam))->usedInPC = 1;
                          }else {
                                  sem_error_i (6, errmsg_fmt[6], cf->curFunc->p->id ) ; return ;
     }

     pCutInfo->info.mInfo->rtType = copy_chars(adParam->type);
                   if(matchAddress == 1) {
                                  int len = strlen(pCutInfo->info.mInfo->rtType);
                                  
# 893 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                 ((void) sizeof ((
# 893 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                 pCutInfo->info.mInfo->rtType[len-1] == '*'
# 893 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                 ) ? 1 : 0), __extension__ ({ if (
# 893 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                 pCutInfo->info.mInfo->rtType[len-1] == '*'
# 893 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                 ) ; else __assert_fail (
# 893 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                 "pCutInfo->info.mInfo->rtType[len-1] == '*'"
# 893 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                 , "/home/sd/ACC_v09/ACC/src/pointcut.c", 893, __extension__ __PRETTY_FUNCTION__); }))
# 893 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                                                                   ;
                                  pCutInfo->info.mInfo->rtType[len-1] = '\0';
                                  ((struct adviceParam*)adParam)->matchAddress = 1;
                           cf->curFunc->p->id --;
     }

     
# 899 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
    ((void) sizeof ((
# 899 "/home/sd/ACC_v09/ACC/src/pointcut.c"
    ((struct adviceParam*)(adParam))->indexInContext->argIndex == -1
# 899 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
    ) ? 1 : 0), __extension__ ({ if (
# 899 "/home/sd/ACC_v09/ACC/src/pointcut.c"
    ((struct adviceParam*)(adParam))->indexInContext->argIndex == -1
# 899 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
    ) ; else __assert_fail (
# 899 "/home/sd/ACC_v09/ACC/src/pointcut.c"
    "((struct adviceParam*)(adParam))->indexInContext->argIndex == -1"
# 899 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
    , "/home/sd/ACC_v09/ACC/src/pointcut.c", 899, __extension__ __PRETTY_FUNCTION__); }))
# 899 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                                                             ;
                          ((struct adviceParam*)(adParam))->indexInContext->argIndex= 0;
    }else {


     pCutInfo->info.mInfo->rtType = copy_chars(cf->curFunc->p->id);
    }
   }
   break;
  default:
   
# 909 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ((void) sizeof ((
# 909 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  0
# 909 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 909 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  0
# 909 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ) ; else __assert_fail (
# 909 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  "0"
# 909 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/pointcut.c", 909, __extension__ __PRETTY_FUNCTION__); }))
# 909 "/home/sd/ACC_v09/ACC/src/pointcut.c"
           ;
 }
}



void free_pointcut(struct Record * table) {
 struct Record * rec = table;
 if(rec == 
# 917 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
          ((void *)0)
# 917 "/home/sd/ACC_v09/ACC/src/pointcut.c"
              ) return;
 free_pointcut(rec->next);

        if(rec->type == PCNAME || rec->type == NAMEDPC) if(rec->name) free(rec->name);

 if(rec->cflowFuncName) free(rec->cflowFuncName);

 free_matchinginfo(rec);
 free_advices(rec->aList);
 if(rec) free(rec);
}

void free_advices(struct advice * a) {
 struct advice * ad = a;
 if(ad == 
# 931 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
         ((void *)0)
# 931 "/home/sd/ACC_v09/ACC/src/pointcut.c"
             ) return;
 if(ad->name) free(ad->name);
 if(ad->rtType) free(ad->rtType);
 if(ad->acFileBaseName) free(ad->acFileBaseName);
 if(ad->cflowCondition) free(ad->cflowCondition);
 free_advice_param(ad->p);

 if(ad) free(ad);

}

void free_advice_param(struct adviceParam *p) {
 if(p == 
# 943 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
        ((void *)0)
# 943 "/home/sd/ACC_v09/ACC/src/pointcut.c"
            ) return;
 free_advice_param(p->next);
 free_argIndexInContext(p->indexInContext);
 if(p->p.type) free(p->p.type);
 if(p->p.id) free(p->p.id);
 if(p->callCflowContextFunc) free(p->callCflowContextFunc);
 if(p) free(p);
}

void free_argIndexInContext(struct argIndexInContext * arg) {
 if(arg == 
# 953 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
          ((void *)0)
# 953 "/home/sd/ACC_v09/ACC/src/pointcut.c"
              ) return;
 free_argIndexInContext(arg->nextContext);
 if(arg) free(arg);
}

void free_matchinginfo(struct Record * rec) {
 switch(rec->type) {
  case CALL : case CALLP : case EXECUTION :
  case ARGS : case RESULT : case PCNAME :
  case INTYPE : case GETPC : case SETPC :
                 free_matchinginfo_struct(rec->info.mInfo); break;
  case COMP_AND : case COMP_OR:
                 free_pointcut(rec->info.childPCs[0]);
                 free_pointcut(rec->info.childPCs[1]);
   break;
  case COMP_NOT : case NAMEDPC : case CFLOW : case TRY:
                 free_pointcut(rec->info.childPC);
   break;
  case INFUNC : case INFILE:
                 if(rec->info.inside) free(rec->info.inside);
   break;
  default:
                 
# 975 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                ((void) sizeof ((
# 975 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                0
# 975 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                ) ? 1 : 0), __extension__ ({ if (
# 975 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                0
# 975 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                ) ; else __assert_fail (
# 975 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                "0"
# 975 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                , "/home/sd/ACC_v09/ACC/src/pointcut.c", 975, __extension__ __PRETTY_FUNCTION__); }))
# 975 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                         ;
        }
}

void free_matchinginfo_struct(struct matchInfo * info) {
 if(info == 
# 980 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
           ((void *)0)
# 980 "/home/sd/ACC_v09/ACC/src/pointcut.c"
               ) return;
        free_pointcut_param(info->p);
        if(info->funcName) free(info->funcName);
        if(info->rtType) free(info->rtType);
        if(info) free(info);
}

void free_pointcut_param(struct pointcutParam * pp) {
 if(pp == 
# 988 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
         ((void *)0)
# 988 "/home/sd/ACC_v09/ACC/src/pointcut.c"
             ) return;
        free_pointcut_param(pp->next);
        if(pp->p.type) free(pp->p.type);
        if(pp->p.id) free(pp->p.id);
        if(pp) free(pp);

}

void free_argspc_in_cflow(struct ArgsInCflow * args) {
 if(args == 
# 997 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
           ((void *)0)
# 997 "/home/sd/ACC_v09/ACC/src/pointcut.c"
               ) return;
 free_argspc_in_cflow(args->next);
 if(args->funcName) free(args->funcName);
 if(args) free(args);
}

void free_cflowTable(struct CFlowRecord * cflow) {
 if(cflow == 
# 1004 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
            ((void *)0)
# 1004 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                ) return;
 free_cflowTable(cflow->next);
        free_argspc_in_cflow(cflow->argsPCs);
 if(cflow) free(cflow);
}

void free_tryTable(struct TryRecord * tryPtr) {
 if(tryPtr == 
# 1011 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
             ((void *)0)
# 1011 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                 ) return;
 free_tryTable(tryPtr->next);
 if(tryPtr) free(tryPtr);
}






void setInsideFile(char * s) {
 if(pCutInfo && (pCutInfo->type == INFILE) && pCutInfo->info.inside == 
# 1022 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                                                      ((void *)0)
# 1022 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                                                          ) {
  setACName(++s);
 }
}

void setFoundAdKeyword(int flag) {
 
# 1028 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
((void) sizeof ((
# 1028 "/home/sd/ACC_v09/ACC/src/pointcut.c"
currAdvice
# 1028 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 1028 "/home/sd/ACC_v09/ACC/src/pointcut.c"
currAdvice
# 1028 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
) ; else __assert_fail (
# 1028 "/home/sd/ACC_v09/ACC/src/pointcut.c"
"currAdvice"
# 1028 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
, "/home/sd/ACC_v09/ACC/src/pointcut.c", 1028, __extension__ __PRETTY_FUNCTION__); }))
# 1028 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                  ;
 switch(flag) {
  case PROCEED:
   currAdvice->malInfo |= 0x0000000000000400;
   currAdvice->malInfo |= 0x0000000000004000;
   break;
  case PRETURN:
   currAdvice->malInfo |= 0x0000000000000800;
          currAdvice->malInfo |= 0x0000000000004000;
   break;
  case THROW:
   currAdvice->malInfo |= 0x0000000000001000;
   break;
  case ARG:
                case ARGTYPE:
                        currAdvice->malInfo |= 0x0000000000020000;
  case THIS:
   currAdvice->malInfo |= 0x0000000000002000;
          currAdvice->malInfo |= 0x0000000000004000;
   break;
  default:
   
# 1049 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ((void) sizeof ((
# 1049 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  0
# 1049 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 1049 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  0
# 1049 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ) ; else __assert_fail (
# 1049 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  "0"
# 1049 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/pointcut.c", 1049, __extension__ __PRETTY_FUNCTION__); }))
# 1049 "/home/sd/ACC_v09/ACC/src/pointcut.c"
           ;
 }
}

void setAdviceType(char *t) {
 
# 1054 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
((void) sizeof ((
# 1054 "/home/sd/ACC_v09/ACC/src/pointcut.c"
currAdvice
# 1054 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 1054 "/home/sd/ACC_v09/ACC/src/pointcut.c"
currAdvice
# 1054 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
) ; else __assert_fail (
# 1054 "/home/sd/ACC_v09/ACC/src/pointcut.c"
"currAdvice"
# 1054 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
, "/home/sd/ACC_v09/ACC/src/pointcut.c", 1054, __extension__ __PRETTY_FUNCTION__); }))
# 1054 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                  ;
 currAdvice->type = text2AdviceType(t);
}

void resetAdviceCounter() {
        adviceCounter = 0;
 cflowCounter = 0;
 cflowArgCounter = 0;
}

void setACType(char * t) {
  if(( state & 0x0000000000000001 ? 1 : 0) == 0 ) return;
  if(currCheckFrame != 
# 1066 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                      ((void *)0)
# 1066 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                          ) {
 setType(t);
 return;
  }
  
# 1070 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
 ((void) sizeof ((
# 1070 "/home/sd/ACC_v09/ACC/src/pointcut.c"
 0
# 1070 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
 ) ? 1 : 0), __extension__ ({ if (
# 1070 "/home/sd/ACC_v09/ACC/src/pointcut.c"
 0
# 1070 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
 ) ; else __assert_fail (
# 1070 "/home/sd/ACC_v09/ACC/src/pointcut.c"
 "0"
# 1070 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
 , "/home/sd/ACC_v09/ACC/src/pointcut.c", 1070, __extension__ __PRETTY_FUNCTION__); }))
# 1070 "/home/sd/ACC_v09/ACC/src/pointcut.c"
          ;
}


void setACComplexType(long type, char *t) {
 char buf[300];
 setComplexTypeName(type, buf, t);
 setACType(buf);
}

void setACTypePointer() {
 if( ( state & 0x0000000000000001 ? 1 : 0) == 0) return;

 if(pCutInfo && currCheckFrame->type == PARAMDECL &&
  currCheckFrame->curFunc->rtType == 
# 1084 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                                    ((void *)0) 
# 1084 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                         ){
  if(pCutInfo->type == ARGS || pCutInfo->type == RESULT) {
   state |= 0x0000000000000100;
   return;
  }else {
   sem_error (12, errmsg_fmt[12]) ; return ;
  }
 }
 if(currCheckFrame) {
  setPointerType();
 }
}



struct advice * getCurrAdvice() { return currAdvice ; }


void getAdviceName(char **t ) {
 
# 1103 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
((void) sizeof ((
# 1103 "/home/sd/ACC_v09/ACC/src/pointcut.c"
currAdvice && currAdvice->name
# 1103 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 1103 "/home/sd/ACC_v09/ACC/src/pointcut.c"
currAdvice && currAdvice->name
# 1103 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
) ; else __assert_fail (
# 1103 "/home/sd/ACC_v09/ACC/src/pointcut.c"
"currAdvice && currAdvice->name"
# 1103 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
, "/home/sd/ACC_v09/ACC/src/pointcut.c", 1103, __extension__ __PRETTY_FUNCTION__); }))
# 1103 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                      ;
 *t = currAdvice->name;
}


char *getPointCutTypeText(PointcutType p){
 switch(p){
    case CALL:
         return "call";
         break;
    case CALLP:
  return "callp";
  break;
           case EXECUTION:
         return "execution";
         break;
    case ARGS:
  return "args";
  break;
 case RESULT:
                return "result";
                break;

 case INFILE:
                return "infile";
                break;

 case INFUNC:
                return "infunc";
                break;

 case COMPOUND:
      return "compound";
      break;
 case GETPC:
  return "get";
  break;
 case SETPC:
  return "set";
 default:
         
# 1143 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
        ((void) sizeof ((
# 1143 "/home/sd/ACC_v09/ACC/src/pointcut.c"
        0
# 1143 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
        ) ? 1 : 0), __extension__ ({ if (
# 1143 "/home/sd/ACC_v09/ACC/src/pointcut.c"
        0
# 1143 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
        ) ; else __assert_fail (
# 1143 "/home/sd/ACC_v09/ACC/src/pointcut.c"
        "0"
# 1143 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
        , "/home/sd/ACC_v09/ACC/src/pointcut.c", 1143, __extension__ __PRETTY_FUNCTION__); }))
# 1143 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                 ;
         break;
 }
}


char *getAdviceText(AdviceType a){
        switch(a){
           case BEFORE:
                return "before";
                break;
           case AFTER:
                return "after";
                break;
           case AROUND:
                return "around";
                break;
           case ADFORNAMEDPC:
                return "advice_for_named_pc";
                break;
           case INTRODUCE:
  return "introduce";
    case CATCH:
  return "catch";
    default:
                
# 1168 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
               ((void) sizeof ((
# 1168 "/home/sd/ACC_v09/ACC/src/pointcut.c"
               0
# 1168 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
               ) ? 1 : 0), __extension__ ({ if (
# 1168 "/home/sd/ACC_v09/ACC/src/pointcut.c"
               0
# 1168 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
               ) ; else __assert_fail (
# 1168 "/home/sd/ACC_v09/ACC/src/pointcut.c"
               "0"
# 1168 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
               , "/home/sd/ACC_v09/ACC/src/pointcut.c", 1168, __extension__ __PRETTY_FUNCTION__); }))
# 1168 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                        ;
                break;
        }
}



struct Param * findParam(struct Param * head, char * name) {
 if(head == 
# 1176 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
           ((void *)0)
# 1176 "/home/sd/ACC_v09/ACC/src/pointcut.c"
               ) return 
# 1176 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                        ((void *)0)
# 1176 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                            ;

 if(strcmp(head->id, name) == 0) return head;

 return findParam(head->next, name);
}

struct Record * findPointcut(struct Record * head, char * name) {
        if(head == 
# 1184 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                  ((void *)0)
# 1184 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                      ) return 
# 1184 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                               ((void *)0)
# 1184 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                   ;
        if(match_name(head->name, name) && head->type == NAMEDPC) return head;
        return findPointcut(head->next, name);
}

struct CFlowRecord * findPointcutInTable(struct CFlowRecord * head, struct Record * target) {
 if(head == 
# 1190 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
           ((void *)0)
# 1190 "/home/sd/ACC_v09/ACC/src/pointcut.c"
               ) return 
# 1190 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                        ((void *)0)
# 1190 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                            ;
 if(match_pointcut(head->pc, target)) return head;
 else return findPointcutInTable(head->next, target);
}



boolean hasIntypePCOnly(struct Record * pc) {
 if(pc == 
# 1198 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
         ((void *)0)
# 1198 "/home/sd/ACC_v09/ACC/src/pointcut.c"
             ) return 1;
 switch(pc->type) {
  case CALL:
  case EXECUTION:
  case CALLP:
  case ARGS:
  case RESULT:
  case INFILE:
  case INFUNC:
  case CFLOW:
         case GETPC:
  case SETPC:
  case TRY:
   return 0;
  case INTYPE:
   return 1;
  case COMPOUND:
  case COMP_OR:
  case COMP_AND:
   if(hasIntypePCOnly(pc->info.childPCs[0]) == 1) {
              return hasIntypePCOnly(pc->info.childPCs[1]);
   }else {
    return 0;
   }
  case NAMEDPC:
  case COMP_NOT:
   return hasIntypePCOnly(pc->info.childPC);
  case PCNAME:
          return hasIntypePCOnly(findPointcut(PointCutTable, pc->name));

 }
 
# 1229 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
((void) sizeof ((
# 1229 "/home/sd/ACC_v09/ACC/src/pointcut.c"
0
# 1229 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 1229 "/home/sd/ACC_v09/ACC/src/pointcut.c"
0
# 1229 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
) ; else __assert_fail (
# 1229 "/home/sd/ACC_v09/ACC/src/pointcut.c"
"0"
# 1229 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
, "/home/sd/ACC_v09/ACC/src/pointcut.c", 1229, __extension__ __PRETTY_FUNCTION__); }))
# 1229 "/home/sd/ACC_v09/ACC/src/pointcut.c"
         ;
}


boolean hasTryPCOnly(struct Record * pc) {
        if(pc == 
# 1234 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
                ((void *)0)
# 1234 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                    ) return 1;
        switch(pc->type) {
                case CALL:
                case EXECUTION:
                case CALLP:
                case ARGS:
                case RESULT:
                case INFILE:
                case INFUNC:
                case CFLOW:
                case INTYPE:
                case COMPOUND:
  case COMP_AND:
  case COMP_NOT:
                case SETPC:
  case GETPC:
    return 0;
  case TRY:
   return 1;
  case COMP_OR:
                        if(hasTryPCOnly(pc->info.childPCs[0]) == 1) {
                                return hasTryPCOnly(pc->info.childPCs[1]);
                        }else {
                                return 0;
                        }
                case NAMEDPC:
                        return hasTryPCOnly(pc->info.childPC);
  case PCNAME:
                        return hasTryPCOnly(findPointcut(PointCutTable, pc->name));

        }
        
# 1265 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ((void) sizeof ((
# 1265 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       0
# 1265 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 1265 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       0
# 1265 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ; else __assert_fail (
# 1265 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       "0"
# 1265 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/pointcut.c", 1265, __extension__ __PRETTY_FUNCTION__); }))
# 1265 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                ;
}




AdviceType text2AdviceType(char *type){

  if(strcmp(type, "before") == 0){
    return BEFORE;
  }else if(strcmp(type, "after") == 0){
    return AFTER;
  }else if(strcmp(type, "around") == 0){
    return AROUND;
  }else if(strcmp(type, "introduce") == 0 ){
  return INTRODUCE;
  }else if(strcmp(type, "catch") == 0) {
  return CATCH;
  }else {
 sem_error_i (13, errmsg_fmt[13], type ) ; return UNKNOWN_AD;
  }

}

PointcutType text2PointcutType(char *type){
  if(strcmp(type, "call") == 0){
    return CALL;
  }else if(strcmp(type, "callp") == 0) {
  return CALLP;
  }else if(strcmp(type, "execution") == 0){
    return EXECUTION;
  }else if(strcmp(type, "compound") == 0){
    return COMPOUND;
  }else if(strcmp(type, "and") == 0) {
  return COMP_AND;
  }else if(strcmp(type, "or") == 0) {
  return COMP_OR;
  }else if(strcmp(type, "not") ==0) {
  return COMP_NOT;
  }else if(strcmp(type, "args") ==0) {
  return ARGS;
  }else if(strcmp(type, "result") ==0) {
         return RESULT;
  }else if(strcmp(type, "infile") ==0) {
 return INFILE;
  }else if(strcmp(type, "infunc") ==0) {
 return INFUNC;
  }else if(strcmp(type, "cflow") == 0) {
 return CFLOW;
  }else if(strcmp(type, "intype") == 0) {
 return INTYPE;
  }else if(strcmp(type, "try") == 0) {
 return TRY;
  }else if(strcmp(type, "get") == 0) {
 return GETPC;
  }else if(strcmp(type, "set") == 0) {
 return SETPC;
  }else if(type) {
 return PCNAME;
  }else {
 
# 1325 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
((void) sizeof ((
# 1325 "/home/sd/ACC_v09/ACC/src/pointcut.c"
0
# 1325 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 1325 "/home/sd/ACC_v09/ACC/src/pointcut.c"
0
# 1325 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
) ; else __assert_fail (
# 1325 "/home/sd/ACC_v09/ACC/src/pointcut.c"
"0"
# 1325 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
, "/home/sd/ACC_v09/ACC/src/pointcut.c", 1325, __extension__ __PRETTY_FUNCTION__); }))
# 1325 "/home/sd/ACC_v09/ACC/src/pointcut.c"
         ;
  }
}





void pushAChildForCompPC(long index) {
        struct Record * tmp;

 if(pCutInfo->type == UNKNOWN_PC) return;

        
# 1338 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ((void) sizeof ((
# 1338 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       index == 0 || index == 1
# 1338 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 1338 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       index == 0 || index == 1
# 1338 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       ) ; else __assert_fail (
# 1338 "/home/sd/ACC_v09/ACC/src/pointcut.c"
       "index == 0 || index == 1"
# 1338 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/pointcut.c", 1338, __extension__ __PRETTY_FUNCTION__); }))
# 1338 "/home/sd/ACC_v09/ACC/src/pointcut.c"
                                       ;

 tmp = (struct Record *)createNewRecord(count++);

        switch(pCutInfo->type) {
  case COMP_NOT : case NAMEDPC : case CFLOW : case TRY:
                 pCutInfo->info.childPC = tmp;
   break;
  case COMP_AND : case COMP_OR :
                 pCutInfo->info.childPCs[index] = tmp;
   break;
  default:
   
# 1350 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ((void) sizeof ((
# 1350 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  0
# 1350 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 1350 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  0
# 1350 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  ) ; else __assert_fail (
# 1350 "/home/sd/ACC_v09/ACC/src/pointcut.c"
  "0"
# 1350 "/home/sd/ACC_v09/ACC/src/pointcut.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/pointcut.c", 1350, __extension__ __PRETTY_FUNCTION__); }))
# 1350 "/home/sd/ACC_v09/ACC/src/pointcut.c"
           ;
 }

 tmp->parentPC = pCutInfo;


        pCutInfo = tmp;
}




void popChild() {
 if(pCutInfo->type == UNKNOWN_PC) return;


 if(pCutInfo->type == CFLOW && pCutInfo->parentPC->type == CFLOW) {
  sem_error (14, errmsg_fmt[14]) ; return ;
 }

 pCutInfo = pCutInfo->parentPC;
}





void assertNotINFILE() {
 if(pCutInfo && pCutInfo->type == INFILE) {
  sem_error (15, errmsg_fmt[15]) ; return ;
 }
}
