# 1 "/home/sd/ACC_v09/ACC/src/symboltable.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "/home/sd/ACC_v09/ACC/src/symboltable.c"
# 26 "/home/sd/ACC_v09/ACC/src/symboltable.c"
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
# 27 "/home/sd/ACC_v09/ACC/src/symboltable.c" 2
# 1 "/home/sd/ACC_v09/ACC/src/pointcut.h" 1
# 30 "/home/sd/ACC_v09/ACC/src/pointcut.h"
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
# 28 "/home/sd/ACC_v09/ACC/src/symboltable.c" 2
# 1 "/usr/include/stdlib.h" 1 3 4
# 25 "/usr/include/stdlib.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
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

# 29 "/home/sd/ACC_v09/ACC/src/symboltable.c" 2
# 1 "/usr/include/stdio.h" 1 3 4
# 27 "/usr/include/stdio.h" 3 4
# 1 "/usr/include/x86_64-linux-gnu/bits/libc-header-start.h" 1 3 4
# 28 "/usr/include/stdio.h" 2 3 4





# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stddef.h" 1 3 4
# 34 "/usr/include/stdio.h" 2 3 4


# 1 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h" 1 3 4
# 40 "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h" 3 4
typedef __builtin_va_list __gnuc_va_list;
# 37 "/usr/include/stdio.h" 2 3 4


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
# 84 "/usr/include/stdio.h" 3 4
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

# 30 "/home/sd/ACC_v09/ACC/src/symboltable.c" 2
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

# 31 "/home/sd/ACC_v09/ACC/src/symboltable.c" 2



# 33 "/home/sd/ACC_v09/ACC/src/symboltable.c"
struct FuncInfo *funcTable = 
# 33 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                            ((void *)0)
# 33 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                ;
struct TypedefInfo * typedefTable = 
# 34 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                   ((void *)0)
# 34 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                       ;

struct FuncInfo *fpTable = 
# 36 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                          ((void *)0)
# 36 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                              ;

struct FuncInfo *varTable = 
# 38 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                           ((void *)0)
# 38 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                               ;

struct checkFrame * currCheckFrame = 
# 40 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                    ((void *)0)
# 40 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                        ;

int gcc_attribute_level = 0;
# 59 "/home/sd/ACC_v09/ACC/src/symboltable.c"
void switchTypedefTargetSource(struct TypedefInfo * oneTypedef) {
 char * temp = oneTypedef->source;
 char * realType = 
# 61 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                  ((void *)0)
# 61 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                      ;
 oneTypedef->source = oneTypedef->target;

 realType = findRealType(temp);
 if(realType == temp) {
  oneTypedef->target = temp;
 }else {
  if(temp) free(temp);
  oneTypedef->target = copy_chars(realType);
 }

}




char * findRealType(char * name) {
 struct TypedefInfo * ptr = typedefTable;
        char * target = 
# 79 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                       ((void *)0)
# 79 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                           ;
        while(ptr) {
                if(match_name(ptr->source, name)) {
                        target = ptr->target;
                        break;
                }
                ptr = ptr->next;
        }

 if(target == 
# 88 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
             ((void *)0) 
# 88 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                  || strstr(target, "#__utac_noname__type")) {
  return name;
 }

 return findRealType(target);
}



boolean match_typedef_name(char * name1, char * source) {
        struct TypedefInfo * ptr = typedefTable;
 boolean matched = 0;

 if(match_name(name1, source)) return 1;

 while(ptr) {
                if(match_name(name1, ptr->source) && match_name(ptr->target, source)) {
   matched = 1;
   break;
  }
                ptr = ptr->next;
        }

        return matched;
}



char * make_paramtype(char * t) {
       char buf[300];
       char * result;
       sprintf(buf, "(%s)", t);
       result = (char*)malloc(strlen(buf) + 1);
       sprintf(result, "%s", buf);

       return result;
}

char * make_param_name(int index) {
 char buf[300];
 char * result;
 sprintf(buf, "%s%d", "__utac__para", index);

 result = (char*)malloc(strlen(buf) + 1);
 sprintf(result, "%s", buf);

 return result;
}




char * make_func_pointer_type(struct checkFrame * f) {
 char buf[1000];
 char * bufP = buf;
 char * result;
 struct Param * p;
 
# 145 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
((void) sizeof ((
# 145 "/home/sd/ACC_v09/ACC/src/symboltable.c"
f->type == FUNCPDECL || f->type == TYPEDEFFPDECL || f->type == PARAMFPDECL || f->info & 0x0000000000000010
# 145 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 145 "/home/sd/ACC_v09/ACC/src/symboltable.c"
f->type == FUNCPDECL || f->type == TYPEDEFFPDECL || f->type == PARAMFPDECL || f->info & 0x0000000000000010
# 145 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
) ; else __assert_fail (
# 145 "/home/sd/ACC_v09/ACC/src/symboltable.c"
"f->type == FUNCPDECL || f->type == TYPEDEFFPDECL || f->type == PARAMFPDECL || f->info & ISFUNCLIKE"
# 145 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
, "/home/sd/ACC_v09/ACC/src/symboltable.c", 145, __extension__ __PRETTY_FUNCTION__); }))


                       
# 148 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                      ;

 bufP += sprintf(bufP, "%s", "fp:[");

 if(f->info & 0x0000000000000020) removeStarToType(&(f->curFunc->rtType));

 bufP += sprintf(bufP, "%s][", f->curFunc->rtType);

 p = f->curFunc->p;

 while(p) {
  bufP += sprintf(bufP, "(%s)", p->type);
  p = p->next;
 }

 bufP += sprintf(bufP, "%s", "]");

 result = (char *)malloc(sizeof(buf) + 1);

 sprintf(result, "%s", buf);

 return result;
}
# 182 "/home/sd/ACC_v09/ACC/src/symboltable.c"
void make_fp_name(struct checkFrame * frame) {
        struct checkFrame * pf;
        char buf[300];
        char *bufP = buf;
        char *newName;
        if(frame == 
# 187 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                   ((void *)0) 
# 187 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                        || frame->parent == 
# 187 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                            ((void *)0)
# 187 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                ) return;

        pf = frame->parent;
        bufP += sprintf(bufP, "%s#", frame->curFunc->fname == 
# 190 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                                             ((void *)0) 
# 190 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                                  ? "noname" : frame->curFunc->fname);
        while(pf->type != FUNCDECL) {
                if(pf->type != FUNCBODY) bufP += sprintf(bufP, "%s", "#");
                if(pf->parent) pf = pf->parent;
  else break;
        }
        bufP += sprintf(bufP, "%s", pf->curFunc->fname == 
# 196 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                                         ((void *)0) 
# 196 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                              ? "__utac__fp__name" : pf->curFunc->fname);

        newName = (char*)malloc(strlen(buf) + 1);

        sprintf(newName, "%s", buf);

        if(frame->curFunc->fname) free(frame->curFunc->fname);
        frame->curFunc->fname = newName;
}




void enter_paren_declarator() {
 if(currCheckFrame) currCheckFrame->info |= 0x0000000000000001;
}


void leave_paren_declarator() {
 if(currCheckFrame) currCheckFrame->info &= ~0x0000000000000001;
}



void enter_gcc_attribute() {
        gcc_attribute_level ++;
}


void leave_gcc_attribute() {
        gcc_attribute_level --;
}







void addFunc(struct FuncInfo **head, struct FuncInfo *data){
    struct FuncInfo *ptr = 
# 236 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                          ((void *)0)
# 236 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                              ;
    if(data == 
# 237 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
              ((void *)0)
# 237 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                  ){
       return;
    }


    if(data->p && data->p->next == 
# 242 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                  ((void *)0) 
# 242 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                       && match_name("void", data->p->type)) {
        free_parameters(data->p);
        data->p = 
# 244 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                 ((void *)0)
# 244 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                     ;
        data->malInfo |= 0x0000000000000040;
    }


    if(data->rtType == 
# 249 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                      ((void *)0)
# 249 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                          ) {
 data->rtType = copy_chars("int");
    }

    ptr = searchFunc(*head, data->fname);
    if(ptr == 
# 254 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
             ((void *)0)
# 254 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                 ) {
        ptr = *head;
        *head = data;
        data->next = ptr;
    }else {
        if(ptr->fname) free(ptr->fname);
        if(ptr->rtType) free(ptr->rtType);
        free_parameters(ptr->p);

 ptr->fname = data->fname;
        ptr->rtType = data->rtType;
        ptr->p = data->p;
        ptr->malInfo = data->malInfo;

        if(data) free(data);
    }

}

void addTypedef(struct TypedefInfo ** head, struct TypedefInfo * new) {
 
# 274 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
((void) sizeof ((
# 274 "/home/sd/ACC_v09/ACC/src/symboltable.c"
new
# 274 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 274 "/home/sd/ACC_v09/ACC/src/symboltable.c"
new
# 274 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
) ; else __assert_fail (
# 274 "/home/sd/ACC_v09/ACC/src/symboltable.c"
"new"
# 274 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
, "/home/sd/ACC_v09/ACC/src/symboltable.c", 274, __extension__ __PRETTY_FUNCTION__); }))
# 274 "/home/sd/ACC_v09/ACC/src/symboltable.c"
           ;

 switchTypedefTargetSource(new);

 new->next = *head;
 *head = new;
}



struct Param * addParam(struct Param **head, struct Param *data){
 struct Param *tmp = 
# 285 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                    ((void *)0)
# 285 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                        ;
 struct Param *cur = 
# 286 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                    ((void *)0)
# 286 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                        ;
 struct Param *pre = 
# 287 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                    ((void *)0)
# 287 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                        ;

     if(data == 
# 289 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
               ((void *)0)
# 289 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                   ){
         return 
# 290 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
               ((void *)0)
# 290 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                   ;
     }

     cur = *head;
     pre = 
# 294 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
          ((void *)0)
# 294 "/home/sd/ACC_v09/ACC/src/symboltable.c"
              ;

     while(cur != 
# 296 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                 ((void *)0)
# 296 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                     ){
        pre = cur;
         cur = cur->next;
     }

     if(pre == 
# 301 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
              ((void *)0)
# 301 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                  ){
         *head = data;
     }else{
      pre->next = data;
     }
     data->next = 
# 306 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                 ((void *)0)
# 306 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                     ;

     return pre;
}


char * addType(char * t1, char * t2) {
 char * newType = 
# 313 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                 ((void *)0)
# 313 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                     ;
 int len = 0;

 
# 316 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
((void) sizeof ((
# 316 "/home/sd/ACC_v09/ACC/src/symboltable.c"
t2
# 316 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 316 "/home/sd/ACC_v09/ACC/src/symboltable.c"
t2
# 316 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
) ; else __assert_fail (
# 316 "/home/sd/ACC_v09/ACC/src/symboltable.c"
"t2"
# 316 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
, "/home/sd/ACC_v09/ACC/src/symboltable.c", 316, __extension__ __PRETTY_FUNCTION__); }))
# 316 "/home/sd/ACC_v09/ACC/src/symboltable.c"
          ;

 if(t1 == 
# 318 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
         ((void *)0)
# 318 "/home/sd/ACC_v09/ACC/src/symboltable.c"
             ) return t2;

 len =strlen(t1) + strlen(t2) + 2;

 newType = (char *)malloc(len);

 sprintf(newType, "%s %s", t1, t2);

 free(t1);
 free(t2);

 return newType;
}

void addParamToFunc(struct checkFrame * funcFrame, struct checkFrame * paraFrame) {
 struct Param * preParam;
 struct Param * newParam = (struct Param *)malloc(sizeof(struct Param));
     if(paraFrame->curFunc->fname == 
# 335 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                    ((void *)0)
# 335 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                        ) {
  newParam->id = make_param_name(funcFrame->paramCount++);
     }else {
  newParam->id = copy_chars(paraFrame->curFunc->fname);
 }

 if(paraFrame->type == PARAMFPDECL || paraFrame->info & 0x0000000000000010 ) {
  newParam->type = make_func_pointer_type(paraFrame);
 }else {
  newParam->type = copy_chars(paraFrame->curFunc->rtType);
     }

 newParam->next = 
# 347 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                 ((void *)0)
# 347 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                     ;

 preParam = addParam(&(funcFrame->curFunc->p), newParam);

     if(funcFrame->declaratorLevel >= 1 && funcFrame->paramFor2ndDeclaratorIsSet == 0 ) {
  funcFrame->paramFor2ndDeclaratorIsSet = 1;
  funcFrame->paramFor2ndDeclarator = preParam;
 }
}


void chgParamToFunc(struct checkFrame * funcFrame, struct checkFrame * paraFrame) {
 struct Param * para = findParam(funcFrame->curFunc->p, paraFrame->curFunc->fname);
 
# 360 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
((void) sizeof ((
# 360 "/home/sd/ACC_v09/ACC/src/symboltable.c"
para
# 360 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 360 "/home/sd/ACC_v09/ACC/src/symboltable.c"
para
# 360 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
) ; else __assert_fail (
# 360 "/home/sd/ACC_v09/ACC/src/symboltable.c"
"para"
# 360 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
, "/home/sd/ACC_v09/ACC/src/symboltable.c", 360, __extension__ __PRETTY_FUNCTION__); }))
# 360 "/home/sd/ACC_v09/ACC/src/symboltable.c"
            ;

 if(paraFrame->type == PARAMFPDECL || paraFrame->info & 0x0000000000000010 ) {
                para->type = make_func_pointer_type(paraFrame);
        }else {
                para->type = copy_chars(paraFrame->curFunc->rtType);
        }
}

void addStarToType(char ** type) {
 char * newType;
 char * temp = *type;
 int oldTypeLen = strlen(temp);

 newType = (char *)malloc(oldTypeLen + 1 + 1);

 sprintf(newType, "%s*", temp);

 free(temp);

 *type = newType;

}

void addQualifier(char ** type, char ** qualifier) {
 if(*type == 
# 385 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
            ((void *)0) 
# 385 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                 || *qualifier == 
# 385 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                  ((void *)0)
# 385 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                      ) return ;
 if(strstr(*type, *qualifier) != 
# 386 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                ((void *)0)
# 386 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                    ) {
  if(*qualifier) free(*qualifier);
  *qualifier = 
# 388 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
              ((void *)0)
# 388 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                  ;
  return;
 }

 *type = addType(*type, *qualifier);

 *qualifier = 
# 394 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
             ((void *)0)
# 394 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                 ;
}



struct FuncInfo *searchFunc(struct FuncInfo *head, char * key){
     struct FuncInfo *ptr;

     if(head == 
# 402 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
               ((void *)0) 
# 402 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                    || key == 
# 402 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                              ((void *)0)
# 402 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                  ){
        return 
# 403 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
              ((void *)0)
# 403 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                  ;
     }

     ptr = head;
     while(ptr != 
# 407 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                 ((void *)0)
# 407 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                     ){
        if(strcmp(ptr->fname, key) == 0){
            return ptr;
        }
        ptr = ptr->next;
     }
     return 
# 413 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
           ((void *)0)
# 413 "/home/sd/ACC_v09/ACC/src/symboltable.c"
               ;
}




struct FuncInfo * searchFP(struct FuncInfo *head, char * fpName, char * infunc) {
     char key[300];
     struct FuncInfo * tmp;

     if(fpName == 
# 423 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                 ((void *)0) 
# 423 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                      || infunc == 
# 423 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                   ((void *)0)
# 423 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                       ) return searchFunc(head, fpName);

     sprintf(key, "%s#%s", fpName, infunc);

     tmp = searchFunc(head, key);

     if(tmp) return tmp;

     return searchFunc(head, fpName);
}



void initDeclCollection(char * type) {
 struct checkFrame * newFrame = (struct checkFrame *)malloc(sizeof (struct checkFrame));

 newFrame->curTypedef = 
# 439 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                       ((void *)0)
# 439 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                           ;

 newFrame->info = 0;
 newFrame->paramCount = 0;
        newFrame->curFunc = (struct FuncInfo *)malloc(sizeof(struct FuncInfo));
        newFrame->curFunc->fname = 
# 444 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                  ((void *)0)
# 444 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                      ;
        newFrame->curFunc->rtType = 
# 445 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                   ((void *)0)
# 445 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                       ;
        newFrame->curFunc->p = 
# 446 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                              ((void *)0)
# 446 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                  ;
        newFrame->curFunc->next = 
# 447 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                 ((void *)0)
# 447 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                     ;
        newFrame->curFunc->malInfo = 0;
 newFrame->qualifier = 
# 449 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                      ((void *)0) 
# 449 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                           ;
 newFrame->declaratorLevel = 0;
 newFrame->paramFor2ndDeclarator = 
# 451 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                  ((void *)0)
# 451 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                      ;
 newFrame->paramFor2ndDeclaratorIsSet = 0;
 newFrame->parent = 
# 453 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                   ((void *)0)
# 453 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                       ;


 if(currCheckFrame != 
# 456 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                     ((void *)0)
# 456 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                         ) {
  newFrame->parent = currCheckFrame;
 }

 currCheckFrame = newFrame;

 if( strcmp(type, "func") == 0 ) {
  newFrame->type = FUNCDECL;
 }else if(strcmp(type, "param") == 0) {
  newFrame->type = PARAMDECL;
  newFrame->parent->info |= 0x0000000000000010;
 }else if(strcmp(type, "unknown") == 0) {
  if(newFrame->parent == 
# 468 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                        ((void *)0)
# 468 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                            ) {
   newFrame->type = GLOBVARDECL;
  }else {
   newFrame->type = UNKNOWNDECL;
  }
 }else if(strcmp(type, "struct") == 0 ) {
  newFrame->type = STRUCTDECL;
 }else if(strcmp(type, "pcmatching") == 0) {
  newFrame->type = PCMATCHING;
 }else if(strcmp(type, "adfunc") == 0) {
  newFrame->type = ADFUNCDECL;
 }else if(strcmp(type, "funcbody") == 0) {
  newFrame->type = FUNCBODY;
 }else 
# 481 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
      ((void) sizeof ((
# 481 "/home/sd/ACC_v09/ACC/src/symboltable.c"
      0
# 481 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
      ) ? 1 : 0), __extension__ ({ if (
# 481 "/home/sd/ACC_v09/ACC/src/symboltable.c"
      0
# 481 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
      ) ; else __assert_fail (
# 481 "/home/sd/ACC_v09/ACC/src/symboltable.c"
      "0"
# 481 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
      , "/home/sd/ACC_v09/ACC/src/symboltable.c", 481, __extension__ __PRETTY_FUNCTION__); }))
# 481 "/home/sd/ACC_v09/ACC/src/symboltable.c"
               ;
}



void removeStarToType(char ** type) {
        int len = strlen(*type);
        int i = len - 1;
 while(i >= 0) {
  if( (*type)[i] == '*') {
   (*type)[i] = '\0';
   return;
  }
  i--;
 }

 
# 497 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
((void) sizeof ((
# 497 "/home/sd/ACC_v09/ACC/src/symboltable.c"
0
# 497 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 497 "/home/sd/ACC_v09/ACC/src/symboltable.c"
0
# 497 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
) ; else __assert_fail (
# 497 "/home/sd/ACC_v09/ACC/src/symboltable.c"
"0"
# 497 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
, "/home/sd/ACC_v09/ACC/src/symboltable.c", 497, __extension__ __PRETTY_FUNCTION__); }))
# 497 "/home/sd/ACC_v09/ACC/src/symboltable.c"
         ;
}



void endDeclCollection() {
 struct checkFrame * tmpDeclFrame = currCheckFrame;

 switch(currCheckFrame->type) {
  case PARAMFPDECL:
                        if( (currCheckFrame->info & 0x0000000000000010) == 0) {



    currCheckFrame->type = PARAMDECL;
   }
  case PARAMDECL:
   if(currCheckFrame->info & 0x0000000000000008 ) {
                                chgParamToFunc(currCheckFrame->parent, currCheckFrame);
                        }else {
                         addParamToFunc(currCheckFrame->parent, currCheckFrame);
                        }

   if(currCheckFrame->info & 0x0000000000000010) {
                         
# 521 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                        ((void) sizeof ((
# 521 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                        currCheckFrame->curFunc
# 521 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                        ) ? 1 : 0), __extension__ ({ if (
# 521 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                        currCheckFrame->curFunc
# 521 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                        ) ; else __assert_fail (
# 521 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                        "currCheckFrame->curFunc"
# 521 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                        , "/home/sd/ACC_v09/ACC/src/symboltable.c", 521, __extension__ __PRETTY_FUNCTION__); }))
# 521 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                       ;
                         make_fp_name(currCheckFrame);
                         addFunc(&fpTable, currCheckFrame->curFunc);
   }else {
                         free_func(currCheckFrame->curFunc);
                        }
   break;
         case TYPEDEFDECL:
                 addTypedef(&typedefTable, currCheckFrame->curTypedef);
        free_func(currCheckFrame->curFunc);
      break;
  case TYPEDEFFPDECL:
                 
# 533 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                ((void) sizeof ((
# 533 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                currCheckFrame->curTypedef == 
# 533 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                ((void *)0)) ? 1 : 0), __extension__ ({ if (
# 533 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                currCheckFrame->curTypedef == 
# 533 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                ((void *)0)) ; else __assert_fail (
# 533 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                "currCheckFrame->curTypedef == NULL"
# 533 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                , "/home/sd/ACC_v09/ACC/src/symboltable.c", 533, __extension__ __PRETTY_FUNCTION__); }))
# 533 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                          ;
                 currCheckFrame->curTypedef = (struct TypedefInfo*)malloc(sizeof(struct TypedefInfo));
                 currCheckFrame->curTypedef->target = copy_chars(currCheckFrame->curFunc->fname);
                 currCheckFrame->curTypedef->source = make_func_pointer_type(currCheckFrame);
                 currCheckFrame->curTypedef->next = 
# 537 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                                   ((void *)0)
# 537 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                       ;
                 addTypedef(&typedefTable, currCheckFrame->curTypedef);
          free_func(currCheckFrame->curFunc);
   break;
  case FUNCDECL:
   
# 542 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ((void) sizeof ((
# 542 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  currCheckFrame->curFunc
# 542 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 542 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  currCheckFrame->curFunc
# 542 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ) ; else __assert_fail (
# 542 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  "currCheckFrame->curFunc"
# 542 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/symboltable.c", 542, __extension__ __PRETTY_FUNCTION__); }))
# 542 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                 ;
                 addFunc(&funcTable, currCheckFrame->curFunc);
          break;
  case FUNCPDECL:
   
# 546 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ((void) sizeof ((
# 546 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  currCheckFrame->curFunc
# 546 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 546 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  currCheckFrame->curFunc
# 546 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ) ; else __assert_fail (
# 546 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  "currCheckFrame->curFunc"
# 546 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/symboltable.c", 546, __extension__ __PRETTY_FUNCTION__); }))
# 546 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                 ;

   if(currCheckFrame->declaratorLevel == 2) {

    char * new_rtType;
    struct Param * ori_p;

    if(currCheckFrame->paramFor2ndDeclarator == 
# 553 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                               ((void *)0)
# 553 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                   ) {
     ori_p = 
# 554 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
            ((void *)0)
# 554 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                ;
    }else {
     ori_p = currCheckFrame->curFunc->p;
     currCheckFrame->curFunc->p = currCheckFrame->paramFor2ndDeclarator->next;
    }

    new_rtType = make_func_pointer_type(currCheckFrame);

    if(currCheckFrame->curFunc->rtType) free(currCheckFrame->curFunc->rtType);

    currCheckFrame->curFunc->rtType = new_rtType;

    currCheckFrame->curFunc->p = ori_p;

    if(currCheckFrame->paramFor2ndDeclarator == 
# 568 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                               ((void *)0)
# 568 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                   ) {
     free_parameters(currCheckFrame->curFunc->p);
    }else {
     free_parameters(currCheckFrame->paramFor2ndDeclarator->next);
     currCheckFrame->paramFor2ndDeclarator->next = 
# 572 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                                  ((void *)0)
# 572 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                      ;
    }
    currCheckFrame->curFunc->p = ori_p;

    addFunc(&funcTable, currCheckFrame->curFunc);
   }else {

    if(currCheckFrame->info & 0x0000000000000020) removeStarToType(&(currCheckFrame->curFunc->rtType));
    make_fp_name(currCheckFrame);
    addFunc(&fpTable, currCheckFrame->curFunc);
   }
   break;
  case GLOBVARDECL:
                        
# 585 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                       ((void) sizeof ((
# 585 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                       currCheckFrame->curFunc
# 585 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                       ) ? 1 : 0), __extension__ ({ if (
# 585 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                       currCheckFrame->curFunc
# 585 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                       ) ; else __assert_fail (
# 585 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                       "currCheckFrame->curFunc"
# 585 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                       , "/home/sd/ACC_v09/ACC/src/symboltable.c", 585, __extension__ __PRETTY_FUNCTION__); }))
# 585 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                      ;
                        
# 586 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                       ((void) sizeof ((
# 586 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                       currCheckFrame->curFunc->p == 
# 586 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                       ((void *)0)) ? 1 : 0), __extension__ ({ if (
# 586 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                       currCheckFrame->curFunc->p == 
# 586 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                       ((void *)0)) ; else __assert_fail (
# 586 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                       "currCheckFrame->curFunc->p == NULL"
# 586 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                       , "/home/sd/ACC_v09/ACC/src/symboltable.c", 586, __extension__ __PRETTY_FUNCTION__); }))
# 586 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                                 ;

   if(!(currCheckFrame->curFunc->malInfo & 0x0000000000000100)) {

    struct Param * p = (struct Param *)malloc(sizeof(struct Param));
    p->id = make_param_name(currCheckFrame->paramCount++);
    p->type = copy_chars(currCheckFrame->curFunc->rtType);
    p->next = 
# 593 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
             ((void *)0)
# 593 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                 ;
    currCheckFrame->curFunc->p = p;
                         addFunc(&varTable, currCheckFrame->curFunc);
                         break;
   }
                default:
                        
# 599 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                       ((void) sizeof ((
# 599 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                       currCheckFrame->curFunc
# 599 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                       ) ? 1 : 0), __extension__ ({ if (
# 599 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                       currCheckFrame->curFunc
# 599 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                       ) ; else __assert_fail (
# 599 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                       "currCheckFrame->curFunc"
# 599 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                       , "/home/sd/ACC_v09/ACC/src/symboltable.c", 599, __extension__ __PRETTY_FUNCTION__); }))
# 599 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                      ;
                        free_func(currCheckFrame->curFunc);
        }

 currCheckFrame = tmpDeclFrame->parent;

 free_declframe(tmpDeclFrame);

}





void setType(char *t){
   if(t == 
# 614 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
          ((void *)0) 
# 614 "/home/sd/ACC_v09/ACC/src/symboltable.c"
               || currCheckFrame == 
# 614 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                    ((void *)0)
# 614 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                        ) {
      return;
   }

   t = copy_chars(t);

   addQualifier(&t, &(currCheckFrame->qualifier));

   if(currCheckFrame->type == TYPEDEFDECL) {
 setTypedefTargetSource(t);
   }else {
   currCheckFrame->curFunc->rtType = addType(currCheckFrame->curFunc->rtType, t);
   }
}

void setDeclaratorWithPointer() {
 if(currCheckFrame->info & 0x0000000000000001 ) {
  currCheckFrame->info |= 0x0000000000000020;
  if(currCheckFrame->type == TYPEDEFDECL) {
   currCheckFrame->type = TYPEDEFFPDECL;



   
# 637 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ((void) sizeof ((
# 637 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  currCheckFrame->curTypedef
# 637 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 637 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  currCheckFrame->curTypedef
# 637 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ) ; else __assert_fail (
# 637 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  "currCheckFrame->curTypedef"
# 637 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/symboltable.c", 637, __extension__ __PRETTY_FUNCTION__); }))
# 637 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                    ;
   
# 638 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ((void) sizeof ((
# 638 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  currCheckFrame->curFunc && currCheckFrame->curFunc->rtType == 
# 638 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ((void *)0)) ? 1 : 0), __extension__ ({ if (
# 638 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  currCheckFrame->curFunc && currCheckFrame->curFunc->rtType == 
# 638 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ((void *)0)) ; else __assert_fail (
# 638 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  "currCheckFrame->curFunc && currCheckFrame->curFunc->rtType == NULL"
# 638 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/symboltable.c", 638, __extension__ __PRETTY_FUNCTION__); }))
# 638 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                                            ;
   currCheckFrame->curFunc->rtType = copy_chars(currCheckFrame->curTypedef->source);
   free_typedefTable(currCheckFrame->curTypedef);
   currCheckFrame->curTypedef = 
# 641 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                               ((void *)0)
# 641 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                   ;
  }else if(currCheckFrame->type == PARAMDECL) {
   currCheckFrame->type = PARAMFPDECL;
  }else if(currCheckFrame->type == FUNCDECL) {
   currCheckFrame->type = FUNCPDECL;
  }
 }
}

void setQualifier(char * s) {
   
# 651 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ((void) sizeof ((
# 651 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  s
# 651 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 651 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  s
# 651 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ) ; else __assert_fail (
# 651 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  "s"
# 651 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/symboltable.c", 651, __extension__ __PRETTY_FUNCTION__); }))
# 651 "/home/sd/ACC_v09/ACC/src/symboltable.c"
           ;
   if(currCheckFrame==
# 652 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                     ((void *)0) 
# 652 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                          || gcc_attribute_level > 0 ) return;

   if(currCheckFrame->qualifier == 
# 654 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                  ((void *)0)
# 654 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                      ) {
        currCheckFrame->qualifier = copy_chars(s);
   }else {

        if(strstr(currCheckFrame->qualifier , s) == 
# 658 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                                   ((void *)0)
# 658 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                       ) {
                currCheckFrame->qualifier = addType(currCheckFrame->qualifier , copy_chars(s));
        }
   }

   if(currCheckFrame->type == TYPEDEFDECL) {
        addQualifier(&(currCheckFrame->curTypedef->source), &(currCheckFrame->qualifier));
   }else {
    addQualifier(&(currCheckFrame->curFunc->rtType), &(currCheckFrame->qualifier) );
   }
}


void setComplexType(long type, char *t) {
        char buf[300];
        setComplexTypeName(type, buf, t);
        setType(buf);
}

void setComplexTypeName(long type, char buf[], char * tag) {
 
# 678 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
((void) sizeof ((
# 678 "/home/sd/ACC_v09/ACC/src/symboltable.c"
type == 1 || type == 2 || type == 3
# 678 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 678 "/home/sd/ACC_v09/ACC/src/symboltable.c"
type == 1 || type == 2 || type == 3
# 678 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
) ; else __assert_fail (
# 678 "/home/sd/ACC_v09/ACC/src/symboltable.c"
"type == 1 || type == 2 || type == 3"
# 678 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
, "/home/sd/ACC_v09/ACC/src/symboltable.c", 678, __extension__ __PRETTY_FUNCTION__); }))
# 678 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                           ;
 sprintf(buf, "%s %s ", (type == 1? "struct" : (type == 2 ? "union" : "enum")),
    tag == 
# 680 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
          ((void *)0) 
# 680 "/home/sd/ACC_v09/ACC/src/symboltable.c"
               ? "" : tag );
}


void setPointerType(){
   if(currCheckFrame == 
# 685 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                       ((void *)0)
# 685 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                           ) {
 return;
   }

   if(currCheckFrame->type == TYPEDEFDECL) {
        
# 690 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
       ((void) sizeof ((
# 690 "/home/sd/ACC_v09/ACC/src/symboltable.c"
       currCheckFrame->info & 0x0000000000000002
# 690 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 690 "/home/sd/ACC_v09/ACC/src/symboltable.c"
       currCheckFrame->info & 0x0000000000000002
# 690 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
       ) ; else __assert_fail (
# 690 "/home/sd/ACC_v09/ACC/src/symboltable.c"
       "currCheckFrame->info & SET_TYPEDEF_TARGET"
# 690 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/symboltable.c", 690, __extension__ __PRETTY_FUNCTION__); }))
# 690 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                         ;
 addStarToType(&(currCheckFrame->curTypedef->source));
   }else {
    addStarToType(&(currCheckFrame->curFunc->rtType));
   }

   setDeclaratorWithPointer();

}

void setEllipsis () {
  if(currCheckFrame) {
 currCheckFrame->curFunc->malInfo |= 0x0000000000000080;
  }
}

void setStorageClass(char * stClass) {

  if(currCheckFrame && strcmp("static", stClass) == 0) {
 currCheckFrame->curFunc->malInfo |= 0x0000000000000100 ;
  }

}


void setNoNameTag(char ** name) {
  *name = "#__utac_noname__type";
}


void setFuncDecl() {
 if(currCheckFrame->type == UNKNOWNDECL ||
    currCheckFrame->type == GLOBVARDECL ) {
  currCheckFrame->type = FUNCDECL;
 }
}


void setFuncDecl_old() {
        currCheckFrame->info |= 0x0000000000000004;
 currCheckFrame->curFunc->malInfo |= 0x0000000000000200;

 setFuncDecl();
}

void setEndFuncDeclarator() {
 currCheckFrame->declaratorLevel ++;
}

void setKNRPara() {
 currCheckFrame->info |= 0x0000000000000008 ;
}

void setDeclIsFuncLike() {
 currCheckFrame->info |= 0x0000000000000010;
}


void setInsideATypedefDecl () {
 currCheckFrame->type = TYPEDEFDECL;
 currCheckFrame->curTypedef = (struct TypedefInfo*)malloc(sizeof(struct TypedefInfo));
 currCheckFrame->curTypedef->source = currCheckFrame->curTypedef->target = 
# 751 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                                                          ((void *)0)
# 751 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                                              ;
 currCheckFrame->curTypedef->next = 
# 752 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                   ((void *)0)
# 752 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                       ;
}

void setTypeDefTarget() {
 currCheckFrame->info |= 0x0000000000000002 ;
}

void setTypedefTargetSource(char * name) {
 if(currCheckFrame->info & 0x0000000000000002 ) {
                currCheckFrame->curTypedef->target = name;
        }else {
                currCheckFrame->curTypedef->source = addType(currCheckFrame->curTypedef->source, name);
        }
}

void setId(char *id){
   if(id == 
# 768 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
           ((void *)0) 
# 768 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                || currCheckFrame == 
# 768 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                                     ((void *)0)
# 768 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                         ) {
      return;
   }

   if(currCheckFrame->type == TYPEDEFDECL) {
      setTypedefTargetSource(copy_chars(id));
   }else {
    if(currCheckFrame->curFunc->fname) if(currCheckFrame->curFunc->fname) free(currCheckFrame->curFunc->fname);
 currCheckFrame->curFunc->fname = copy_chars(id);
   }

}




char * add_chars_with_dot(char * str1, char * str2) {
 char * newstr;

 newstr = (char *)malloc(strlen(str1) + strlen(str2) + 2);
 sprintf(newstr, "%s.%s", str1, str2);

 free(str1);
 return newstr;
}

void appendId(char *id){
   
# 795 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ((void) sizeof ((
# 795 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  currCheckFrame && currCheckFrame->curFunc->fname
# 795 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 795 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  currCheckFrame && currCheckFrame->curFunc->fname
# 795 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  ) ; else __assert_fail (
# 795 "/home/sd/ACC_v09/ACC/src/symboltable.c"
  "currCheckFrame && currCheckFrame->curFunc->fname"
# 795 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/symboltable.c", 795, __extension__ __PRETTY_FUNCTION__); }))
# 795 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                                          ;

   currCheckFrame->curFunc->fname = add_chars_with_dot(currCheckFrame->curFunc->fname, id);

}



void isATypeDefDecl(long * flag) {
 if(currCheckFrame && currCheckFrame->type == TYPEDEFDECL) {
  *flag = 1;
 }else {
  *flag = 0;
 }
}

void isKNRDecl(long * flag) {
 if(currCheckFrame && currCheckFrame->info & 0x0000000000000004 ) {
  *flag = 1;
 }else {
  *flag = 0;
 }
}

void isDiffName(char * s1, char * s2, long * flag) {
 *flag = (strcmp(s1, s2) == 0 ? 0 : 1);
}



void free_func(struct FuncInfo * fun) {
 if(fun == 
# 826 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
          ((void *)0)
# 826 "/home/sd/ACC_v09/ACC/src/symboltable.c"
              ) return;
 free_func(fun->next);

 if(fun->fname) free(fun->fname);
 if(fun->rtType) free(fun->rtType);
 free_parameters(fun->p);

 if(fun) free(fun);
}

void free_typedefTable(struct TypedefInfo *table) {
        if(table == 
# 837 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                   ((void *)0)
# 837 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                       ) return;
 free_typedefTable(table->next);

 if(table->source) free(table->source);
 if(table->target) free(table->target);
 if(table) free(table);
}

void free_declframe(struct checkFrame * f) {
 if(f == 
# 846 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
        ((void *)0)
# 846 "/home/sd/ACC_v09/ACC/src/symboltable.c"
            ) return ;

 if(f->qualifier) free(f->qualifier);
 if(f) free(f);
}



char * copy_chars(char * s) {
 int len;
 char * newS;
 if(s == 
# 857 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
        ((void *)0)
# 857 "/home/sd/ACC_v09/ACC/src/symboltable.c"
            ) return 
# 857 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                     ((void *)0)
# 857 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                         ;
 len = strlen(s);
 newS = (char *)malloc(len + 1);
 sprintf(newS, "%s", s);
 return newS;
}


struct Param * copy_parameters(struct Param * head) {
        struct Param * newParam;
        if(head == 
# 867 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                  ((void *)0)
# 867 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                      ) return 
# 867 "/home/sd/ACC_v09/ACC/src/symboltable.c" 3 4
                               ((void *)0)
# 867 "/home/sd/ACC_v09/ACC/src/symboltable.c"
                                   ;

        newParam = (struct Param*)(malloc(sizeof(struct Param)));
        newParam->id = copy_chars(head->id);
        newParam->type = copy_chars(head->type);
        newParam->next = copy_parameters(head->next);

        return newParam;
}
# 884 "/home/sd/ACC_v09/ACC/src/symboltable.c"
void getPlainType(char * type , char * buf) {
 char * start, * end, *tmp;


 sprintf(buf, "%s", type);



 start = buf;
 end = buf + (strlen(buf) -1);

 while(end >= start && *end != '*') {
  if(*end == ' ') {
   tmp = end + 1;
   if(strcmp(tmp, "const") == 0 ||
      strcmp(tmp, "__restrict") == 0 ||
      strcmp(tmp, "__const") == 0 ||
      strcmp(tmp, "volatile") == 0) {
    *end = '\0';
   }
  }

  end --;
 }
}
