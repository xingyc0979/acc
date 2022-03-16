# 1 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 31 "<command-line>"
# 1 "/usr/include/stdc-predef.h" 1 3 4
# 32 "<command-line>" 2
# 1 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
# 1 "/home/sd/ACC_v09/ACC/src/weaveutil.h" 1
# 29 "/home/sd/ACC_v09/ACC/src/weaveutil.h"
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
# 30 "/home/sd/ACC_v09/ACC/src/weaveutil.h" 2

struct Scope {
 struct Scope * parent;
 struct ScopeSym {
  struct FuncInfo * sym;
  int oriInfo;
  struct ScopeSym * next;
 } * syms;
};

extern char *rtType;

void setRtType(char *t);
void setFuncId(char *id);
void endFuncCollection();
void setCurrentExecContext(char * c);
void setFuncDefinition();
void setTypedefTargetName();
void setDeclaratorTarget(char * );

void unsetDeclaratorTarget();
void unsetFuncDefinition();

boolean isAFuncDefinition();
void isCallMatch(long *flag);
void isPointcutExist(long *flag);

void get_curr_func_name(char ** f);
void getCurrentExecContext(char **c);
char * getOneParam(char ** ptr);


void addMatchedCallContexts(struct CallContext **head, struct CallContext *d);

void initFuncCollection();
void initFuncCalls();
void StartCallMatch();
void startNewFuncDefn(char *);


void EndCallMatch();
void endNewFuncDefn();

void enqueueAdvice(struct AdviceQueue **head, struct advice *data, boolean);
void newEnqueueAdvice(AdviceType aT, struct Context *c, struct advice *data, boolean);

void appendAdvice(AdviceType aT, struct Context *c, struct advice *data);

void insert_advice(AdviceType type, char *, long *);
void insert_one_advice(struct advice * d, struct Context * c, boolean );
void insert_call_bodys();
void insert_advice_with_context(struct AdviceQueue * , struct Context * , boolean, boolean);
void insert_advice_for_args_in_cflow(struct ArgsInCflow * pc, struct Context * context);

void delCurrentExecContext();

char * output_one_param(struct adviceParam * param, struct Context * context, int index);
void outputUserReturn();
void outputReturn();
void outputReturnDecl();
void outputReturnDeclInContext(struct Context *);
void outputReturnAssign();
void outputReturnAssignInContext(struct Context * );
char * outputReturnInContext(struct Context *, int, char *);
void outputExceptionHandlerVars(struct Context * c);
char * output_one_advice_declaration(struct advice * ad, boolean, char * );
void output_cflow_function();
void output_exception_cflow_handler_func_decl() ;
void output_one_cflow_func(struct CFlowRecord * rec);
void outputTypeInsertionMarker(char *);
void outputTypeInsertionMarkerInAC(char *);
void output_one_marker(char *);
void outputTypeInsertionMarkers(char * buf);
void outputJoinPointStrDecl();
void output_extra_args(int separator);
char * output_one_variable_in_cflow_context(struct adviceParam * ap, int index);
void output_one_cflow_context_func(struct ArgsInCflow * arg);

void outputWithSrcLine(char *);


void genCallBody(struct CallContext * callContext);
void genNewProceedCall ();
void genNewPreturnCall ();
void enclosePreturnCall ();
void genNewThrowCall ();
void genNewWrapperFunction(struct Context * c);
char * genFuncDecl(char *fName, char * retType, struct Param * p, char * buf, int malInfo);
char * genFuncCall(char *fName, struct Param *p, char *buf);
char * genTransWrapperFunction(struct AdviceQueue * aQ, struct Context * c);
char * genSrcLineInfo(char * buf);



void buildGenFuncDecl(char * buf, struct CallContext * c);
void buildJoinPointContext(long srcinfo , char * infuncName, char * funcName, char * type, char ** context);
void buildType(long type, char * tag, char ** name);
char * buildParamDecl(char * buf, char * type, char * id);
void build_func_pointer_type_decl(char * buf, struct CallContext * c) ;


void match_call_join_point(char * context, char * realName, char **newFuncName);
void match_get_join_point(char * context, char * realName, char **newFuncName);
void match_set_join_point(char * context, char * realName, char **newFuncName);
boolean match_pointcut_type(PointcutType pattern, PointcutType realJoinPoint);
void match_join_point(char * context, long * findAMatch);
boolean match_pointcut_with_jp(struct Record * pc, struct Context * context, char **);
boolean match_name(char * pattern, char * name) ;
boolean match_type(char * type1, char * type2) ;
boolean match_parameters(struct pointcutParam * paramPattern, struct Param * param, boolean extractParam, int currIndex, struct Context *);
boolean match_one_parameter(struct Param * paramPattern, struct Param * param, boolean extractParam, int currIndex, struct Context *);
boolean match_pointcut(struct Record * pc1, struct Record * pc2) ;
void match_intype_join_point(char *, char **);
boolean match_typedef_name(char * name1, char * source);



void free_context(struct Context * temp);
void free_call_context(struct CallContext * temp);
void free_all_queues();
void free_parameters(struct Param * head);
void free_advice_queue(struct AdviceQueue * queue);
void free_intype_context(struct Context *);
void free_scope(struct Scope * s) ;
void free_scope_syms(struct ScopeSym *ss);


struct Param * find_parameter_by_index(struct Param * head, int index);
struct Param * find_parameter_by_type(struct Param * target, struct Param * head, int * indexIncrease );
struct argIndexInContext * findArgIndexInContext(struct argIndexInContext * head, struct Context * c);



void logAroundDeclaration();
void logWrapperFunction(struct AdviceQueue * aQ, struct Context * c, char * preBuf );
void logSetjmp(char *);
void needLogSetjmp(long *);


void enterStrDecl();
void leaveStrDecl();

void setCollectFuncName();
void unsetCollectFuncName();

void setFirstDeclarator();
void unsetFirstDeclarator();
void isFirstDeclarator(long *);

struct advice * create_advice_for_args_in_cflow(struct ArgsInCflow * p, struct Context * c);

void append_cflow_func(struct advice * ad, char * buf, int * oldLen, int maxLen);


void enterScope();
void leaveScope();
void isInLoFcalScope(long *);
void incrLVal();
void decrLVal();
void isLVal(long*);
void incrDisableGet();
void decrDisableGet();
void isDisableGet(long *);
void incrMatchedPC();
void decrMatchedPC();
void hasMatchedPC(int *);
# 2 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 2

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
# 4 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 2
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

# 5 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 2
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

# 6 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 2
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

# 7 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 2



# 9 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
boolean isFuncDefn;
struct Context * currExecContext= 
# 10 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                 ((void *)0)
# 10 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                     ;
char *rtType = 
# 11 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
              ((void *)0)
# 11 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                  ;
char *funcId = 
# 12 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
              ((void *)0)
# 12 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                  ;
int call_counter = 0;
struct CallContext * matchedCallContexts = 
# 14 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                          ((void *)0)
# 14 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                              ;


boolean startCallMatch = 0;
char * curr_call_fp_name = 
# 18 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                          ((void *)0)
# 18 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                              ;
boolean curr_call_has_preturn = 0;

struct Scope * currScope = 
# 21 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                          ((void *)0)
# 21 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                              ;

int wrapper_counter = 0;
char * target = 
# 24 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
               ((void *)0)
# 24 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                   ;
char * typedefTarget = 
# 25 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                      ((void *)0)
# 25 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                          ;

int strLevel = 0;
int setFuncName = 0;

boolean needSetjmp = 0;

char * emitConditionStmt(char * buf, struct advice * d);



void enterStrDecl() {
 strLevel ++;
}

void leaveStrDecl() {
 strLevel --;
}


int lvalLevel = 0;
void incrLVal() {
 lvalLevel ++;
}
void decrLVal() {
 lvalLevel --;
}
void isLVal(long *flag) {
 if(lvalLevel > 0) {
  *flag = 1;
 }else {
  *flag = 0;
 }
}

int disableGetLevel = 0;
void incrDisableGet() {
        disableGetLevel ++;
}
void decrDisableGet() {
        disableGetLevel --;
}
void isDisableGet(long *flag) {
        if(disableGetLevel > 0) {
                *flag = 1;
        }else {
                *flag = 0;
        }
}




void setCollectFuncName() {
 setFuncName = 1;
}

void unsetCollectFuncName() {
 setFuncName = 0;
}



void setFuncId(char *id){
   if(id == 
# 89 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
           ((void *)0)
# 89 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               ){
      return;
   }

   if(funcId == 
# 93 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
               ((void *)0) 
# 93 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                    && setFuncName == 1){
      funcId = id;
   }
}

void endFuncCollection() {
 rtType = "";
 funcId = 
# 100 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
         ((void *)0)
# 100 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
             ;
 needSetjmp = 0;
}

void setCurrentExecContext(char * c) {
 
# 105 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 105 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
c
# 105 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 105 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
c
# 105 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 105 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"c"
# 105 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 105, __extension__ __PRETTY_FUNCTION__); }))
# 105 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
         ;
 
# 106 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 106 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
currExecContext == 
# 106 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void *)0)) ? 1 : 0), __extension__ ({ if (
# 106 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
currExecContext == 
# 106 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void *)0)) ; else __assert_fail (
# 106 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"currExecContext == NULL"
# 106 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 106, __extension__ __PRETTY_FUNCTION__); }))
# 106 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                               ;
 currExecContext = (struct Context *)(c);
}


void setFuncDefinition() { isFuncDefn = 1; }

void setTypedefTargetName() {
        typedefTarget = target;
}
void setDeclaratorTarget(char * s) {
        target = copy_chars(s);
}

long firstDeclarator = 1;

void setFirstDeclarator() {
 firstDeclarator = 1;
}

void unsetFirstDeclarator() {
 firstDeclarator = 0;
}

void isFirstDeclarator(long * flag) {
 *flag = firstDeclarator;
}



void unsetFuncDefinition() { isFuncDefn = 0; }
void unsetDeclaratorTarget() {
        if(target) free(target);
        target = typedefTarget = 
# 139 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                ((void *)0)
# 139 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                    ;
}



boolean isAFuncDefinition() { return isFuncDefn;}
void isCallMatch(long *flag) { *flag = startCallMatch; }
void isPointcutExist(long *flag) { *flag = (PointCutTable == 
# 146 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                            ((void *)0) 
# 146 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                 ? 0 : 1 );




            }


boolean needReturn(char * rtType) {
 if(rtType != 
# 155 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
             ((void *)0) 
# 155 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                  && !(match_type(rtType, "")) && !(match_type(rtType, "void")))
  return 1;

 return 0;
}


boolean needReturnValue(struct Context * c) {
 return needReturn(c->rtType);

}

void needLogSetjmp(long *flag) { *flag = needSetjmp; }





void get_curr_func_name(char ** f) {
 *f = funcId;
}

char * get_exec_ori_name(char * fName, char * buf) {
 sprintf(buf, "%s%s", fName, "utac__exec__ori");
 return buf;
}


char * get_wrapper_func_name(char *fName, PointcutType t, char * buf) {
 char * baseFileName;
        get_target_file_base_name(&baseFileName);

        sprintf(buf, "%s_%s_%s_%d", fName, t==CALL ? "utac__call__wrapper" : "utac__exec__wrapper", baseFileName, wrapper_counter);
        return buf;
}

void getCurrentExecContext(char **c) {
 *c = (char *)currExecContext;
}
# 204 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
void getTypedefTarget(char ** s) {
        if(typedefTarget && strLevel == 1) {
                *s = copy_chars(typedefTarget);
        }else {
                *s = 
# 208 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                    ((void *)0)
# 208 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        ;
        }
}



void addMatchedCallContexts(struct CallContext **head, struct CallContext *d){
   struct CallContext * temp;
   temp = *head;
   *head = d;
   d->next = temp;
}



void initFuncCollection(){
  rtType = "";
  funcId = 
# 225 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
          ((void *)0)
# 225 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
              ;
  needSetjmp = 0;
}

void initFuncCalls(){
   call_counter = 0;
}

void StartCallMatch(){
   startCallMatch = 1;
   curr_call_fp_name=
# 235 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                    ((void *)0)
# 235 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        ;
   curr_call_has_preturn = 0;
}

void startNewFuncDefn(char * context) {
 char declBuf[1000];
 char nameBuf[300];
 char srcLineBuf[1000];

 struct Context * c = (struct Context *)(context);
 
# 245 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 245 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
c->type == EXECUTION
# 245 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 245 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
c->type == EXECUTION
# 245 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 245 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"c->type == EXECUTION"
# 245 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 245, __extension__ __PRETTY_FUNCTION__); }))
# 245 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                            ;

 s("\n"); s("/* UTAC__START__FUNCTAG__ */"); s("\n");

 s(genSrcLineInfo(srcLineBuf));
 genFuncDecl(get_exec_ori_name(c->funcName, nameBuf), c->rtType, c->p, declBuf, 0);
 s(declBuf);

 s(" { \n");

 outputReturnDeclInContext(c);

}

void endNewFuncDefn() {
 s("\n } \n");
 s("/* UTAC__END__FUNCTAG__ */");
 s("\n");
}




void EndCallMatch(){ startCallMatch = 0; }




void enqueueAdvice(struct AdviceQueue **head, struct advice *data, boolean emitCondition){
  struct AdviceQueue *d;

  if(data == 
# 276 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
            ((void *)0)
# 276 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                ){
    return;
  }

  d = (struct AdviceQueue *)malloc(sizeof(struct AdviceQueue));
  d->data = data;
  d->next = (*head);
  d->emitCond = emitCondition;

  (*head) = d;
}

void newEnqueueAdvice(AdviceType aT, struct Context *c, struct advice *data, boolean emitCondition) {
 switch(aT){
             case BEFORE:
                    enqueueAdvice(&(c->before_advices), data, emitCondition);
                    break;
             case AFTER:
                    enqueueAdvice(&(c->after_advices), data, emitCondition);
                    break;
             case AROUND:
                    enqueueAdvice(&(c->around_advices), data, emitCondition);
                    break;
             default:
                    
# 300 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                   ((void) sizeof ((
# 300 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                   0
# 300 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                   ) ? 1 : 0), __extension__ ({ if (
# 300 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                   0
# 300 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                   ) ; else __assert_fail (
# 300 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                   "0"
# 300 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                   , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 300, __extension__ __PRETTY_FUNCTION__); }))
# 300 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                            ;
         }

}



void appendAdvice(AdviceType aT, struct Context *c, struct advice *data) {
        struct AdviceQueue *d;
 struct AdviceQueue *head = c->after_advices;
 
# 310 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 310 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
aT == AFTER
# 310 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 310 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
aT == AFTER
# 310 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 310 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"aT == AFTER"
# 310 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 310, __extension__ __PRETTY_FUNCTION__); }))
# 310 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                   ;
        
# 311 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ((void) sizeof ((
# 311 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       data
# 311 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 311 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       data
# 311 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ) ; else __assert_fail (
# 311 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       "data"
# 311 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 311, __extension__ __PRETTY_FUNCTION__); }))
# 311 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                   ;
   d = (struct AdviceQueue *)malloc(sizeof(struct AdviceQueue));
   d->data = data;
   d->next = 
# 314 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
            ((void *)0)
# 314 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                ;
 d->emitCond = 0;

 while(head && head->next) {
  head = head->next;
 }
 if(head == 
# 320 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
           ((void *)0)
# 320 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               ) {
  c->after_advices = d;
 }else {
  head->next = d;
 }
}




void append_cflow_func(struct advice * ad, char * buf, int * oldLen, int maxLen) {
 char * ptr = buf , *start;
 char * lp = 0;
 int len = 0;
 struct adviceParam * ap = ad->p;
 if(ad->cflowCondition != 
# 335 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                         ((void *)0)
# 335 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                             ) {
  start = strstr(ad->cflowCondition, "__utac__cflow");
  if(start) {
   lp = strchr(start, '(');
   
# 339 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 339 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  lp
# 339 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 339 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  lp
# 339 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ; else __assert_fail (
# 339 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "lp"
# 339 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 339, __extension__ __PRETTY_FUNCTION__); }))
# 339 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
            ;
   *lp = '\0';
   len = sprintf(ptr, "int %s(int, int);\n", start);
   *lp = '(';
   ptr += len;
   (*oldLen) += len;
   
# 345 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 345 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  *oldLen < maxLen
# 345 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 345 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  *oldLen < maxLen
# 345 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ; else __assert_fail (
# 345 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "*oldLen < maxLen"
# 345 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 345, __extension__ __PRETTY_FUNCTION__); }))
# 345 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                          ;
  }
 }

 while(ap != 
# 349 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
            ((void *)0)
# 349 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                ) {
  if(ap->callCflowContextFunc != 
# 350 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                ((void *)0)
# 350 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                    ) {
   lp = strchr(ap->callCflowContextFunc, '(');
   
# 352 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 352 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  lp
# 352 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 352 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  lp
# 352 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ; else __assert_fail (
# 352 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "lp"
# 352 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 352, __extension__ __PRETTY_FUNCTION__); }))
# 352 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
            ;
   *lp = '\0';
   if(strstr(buf, ap->callCflowContextFunc) == 
# 354 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                              ((void *)0)
# 354 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                  ) {
    len = sprintf(ptr, "void * %s(int,int,void*);\n", ap->callCflowContextFunc);
    ptr += len;
    (*oldLen) += len;
    
# 358 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ((void) sizeof ((
# 358 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   *oldLen < maxLen
# 358 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ) ? 1 : 0), __extension__ ({ if (
# 358 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   *oldLen < maxLen
# 358 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ) ; else __assert_fail (
# 358 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   "*oldLen < maxLen"
# 358 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 358, __extension__ __PRETTY_FUNCTION__); }))
# 358 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                           ;
   }
   *lp = '(';
  }
  ap = ap->next;
 }
}




void insert_advice(AdviceType type, char * callC, long * flag) {
 struct Context * c = (struct Context *)(callC);
        struct AdviceQueue * ptr;
        *flag = 0;
 
# 373 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 373 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
c
# 373 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 373 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
c
# 373 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 373 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"c"
# 373 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 373, __extension__ __PRETTY_FUNCTION__); }))
# 373 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
         ;
        
# 374 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ((void) sizeof ((
# 374 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       type == BEFORE || type == AFTER || type == AROUND
# 374 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 374 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       type == BEFORE || type == AFTER || type == AROUND
# 374 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ) ; else __assert_fail (
# 374 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       "type == BEFORE || type == AFTER || type == AROUND"
# 374 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 374, __extension__ __PRETTY_FUNCTION__); }))
# 374 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                ;
 switch(type) {
  case BEFORE:
   ptr = c->before_advices; break;
  case AFTER:
   ptr = c->after_advices; break;
  case AROUND:
   ptr = c->around_advices;
 }

 while(ptr != 
# 384 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
             ((void *)0)
# 384 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                 ) {
  if(c->type == EXECUTION) {
                        output_one_advice_declaration(ptr->data, 0, 
# 386 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                                       ((void *)0)
# 386 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                           );
                }

  if( (ptr->data->malInfo & 0x0000000000000400) ||
      (type == AROUND && ptr->emitCond == 1)) {
                insert_advice_with_context(ptr, c, ptr->emitCond, 1);
   *flag = 2;

   break;
  }
  else if(ptr->data->malInfo & 0x0000000000002000 || ptr->data->malInfo & 0x0000000000000800) {
                        insert_advice_with_context(ptr, c, ptr->emitCond, 0);
                        *flag = 1;
  } else {
   *flag = 1;
   s("\n{\n");
   insert_one_advice(ptr->data, c, ptr->emitCond);
   s("\n}\n");
                }
  ptr = ptr->next;
        }
}
# 429 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
void insert_one_advice(struct advice * d, struct Context * c, boolean emitCond) {
        struct adviceParam * param = d->p;
        char func_call_buf[6000];
        char * buf = func_call_buf;
        char * oneName;
        char * temp;
        long index = 1, cflowlevel = 0, indexInCflow = 0;
        
# 436 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ((void) sizeof ((
# 436 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       c
# 436 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 436 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       c
# 436 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ) ; else __assert_fail (
# 436 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       "c"
# 436 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 436, __extension__ __PRETTY_FUNCTION__); }))
# 436 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                ;


 switch(d->type) {
  case ADBEFORETRY:
                {
                        struct advice * ad = (struct advice *)(d->name);
                        if(d->cflowCondition) {
    buf += sprintf(buf, "if ( %s ) { \n", d->cflowCondition);
   }

   buf += sprintf(buf, "\n{ extern %s ; \n", "void * __utac__error_stack_mgt(void * env , int mode, int count) ");
   buf += sprintf(buf, "int %s = 0 ; \n int i = 0 ; \n", "__utac__try_poplevel");
                        index = (long)d->rtType;
   
# 450 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 450 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  index
# 450 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 450 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  index
# 450 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ; else __assert_fail (
# 450 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "index"
# 450 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 450, __extension__ __PRETTY_FUNCTION__); }))
# 450 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               ;
   
# 451 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 451 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  ad
# 451 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 451 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  ad
# 451 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ; else __assert_fail (
# 451 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "ad"
# 451 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 451, __extension__ __PRETTY_FUNCTION__); }))
# 451 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
            ;

   buf += sprintf(buf, "%s ( & %s_%ld , %d , %d ) ; \n", "__utac__error_stack_mgt", "__utac__try_exception", index, 0 , 1);
                        buf += sprintf(buf, "%s |= 1 << (%ld - %ld ) ; \n", "__utac__try_mask", c->numOfCH, index);


   if(ad->malInfo & 0x0000000000000800) {
                         buf += sprintf(buf, "%s ++ ;\n", " ((struct __UTAC__EXCEPTION *)(this.excep_return))->pops ");
   }

   buf += sprintf(buf, "if (%s_%ld = setjmp(%s_%ld)) { \n", "__utac__try_jmp_ret", index, "__utac__try_jmpbuf", index );

                                                                                   buf += sprintf(buf, "%s = 0; \n", "__utac__try_poplevel");
   buf += sprintf(buf, "for(i = %ld - %ld - 1; i >= 0; i--) { \n if(%s & ( 1 << i)) { %s ++ ; } \n } \n", c->numOfCH, index, "__utac__try_mask", "__utac__try_poplevel");

   if(ad->malInfo & 0x0000000000000800) {
    buf += sprintf(buf, "%s = %s ; \n", " ((struct __UTAC__EXCEPTION *)(this.excep_return))->pops ", "__utac__try_poplevel");
   }


   buf += sprintf(buf, " %s ( %s_%ld ", ad->name, "__utac__try_jmp_ret", index);

   if(ad->malInfo & 0x0000000000004000) {
    buf += sprintf(buf, ",  & %s ", "this");
   }

   buf += sprintf(buf, " %s ; \n", ")");

   buf += sprintf(buf, "%s ( & %s_%ld, %d , %s ); \n", "__utac__error_stack_mgt", "__utac__try_exception", index, 1, "__utac__try_poplevel");



   buf = outputReturnInContext(c, 1, buf);
   buf += sprintf(buf, "\n %s \n", "}");


                        buf += sprintf(buf, "%s \n", "}");

   if(d->cflowCondition) {
                                buf += sprintf(buf, "\n%s\n", "}");
                        }
                }

   break;
                case ADAFTERTRY:
   if(d->cflowCondition) {
                                buf += sprintf(buf, "if ( %s ) { \n", d->cflowCondition);
                        }

   buf += sprintf(buf, "\n{ extern %s ; \n", "void * __utac__error_stack_mgt(void * env , int mode, int count) ");


   buf += sprintf(buf, "%s ( & %s_%d, %d , %d ); \n", "__utac__error_stack_mgt", "__utac__try_exception", 1, 1, 1);

   buf += sprintf(buf, "\n%s\n", "}");

   if(d->cflowCondition) {
                                buf += sprintf(buf, "\n%s\n", "}");
                        }

                        break;



  case ADBEFORECFLOW:
   cflowlevel = 1;


   buf += sprintf(buf, "{ extern %s ; \n void * tmp = %s ( 0, %d , 1); \n", "void * __utac__error_stack_mgt(void * env , int mode, int count) ", "__utac__error_stack_mgt", 2);
   buf += sprintf(buf, " if(tmp) { extern %s ; \n", "void __utac__exception__cf_handler_set(void * exception, int (*cflow_func)(int, int), int val) ");
   buf += sprintf(buf, " %s (tmp, & %s, %s(%d,0)); } \n } \n", "__utac__exception__cf_handler_set", d->name, d->name, 3);

   if(c->malInfo & 0x0000000000000800) {
    if(c->type == CALL) {





     buf += sprintf(buf, "{ extern %s ; \n", "void __utac__exception__cf_handler_set(void * exception, int (*cflow_func)(int, int), int val) ");
     buf += sprintf(buf, "%s ( %s, & %s , %s(%d, 0)); } \n",
      "__utac__exception__cf_handler_set",
      "__utac__excep_para",
      d->name,
      d->name,
      3);
    }else {
     
# 538 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
    ((void) sizeof ((
# 538 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
    c->type == EXECUTION
# 538 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
    ) ? 1 : 0), __extension__ ({ if (
# 538 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
    c->type == EXECUTION
# 538 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
    ) ; else __assert_fail (
# 538 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
    "c->type == EXECUTION"
# 538 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
    , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 538, __extension__ __PRETTY_FUNCTION__); }))
# 538 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                ;
     buf += sprintf(buf, "{ extern %s ; \n", "void __utac__exception__cf_handler_set(void * exception, int (*cflow_func)(int, int), int val) ");
     buf += sprintf(buf, "%s ( (void *) & %s, & %s , %s(%d, 0)); } \n",
      "__utac__exception__cf_handler_set",
                                  "__utac__excep_var",
      d->name,
      d->name,
      3);
    }
   }
  case ADAFTERCFLOW:
   if(cflowlevel != 1) {
    cflowlevel = 2;
    if(c->malInfo & 0x0000000000000800) {
                                 if(c->type == CALL) {


                                         buf += sprintf(buf, "extern %s ; \n", "void __utac__exception__cf_handler_free(void * exception)");
                                         buf += sprintf(buf, "%s ( %s ); \n",
                                                 "__utac__exception__cf_handler_free",
                                                 "__utac__excep_para");
                                 }else {
                                         
# 560 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                        ((void) sizeof ((
# 560 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                        c->type == EXECUTION
# 560 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                        ) ? 1 : 0), __extension__ ({ if (
# 560 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                        c->type == EXECUTION
# 560 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                        ) ; else __assert_fail (
# 560 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                        "c->type == EXECUTION"
# 560 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                        , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 560, __extension__ __PRETTY_FUNCTION__); }))
# 560 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                    ;
      buf += sprintf(buf, "extern %s ; \n", "void __utac__exception__cf_handler_free(void * exception)");
                                         buf += sprintf(buf, "%s ( (void *) & %s); \n",
                                                 "__utac__exception__cf_handler_free",
                                                 "__utac__excep_var");
                                 }
                         }
   }

   sprintf(buf, "%s ( %ld, 0 ) ; \n", d->name, cflowlevel);

   break;
  case ADARGSCFLOW:
   
# 573 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 573 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  param
# 573 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 573 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  param
# 573 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ; else __assert_fail (
# 573 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "param"
# 573 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 573, __extension__ __PRETTY_FUNCTION__); }))
# 573 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               ;



                        while(param) {
                                oneName = output_one_param(param, c, index++);
                                buf += sprintf(buf, "%s(%d, %ld, (void *)(&%s) ); \n", d->name, 1, indexInCflow ++, oneName);
                                if(oneName) free(oneName);
                                param = param->next;
                        }

   break;
  case BEFORE:
  case AFTER:
  case AROUND:
   if(emitCond) {


    buf = emitConditionStmt(buf, d);
   }

   if(d->type == AROUND && needReturn(c->rtType)) {
    buf += sprintf(buf, "%s = ", "retValue_acc");
   }

          buf += sprintf(buf, "%s%s", d->name, "(");

          while(param) {
                  oneName = output_one_param(param, c, index++);
                  buf += sprintf(buf, "%s ,", oneName);
                  if(oneName) free(oneName);
    param = param->next;
          }

   if(d->malInfo & 0x0000000000004000) {

    buf += sprintf(buf, "&%s ", "this");
          }else {
    temp = buf - 1;
           if(*temp == ',') {
                   buf = temp;
           }
          }

   buf += sprintf(buf, "%s", ");\n");

   if(emitCond) {
    buf += sprintf(buf, " } \n");
   }
   break;
  default:
   
# 624 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 624 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  0
# 624 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 624 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  0
# 624 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ; else __assert_fail (
# 624 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "0"
# 624 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 624, __extension__ __PRETTY_FUNCTION__); }))
# 624 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
           ;
 }


        s(func_call_buf);
}

void insert_advice_with_context(struct AdviceQueue * aQ, struct Context * c, boolean emitCond, boolean needWrapperFunction) {
 int index = -1;
        int j = -1;
        struct Param * pa = c->p;
 char wrapperFuncName[300];
 struct advice * ad = aQ->data;


 s(" { \n" );
 s(" struct JoinPoint "); s("this"); s("; \n");


        if(needWrapperFunction || (ad->malInfo & 0x0000000000020000)) {
  while(pa != 
# 644 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
             ((void *)0)
# 644 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                 ){
                 index ++;
                 s(pa->type); s("* "); s("__utac__arg"); i(index); s(" = &"); s(pa->id) ; s("; \n");
                 s("const char * "); s("__utac__argtype"); i(index) ; s(" = \"");
   s(pa->type); s("\"; \n");
   pa = pa->next;
         }

  s(" void * "); s("__utac__args"); s("["); i(index+1); s("]; \n");
  s(" const char * "); s("__utac__argstype"); s("["); i(index+1); s("];\n");
        s("this"); s(".argsCount = ") ; i(index + 1); s(" ; \n");

  s(" void * "); s("__utac__retp"); s("[1]; \n");
         if(needReturnValue(c)) {
                 s(c->rtType); s(" ") ; s("__utac__ret") ; s(" ;\n");
         }


         for(j = -1; j < index; ) {
   j++;
   s("__utac__args"); s("["); i(j); s("] = (void*)("); s("__utac__arg"); i(j); s(");\n");
   s("__utac__argstype"); s("["); i(j); s("] = "); s("__utac__argtype"); i(j); s(";\n");
         }
  if(needReturnValue(c)) {
   s("*"); s("__utac__retp"); s("  = (void *)(&"); s("__utac__ret"); s(");\n");
  }


         s("this"); s(".args = "); s("__utac__args"); s("; \n");
  s("this"); s(".argsType = "); s("__utac__argstype"); s("; \n");

  s("{ extern "); s("void * __utac__get_this_arg (int, struct JoinPoint *) "); s(" ; \n ");
  s(" extern "); s("const char * __utac__get_this_argtype (int, struct JoinPoint *) "); s(" ; \n");
  s("this"); s(".arg = "); s("__utac__get_this_arg"); s(" ; \n");
                s("this"); s(".argType= "); s("__utac__get_this_argtype"); s(" ; } \n");

  if(needWrapperFunction) {
   s("this"); s(".fp = &(");
   s(get_wrapper_func_name(c->funcName, c->type, wrapperFuncName)); s(");\n");
         }
  s("this"); s(".retValue = "); s("__utac__retp"); s(" ; \n");
        s("this"); s(".retType =\""); s(c->rtType); s("\" ; \n");
 }

 if(ad->malInfo & 0x0000000000002000) {
  s("this"); s(".funcName = \""); s(c->insideFunc); s("\"; \n");
  s("this"); s(".targetName = \""); s(c->funcName); s("\"; \n");
  s("this"); s(".fileName = \""); s(number_to_name(c->insideFile/ 1000000)); s("\"; \n");
  s("this"); s(".kind = \""); s(getPointCutTypeText(c->type)); s("\"; \n");
 }

 if(ad->malInfo & 0x0000000000000800) {
                s("this");
  s(".excep_return = ");
  switch(c->type) {
   case SETPC:
   case CALL:
   case GETPC:
    s("__utac__excep_para"); break;
   case EXECUTION:
    s(" (void *) &"); s("__utac__excep_var"); break;
   default:
    
# 706 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ((void) sizeof ((
# 706 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   0
# 706 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ) ? 1 : 0), __extension__ ({ if (
# 706 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   0
# 706 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ) ; else __assert_fail (
# 706 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   "0"
# 706 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 706, __extension__ __PRETTY_FUNCTION__); }))
# 706 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
            ;
  }
  s("; \n");
        }


 s(" { \n");

 insert_one_advice(ad, c, emitCond);


 if(ad->type == AROUND && emitCond == 1) {
  s("\n else { \n");

  outputReturnAssignInContext(c);
  if(needReturnValue(c)) {
                 s("(** ("); s(c->rtType); s(" **)");
                }
  s(get_wrapper_func_name(c->funcName, c->type, wrapperFuncName));
  s("(&"); s("this"); s(" ) ");
  if(needReturnValue(c)) {
   s(")");
  }
  s("; \n } \n");
 }


 s(" \n } \n");


 s(" } \n");

 if(needWrapperFunction) {
  logWrapperFunction(aQ, c, 
# 739 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                           ((void *)0)
# 739 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                               );
  wrapper_counter++;
 }
}


void insert_call_bodys(){
 struct CallContext * ptr = matchedCallContexts;
        while(ptr != 
# 747 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                    ((void *)0)
# 747 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        ){
           genCallBody(ptr);
           ptr = ptr->next;
        }
}

void insert_advice_for_args_in_cflow(struct ArgsInCflow * args, struct Context * c) {
 struct ArgsInCflow * arg = args;

 while(arg != 
# 756 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
             ((void *)0)
# 756 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                 ) {
  struct advice *ad = create_advice_for_args_in_cflow(arg, c);
  if(ad != 
# 758 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
          ((void *)0)
# 758 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
              ) {
   newEnqueueAdvice(BEFORE, c, ad, 0);
  }
  arg = arg->next;
 }
}




void delCurrentExecContext() {
 
# 769 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 769 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
currExecContext
# 769 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 769 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
currExecContext
# 769 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 769 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"currExecContext"
# 769 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 769, __extension__ __PRETTY_FUNCTION__); }))
# 769 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       ;
 free_context(currExecContext);
 currExecContext = 
# 771 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                  ((void *)0)
# 771 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                      ;
}





struct advice * create_advice_for_args_in_cflow(struct ArgsInCflow * arg, struct Context * c) {
 struct advice * ad = 
# 779 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                     ((void *)0)
# 779 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                         ;
 struct adviceParam * ap = 
# 780 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                          ((void *)0)
# 780 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                              ;
 struct adviceParam * tp = ap;
 struct pointcutParam * p = arg->pc->info.mInfo->p;
 int indexInCflow = 0;


 while(p != 
# 786 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
           ((void *)0)
# 786 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               ) {
  if(p->ap != 
# 787 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
             ((void *)0)
# 787 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                 ) {
   struct adviceParam * newAp = (struct adviceParam *)malloc(sizeof(struct adviceParam));
   
# 789 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 789 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  newAp != 
# 789 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void *)0)) ? 1 : 0), __extension__ ({ if (
# 789 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  newAp != 
# 789 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void *)0)) ; else __assert_fail (
# 789 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "newAp != NULL"
# 789 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 789, __extension__ __PRETTY_FUNCTION__); }))
# 789 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       ;
   newAp->p.id = copy_chars(p->ap->p.id);
      newAp->p.type = copy_chars(p->ap->p.type);
          newAp->indexInContext = copy_argindex_incontext(p->ap->indexInContext);
          newAp->matchAddress = p->ap->matchAddress;
          newAp->usedInPC = 1;

   
# 796 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 796 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  p->ap->callCflowContextFunc != 
# 796 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void *)0)) ? 1 : 0), __extension__ ({ if (
# 796 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  p->ap->callCflowContextFunc != 
# 796 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void *)0)) ; else __assert_fail (
# 796 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "p->ap->callCflowContextFunc != NULL"
# 796 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 796, __extension__ __PRETTY_FUNCTION__); }))
# 796 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                             ;
   newAp->callCflowContextFunc = 
# 797 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                ((void *)0)
# 797 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                    ;

   newAp->next = 
# 799 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                ((void *)0)
# 799 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                    ;
   newAp->p.next = 
# 800 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                  ((void *)0)
# 800 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                      ;
   if(tp) {
    tp->next = newAp;
    tp->p.next = (struct Param *)newAp;
   }else {
    ap = newAp;
   }
   tp = newAp;
  }

  p = p->next;
 }


 if(ap != 
# 814 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
         ((void *)0)
# 814 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
             ) {
  char buf[300];
  ad = (struct advice *)malloc(sizeof(struct advice));
                
# 817 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
               ((void) sizeof ((
# 817 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               ad != 
# 817 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
               ((void *)0)) ? 1 : 0), __extension__ ({ if (
# 817 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               ad != 
# 817 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
               ((void *)0)) ; else __assert_fail (
# 817 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               "ad != NULL"
# 817 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
               , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 817, __extension__ __PRETTY_FUNCTION__); }))
# 817 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                 ;

  ad->name = copy_chars(arg->funcName);
                ad->rtType = 
# 820 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                            ((void *)0)
# 820 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                ;
                ad->type = ADARGSCFLOW;
                ad->p = ap;
  ad->malInfo = 0;
                ad->acFileBaseName = 
# 824 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                    ((void *)0)
# 824 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                        ;
                ad->cflowCondition = 
# 825 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                    ((void *)0)
# 825 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                        ;
 }

 return ad;
}






void output_exception_cflow_handler_func_decl() {
        s("extern "); s("void __utac__exception__cf_handler_set(void * exception, int (*cflow_func)(int, int), int val) "); s("; \n");
        s("extern "); s("void __utac__exception__cf_handler_free(void * exception)") ; s(";\n");
       s("extern "); s("void __utac__exception__cf_handler_reset(void * exception)") ; s(" ; \n");
 s("extern "); s("void * __utac__error_stack_mgt(void * env , int mode, int count) "); s(";\n");


}

void outputWithSrcLine(char * str) {
 char srcLineBuf[1000];
 s(genSrcLineInfo(srcLineBuf));
 s(str);
}





char * output_one_param(struct adviceParam * param, struct Context * context, int index) {
 char newNameBuf[300];
 char paraDeclBuf[1000];
 char * newName;
 char * realContextName;
 int len ;
 int indexInContext;
 sprintf(newNameBuf, "%s%d", "__utac__ad__arg", index);
 len = strlen(newNameBuf) + 1;
 newName = (char *)malloc(len);
 strcpy(newName, newNameBuf);
 newName[len-1] = '\0';

 if(param->callCflowContextFunc != 
# 868 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                  ((void *)0)
# 868 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                      ) {
                buildParamDecl(paraDeclBuf, param->p.type, newName);
                s(paraDeclBuf); s (" = ");

  s (" * ("); s(param->p.type); s(" * )"); s(param->callCflowContextFunc); s("; \n");
 }else {
  if(param->indexInContext->argIndex == 0) {
   
# 875 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 875 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  param->indexInContext->nextContext == 
# 875 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void *)0) 
# 875 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  && param->indexInContext->c == 
# 875 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void *)0)) ? 1 : 0), __extension__ ({ if (
# 875 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  param->indexInContext->nextContext == 
# 875 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void *)0) 
# 875 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  && param->indexInContext->c == 
# 875 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void *)0)) ; else __assert_fail (
# 875 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "param->indexInContext->nextContext == NULL && param->indexInContext->c == NULL"
# 875 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 875, __extension__ __PRETTY_FUNCTION__); }))
# 875 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                                        ;
   indexInContext = 0;
  }else {
   indexInContext = findArgIndexInContext(param->indexInContext, context)->argIndex;
  }
  
# 880 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ((void) sizeof ((
# 880 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 indexInContext >= 0
# 880 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ) ? 1 : 0), __extension__ ({ if (
# 880 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 indexInContext >= 0
# 880 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ) ; else __assert_fail (
# 880 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 "indexInContext >= 0"
# 880 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 880, __extension__ __PRETTY_FUNCTION__); }))
# 880 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                            ;
  if(indexInContext == 0) {
   realContextName = "retValue_acc";
         }else {
          realContextName = find_parameter_by_index(context->p, indexInContext)->id;
  }

  
# 887 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ((void) sizeof ((
# 887 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 realContextName
# 887 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ) ? 1 : 0), __extension__ ({ if (
# 887 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 realContextName
# 887 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ) ; else __assert_fail (
# 887 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 "realContextName"
# 887 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 887, __extension__ __PRETTY_FUNCTION__); }))
# 887 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        ;


         buildParamDecl(paraDeclBuf, param->p.type, newName);
  s(paraDeclBuf); s (" = ");

  if(param->matchAddress == 1) s("&");
  s(realContextName); s(" ; \n");
 }
 return newName;
}


void outputReturn() {
 outputReturnInContext(currExecContext, 0, 
# 901 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                          ((void *)0)
# 901 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                              );

}

void outputUserReturn() {
 outputReturnInContext(currExecContext, 1, 
# 906 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                          ((void *)0)
# 906 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                              );
}

char * outputReturnInContext(struct Context * c, int userReturn, char * buf) {
        
# 910 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ((void) sizeof ((
# 910 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       c->rtType
# 910 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 910 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       c->rtType
# 910 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ) ; else __assert_fail (
# 910 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       "c->rtType"
# 910 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 910, __extension__ __PRETTY_FUNCTION__); }))
# 910 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        ;

 if(needReturn(c->rtType)) {
  char srcLineBuf[1000];
            char retTypeBuf[1000];

  buildParamDecl(retTypeBuf, c->rtType, 
# 916 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                       ((void *)0)
# 916 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                           );

  if(buf == 
# 918 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
           ((void *)0)
# 918 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               ) {
                 s(genSrcLineInfo(srcLineBuf));
                 s("return ("); s(retTypeBuf) ; s(")"); s("retValue_acc"); s(";\n");
             }else {
                 buf += sprintf(buf, "%s", genSrcLineInfo(srcLineBuf));
                 buf += sprintf(buf, "return ( %s ) %s ; \n", retTypeBuf, "retValue_acc");
             }
        }else if(userReturn) {
  if(buf == 
# 926 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
           ((void *)0)
# 926 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               ) {
                 s("return ; \n");
            }else {
                 buf += sprintf(buf, "%s ; \n", "return");
            }
        }





 return buf;
}


void outputReturnDecl() {
 
# 942 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 942 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
currExecContext
# 942 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 942 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
currExecContext
# 942 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 942 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"currExecContext"
# 942 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 942, __extension__ __PRETTY_FUNCTION__); }))
# 942 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       ;
 outputReturnDeclInContext(currExecContext);
 outputExceptionHandlerVars(currExecContext);


 outputDefnBgnLn();
}


void outputReturnDeclInContext(struct Context * c ) {
        char plainType[1000];
 char oneDecl[1000];
 char rtTemplate[1000];

 char * t;
 plainType[0] = '\0';
 
# 958 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 958 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
c->rtType
# 958 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 958 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
c->rtType
# 958 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 958 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"c->rtType"
# 958 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 958, __extension__ __PRETTY_FUNCTION__); }))
# 958 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                 ;
        if(needReturn(c->rtType)) {
  char srcLineBuf[1000];

     getPlainType(c->rtType, plainType);
            s(genSrcLineInfo(srcLineBuf));
     if(plainType[0] == '\0') {
   t = c->rtType ;
     }else {
   t = plainType;
     }

  buildParamDecl(oneDecl, t, "retValue_acc");
  s(oneDecl); s(";\n");
        }
}

void outputReturnAssign() {
 outputReturnAssignInContext(currExecContext);
}


void outputReturnAssignInContext(struct Context * c) {
        
# 981 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ((void) sizeof ((
# 981 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       c->rtType
# 981 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 981 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       c->rtType
# 981 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ) ; else __assert_fail (
# 981 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       "c->rtType"
# 981 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 981, __extension__ __PRETTY_FUNCTION__); }))
# 981 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        ;
        if(needReturn(c->rtType)) {
            char srcLineBuf[1000];
            s(genSrcLineInfo(srcLineBuf));
    s("retValue_acc"); s(" = ");
        }
}


void outputExceptionHandlerVars(struct Context * c) {

 if(c->numOfCH) {
              char tmp[1000];
              int i;
  s("int "); s("__utac__try_mask"); s(" = 0; \n");
  for(i = 1; i <= c->numOfCH; i++) {
   sprintf(tmp, "\n int %s_%d = 0; \n jmp_buf %s_%d ; \n struct __UTAC__EXCEPTION %s_%d = { & %s_%d , 0, 0 }; \n ", "__utac__try_jmp_ret", i , "__utac__try_jmpbuf", i , "__utac__try_exception", i , "__utac__try_jmpbuf", i );
   s(tmp);
  }
        }
}



char * output_one_advice_declaration(struct advice * ad, boolean outputNow, char *buf) {
 char funcDeclBuf[2000];
 int size ;
 char * pos;
 
# 1009 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 1009 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
ad
# 1009 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 1009 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
ad
# 1009 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 1009 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"ad"
# 1009 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1009, __extension__ __PRETTY_FUNCTION__); }))
# 1009 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
          ;
 pos = funcDeclBuf;
 funcDeclBuf[0] = '\0';

 switch(ad->type) {
                case ADBEFORECFLOW:
                case ADAFTERCFLOW:
                        sprintf(pos, "int %s ( int , int)", ad->name);
                        break;
                case ADARGSCFLOW:
                        sprintf(pos, "void * %s (int, int, void *)", ad->name);
                        break;
                case ADBEFORETRY:
                {
                        struct advice * catchAd = (struct advice *)(ad->name);
                        
# 1024 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       ((void) sizeof ((
# 1024 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       catchAd
# 1024 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       ) ? 1 : 0), __extension__ ({ if (
# 1024 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       catchAd
# 1024 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       ) ; else __assert_fail (
# 1024 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       "catchAd"
# 1024 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1024, __extension__ __PRETTY_FUNCTION__); }))
# 1024 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                      ;
   pos += sprintf(pos, "void %s (int %s ) ",
      catchAd->name,
      (catchAd->malInfo & 0x0000000000004000) ? ", struct JoinPoint * " : "");
                        break;
                }
  case ADAFTERTRY:
                        break;
                default:
                {
                        int malinfo = 0;
                        if(!(ad->malInfo & 0x0000000000004000)) {
                                malinfo |= 0x0000000000000040;
                        }

                        genFuncDecl(ad->name, ad->rtType, &(ad->p->p), pos, malinfo);

   if(ad->malInfo & 0x0000000000004000) {
    size = strlen(funcDeclBuf);
    
# 1043 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ((void) sizeof ((
# 1043 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   funcDeclBuf[size-1] == ')'
# 1043 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ) ? 1 : 0), __extension__ ({ if (
# 1043 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   funcDeclBuf[size-1] == ')'
# 1043 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ) ; else __assert_fail (
# 1043 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   "funcDeclBuf[size-1] == ')'"
# 1043 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1043, __extension__ __PRETTY_FUNCTION__); }))
# 1043 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                     ;
    sprintf(funcDeclBuf + size - 1, "%s %s", ad->p == 
# 1044 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                     ((void *)0) 
# 1044 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                          ? " " : "," , "struct JoinPoint * )" );
   }
  }
 }


 size = strlen(funcDeclBuf);

 
# 1052 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 1052 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
size + 1 < 2000
# 1052 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 1052 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
size + 1 < 2000
# 1052 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 1052 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"size + 1 < DECLARATION"
# 1052 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1052, __extension__ __PRETTY_FUNCTION__); }))
# 1052 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                              ;


 funcDeclBuf[size] = ';';
 funcDeclBuf[++size] = '\n';

 append_cflow_func(ad, funcDeclBuf + size + 1, &size , 2000 - 1);

 funcDeclBuf[size+1] = '\0';


 if(outputNow) {
  s(funcDeclBuf); s("\n");
 }else if(buf) {
  buf += sprintf(buf, "%s\n", funcDeclBuf);
 }else {

  long line = getCurrDefnLineNum();
  logGenDecls(funcDeclBuf, line);
 }

 return buf;
}



void output_cflow_function() {
 struct CFlowRecord * head = cflowTable;

 s("\n"); s("__utac__cflow_funcs_begin"); s("\n");

 while(head && head->notPrinted) {
  output_one_cflow_func(head);
  head = head->next;
 }

 s("\n"); s("__utac__cflow_funcs_end"); s("\n");

}


char * output_one_variable_in_cflow_context(struct adviceParam * ap, int index) {
 char nameBuf[300];
 char * varName = 
# 1095 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                 ((void *)0)
# 1095 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                     ;
 s("static ");
 if(isThreadSafe()) s (" __thread ");
 s(ap->p.type); s(" ");

 sprintf(nameBuf, "%s_%d", "__utac__para" , index);
 varName = (char *)malloc(strlen(nameBuf) + 1);
 sprintf(varName, "%s", nameBuf);

 s(varName); s(";\n");

 return varName;
}
# 1124 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
void output_one_cflow_context_func(struct ArgsInCflow * arg) {
 struct pointcutParam * p = arg->pc->info.mInfo->p;
 char func_buf[6000];
 char * buf = func_buf;
 char * oneName = 
# 1128 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                 ((void *)0)
# 1128 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                     ;
 int indexInsideFunc = 0;
 s(" void * "); s(arg->funcName); s(" (int action, int index, void * p) { \n");
 buf += sprintf(buf, "%s ", "switch (index) { \n");
 while(p != 
# 1132 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
           ((void *)0)
# 1132 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               ) {
  if(p->ap != 
# 1133 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
             ((void *)0)
# 1133 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                 ) {
   oneName = output_one_variable_in_cflow_context(p->ap, indexInsideFunc);
   buf += sprintf(buf,
    " case %d : if(action == %d ) { \n", indexInsideFunc, 1);
   buf += sprintf(buf, " %s = *(%s *)(p); \n",
    oneName, p->ap->p.type );
   buf += sprintf(buf, " } else { return (void *)(&%s); } \n break ; \n",
    oneName);
   if(oneName) free(oneName);
   indexInsideFunc++;
  }
  p = p->next;
 }

 buf += sprintf(buf, " %s \n } \n", " } ");
 s(func_buf);
}
# 1161 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
void output_one_cflow_func(struct CFlowRecord * rec) {
    struct ArgsInCflow * args = rec->argsPCs;

    s(" int "); s(rec->pc->cflowFuncName); s(" (int x, int y) { \n ");
    s("static ");
    if(isThreadSafe()) s (" __thread ");
    s("int level = 0; \n switch(x) { \n case 1: level ++; break ; \n case 2: level -- ; break; \n case 3: break; \n case 4: level = y ; \n } \n return level ; \n } \n");
    rec->notPrinted = 0;

    while(args != 
# 1170 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                 ((void *)0)
# 1170 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                     ) {
 output_one_cflow_context_func(args);
 args = args->next;
    }

}

void outputTypeInsertionMarker(char * names) {
        char namesBuffer[1000];
 if(names == 
# 1179 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
            ((void *)0)
# 1179 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                ) return;
 sprintf(namesBuffer, "%s", names);
 outputTypeInsertionMarkers(namesBuffer);
 if(names) free(names);
}
# 1192 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
void outputTypeInsertionMarkerInAC(char * str) {
 if(str) {
  s("__ac__type__insert@");
  s(str);
  s("__ac__type__insert__end@");
  s("\n");
  if(str) free(str);
 }
}

void outputTypeInsertionMarkers(char * buf) {
 char * restName;
        if(strlen(buf) == 0) return;
        restName = strstr(buf, "\n");
        if(restName) {
                *restName='\0';
        }
        if(restName) {
                outputTypeInsertionMarkers(restName + 1);
        }
        output_one_marker(buf);
}


void output_one_marker(char * name) {
        char * separater = strstr(name, "#");
        
# 1218 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ((void) sizeof ((
# 1218 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       separater
# 1218 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 1218 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       separater
# 1218 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ) ; else __assert_fail (
# 1218 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       "separater"
# 1218 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1218, __extension__ __PRETTY_FUNCTION__); }))
# 1218 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        ;
        *separater = '\0';
        s("#__utac__type__insertion@"); s(name); s("\n");
        s(separater + 1) ; s("\n");

}

void outputJoinPointStrDecl() {
 s("\n"); s("struct JoinPoint { \n\tvoid** (*fp) (struct JoinPoint *);\n\tvoid ** args;\n\tint argsCount;\n\tconst char ** argsType;\n\t void * (*arg)(int, struct JoinPoint *); \n\t const char * (*argType)(int , struct JoinPoint *); \n\tvoid ** retValue;\n\tconst char * retType;\n\tconst char * funcName ;\n\tconst char * targetName ;\n\tconst char * fileName ;\n\tconst char * kind ;\n\tvoid * excep_return ;\n};\n\n struct __UTAC__EXCEPTION {\n\tvoid * jumpbuf ;\n\tunsigned long long int prtValue ;\n\tint pops;\n\tstruct __UTAC__CFLOW_FUNC {\n\t\tint (*func)(int,int) ;\n\t\tint val ;\n\t\tstruct __UTAC__CFLOW_FUNC * next; \n\t} * cflowfuncs; \n}; \n"); s("\n");

}
# 1237 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
void output_extra_args(int separator) {
        if(curr_call_fp_name || curr_call_has_preturn) {
                char buf[1000];
                sprintf(buf, "%s %s %s %s %s ",
                        separator == 1 ? "," : "" ,
                        curr_call_fp_name ? curr_call_fp_name : "" ,
                        (curr_call_fp_name && curr_call_has_preturn==1) ? "," : "" ,
                        curr_call_has_preturn ? "(void *) & " : "",
                        curr_call_has_preturn ? "__utac__excep_var" : "");
                s(buf);
                curr_call_fp_name = 
# 1247 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                   ((void *)0)
# 1247 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                       ;
                curr_call_has_preturn=0;
        }
}




void genCallBody(struct CallContext * callContext) {
    struct FuncInfo *tmp;
    struct Param *pa;
    long inserted = 0;
 char * fileName;
 boolean needRetValue = 0;

 char declBuffer[1000];
        char declBuffer2[1000];
 char callBuffer[1000];


 struct AdviceQueue * ptr ;
 ptr = callContext->context.before_advices;
    while(ptr != 
# 1269 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                ((void *)0)
# 1269 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                    ){
        output_one_advice_declaration(ptr->data, 1, 
# 1270 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                      ((void *)0)
# 1270 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                          );
  ptr = ptr->next;
 }

 ptr = callContext->context.after_advices;
        while(ptr != 
# 1275 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                    ((void *)0)
# 1275 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        ){
                output_one_advice_declaration(ptr->data, 1, 
# 1276 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                              ((void *)0)
# 1276 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                  );
                ptr = ptr->next;
        }

 ptr = callContext->context.around_advices;
        while(ptr != 
# 1281 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                    ((void *)0)
# 1281 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        ){
                output_one_advice_declaration(ptr->data, 1, 
# 1282 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                              ((void *)0)
# 1282 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                  );
                ptr = ptr->next;
        }



 if(callContext->context.type == CALL) {
  struct Context * c = (struct Context *)callContext;
       struct FuncInfo * func = searchFunc(funcTable, c->funcName);
  if(func && (func->malInfo & 0x0000000000000200) == 0) {
   genFuncDecl(c->funcName, c->rtType, c->p, declBuffer, c->malInfo);
   s(declBuffer);
   s(" ; \n");
  }
 }

 buildGenFuncDecl(declBuffer, callContext);


 sprintf(declBuffer2, "%s ; ", declBuffer);
 logGenDecls(declBuffer2, getCurrDefnLineNum());


 { char srcLineBuf[1000];
        s(genSrcLineInfo(srcLineBuf));
 }
 s(declBuffer);
 s("{\n");

     outputReturnDeclInContext(&(callContext->context));

 outputExceptionHandlerVars(&(callContext->context));

 insert_advice(BEFORE, (char*)(callContext), &inserted);

 insert_advice(AROUND, (char*)(callContext), &inserted);

        if(!inserted) {
   outputReturnAssignInContext(&(callContext->context));
          switch(callContext->context.type) {
  case CALLP:
   {
     char defFP[300];
   sprintf(defFP, "(*%s)", "__utac__fp__para");
   genFuncCall(defFP, callContext->context.p, callBuffer);
   }
   break;
  case SETPC:
   {
                        
# 1331 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       ((void) sizeof ((
# 1331 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       callContext->context.p && callContext->context.p->next && callContext->context.p->next->next == 
# 1331 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       ((void *)0)) ? 1 : 0), __extension__ ({ if (
# 1331 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       callContext->context.p && callContext->context.p->next && callContext->context.p->next->next == 
# 1331 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       ((void *)0)) ; else __assert_fail (
# 1331 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       "callContext->context.p && callContext->context.p->next && callContext->context.p->next->next == NULL"
# 1331 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1331, __extension__ __PRETTY_FUNCTION__); }))
# 1331 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                                                                                   ;
                        sprintf(callBuffer, "(*%s = %s) ; \n", callContext->context.p->id, callContext->context.p->next->id);
                        }
                        break;
  case GETPC:
   {
   
# 1337 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 1337 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  callContext->context.p && callContext->context.p->next == 
# 1337 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void *)0)) ? 1 : 0), __extension__ ({ if (
# 1337 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  callContext->context.p && callContext->context.p->next == 
# 1337 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void *)0)) ; else __assert_fail (
# 1337 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "callContext->context.p && callContext->context.p->next == NULL"
# 1337 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1337, __extension__ __PRETTY_FUNCTION__); }))
# 1337 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                        ;
   sprintf(callBuffer, "%s ; \n", callContext->context.p->id);
   }
   break;
  case CALL:
   genFuncCall(callContext->context.funcName, callContext->context.p, callBuffer);
     break;
  default:
   
# 1345 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 1345 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  0
# 1345 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 1345 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  0
# 1345 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ; else __assert_fail (
# 1345 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "0"
# 1345 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1345, __extension__ __PRETTY_FUNCTION__); }))
# 1345 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
           ;
  }
  s(callBuffer);
 }


 insert_advice(AFTER, (char*)(callContext), &inserted);

 outputReturnInContext(&(callContext->context), 0, 
# 1353 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                  ((void *)0)
# 1353 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                      );

 s("}\n");
}

void genNewProceedCall() {
        struct advice * ad;
        ad = getCurrAdvice();
        if(ad->type != AROUND) {
                sem_error (11, errmsg_fmt[11]) ; return ;
        }
        if(needReturn(ad->rtType)) {
                s("(** ("); s(ad->rtType); s(" **)");
        }

        s("("); s("this"); s("->fp("); s("this"); s("))");

        if(needReturn(ad->rtType)) {
                s(" ) ");
        }
        setFoundAdKeyword(PROCEED);
}

void genNewPreturnCall() {
 s("\n{ jmp_buf * p; \n struct __UTAC__EXCEPTION * excep = (struct __UTAC__EXCEPTION *)");
 s(" this->excep_return " ); s(" ; \n if(excep->pops) "); s("__utac__error_stack_mgt"); s(" (0 , "); i(1); s(", excep->pops);\n");
 s("p = (jmp_buf *)excep->jumpbuf; \n ; excep->prtValue = (unsigned long long int)( ");
 setFoundAdKeyword(PRETURN);
}

void enclosePreturnCall() {
 s(");");
 s("longjmp(*p, 1); }");
}

void genNewThrowCall() {
        s("\n{ jmp_buf * p; \n struct __UTAC__EXCEPTION * excep = (struct __UTAC__EXCEPTION *)");
        s("__utac__error_stack_mgt");
        s("(0, "); i(1); s(", "); i(1); s(" ) ; \n p = (jmp_buf*)(excep->jumpbuf); \n");
        s("longjmp(*p, ");

        setFoundAdKeyword(THROW);
}


char * genFuncDecl(char *fName, char * retType, struct Param * p, char * buf, int malInfo) {
 char * oldAdd = buf;
 char pBuf[1000];
 char funcDecl[1000];
 char * pFuncDecl = funcDecl;

 pFuncDecl += sprintf(pFuncDecl , "%s (", fName);
        if(p == 
# 1405 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
               ((void *)0)
# 1405 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                   ) {
  if(malInfo & 0x0000000000000040)
   pFuncDecl += sprintf(pFuncDecl, "%s", "void");
 }else {
  while(p != 
# 1409 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
            ((void *)0)
# 1409 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                ){
   buildParamDecl(pBuf, p->type, p->id);
             pFuncDecl += sprintf(pFuncDecl, "%s %s", pBuf, (p->next == 
# 1411 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                                       ((void *)0)
# 1411 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                           ? " ": ","));
                 p = p->next;
         }
 }
        pFuncDecl += sprintf(pFuncDecl, "%s", ")");

 buf += sprintf(buf, "%s ", malInfo & 0x0000000000000100 ? "static " : "" );

 if(needReturn(retType)) {
  buildParamDecl(pBuf, retType, funcDecl);
  buf += sprintf(buf, " %s", pBuf );
 }else {
  buf += sprintf(buf, " %s %s", "void", funcDecl );
 }

 return oldAdd;
}

char * genFuncCall(char * fName, struct Param * p, char * buf) {
 buf += sprintf(buf, "%s ( ", fName);
 while(p != 
# 1431 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
           ((void *)0)
# 1431 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               ) {
                buf += sprintf(buf, "%s ", p->id);
                if(p->next != 
# 1433 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                             ((void *)0)
# 1433 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                 ){
                   buf += sprintf(buf, "%s ", ",");
                }
                p = p->next;
        }
        buf += sprintf(buf, "%s \n", ") ; ");
 return buf;
}

char * genTransWrapperFunction(struct AdviceQueue *aQ, struct Context * c) {
 int index = -1;
 struct adviceParam * param;
 char buf[6000];
 char *bufPtr = &(buf[0]);
 char wrapperFuncName[300];
 char wrapperFuncNameNext[300];
 char * newDecl;
 char prtType[1000];
        struct advice *ad = aQ->data;

 param = ad->p;

 
# 1455 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 1455 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
aQ
# 1455 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 1455 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
aQ
# 1455 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 1455 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"aQ"
# 1455 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1455, __extension__ __PRETTY_FUNCTION__); }))
# 1455 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
          ;
 
# 1456 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 1456 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
ad->type == AROUND
# 1456 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 1456 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
ad->type == AROUND
# 1456 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 1456 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"ad->type == AROUND"
# 1456 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1456, __extension__ __PRETTY_FUNCTION__); }))
# 1456 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                          ;


 get_wrapper_func_name(c->funcName, c->type, wrapperFuncName);
 wrapper_counter ++;
        get_wrapper_func_name(c->funcName, c->type, wrapperFuncNameNext);

 bufPtr += sprintf(bufPtr, "%s%s%s \n", "void ** ", wrapperFuncName, " (struct JoinPoint * this);  \n");

 bufPtr = output_one_advice_declaration(ad, 0, bufPtr);

        bufPtr += sprintf(bufPtr, "%s%s%s \n", "void ** ", wrapperFuncName, " (struct JoinPoint * this) { \n");

 if(needReturnValue(c)) {
  getPlainType(c->rtType, prtType);
         bufPtr += sprintf(bufPtr, "%s %s %s %s %s \n", prtType, "**", " rp = ( ", prtType, "**)(this->retValue);");
                bufPtr += sprintf(bufPtr, "%s %s \n", prtType, " temp ; ");
 }

 bufPtr += sprintf(bufPtr, "%s = %s %s %s ; \n", "this->fp", "&(", wrapperFuncNameNext, ")" );
 if(aQ->emitCond) {
         bufPtr += sprintf(bufPtr, "if( %s ) { \n", ad->cflowCondition);
 }

        if(needReturnValue(c)) {
         bufPtr += sprintf(bufPtr, "%s = ", "temp");
 }

        bufPtr += sprintf(bufPtr, "%s%s", ad->name, "(");

        while(param) {
         if(param->indexInContext->argIndex == 0) {
                 index = 0;
         }else {
                 index = findArgIndexInContext(param->indexInContext, c)->argIndex;
         }
         
# 1492 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
        ((void) sizeof ((
# 1492 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
        index >= 0
# 1492 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
        ) ? 1 : 0), __extension__ ({ if (
# 1492 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
        index >= 0
# 1492 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
        ) ; else __assert_fail (
# 1492 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
        "index >= 0"
# 1492 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
        , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1492, __extension__ __PRETTY_FUNCTION__); }))
# 1492 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                          ;

  if(index == 0) {
   
# 1495 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 1495 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  param->matchAddress == 0
# 1495 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 1495 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  param->matchAddress == 0
# 1495 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ; else __assert_fail (
# 1495 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "param->matchAddress == FALSE"
# 1495 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1495, __extension__ __PRETTY_FUNCTION__); }))
# 1495 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                      ;
   bufPtr += sprintf(bufPtr, "%s ", "retValue_acc");
  }else {
   bufPtr += sprintf(bufPtr, " %s ( %s %s) %s %d %s ", param->matchAddress ? "" : "*", param->p.type, param->matchAddress ? "" : "*", "(this->args[", --index, "])");
  }

  if(param->next) bufPtr += sprintf(bufPtr, "%s ", ", ");
                param = param->next;
 }

 if(ad->malInfo & 0x0000000000004000) {

                bufPtr += sprintf(bufPtr, "%s %s ", ad->p ? "," : "", "this");
       }

 bufPtr += sprintf(bufPtr, " %s ", "); \n");


 if(aQ->emitCond) {
  bufPtr += sprintf(bufPtr, "%s \n", " } else {" );

  if(needReturnValue(c)) {
   bufPtr += sprintf(bufPtr, "%s = (** (%s **)", "temp", prtType);
  }

  bufPtr += sprintf(bufPtr, "%s %s %s %s ", wrapperFuncNameNext, "(", "this", ")");
  if(needReturnValue(c)) {
   bufPtr += sprintf(bufPtr, "%s", ")");
  }

  bufPtr += sprintf(bufPtr, "%s", "; \n } \n");

 }

 if(needReturnValue(c)) {
                bufPtr += sprintf(bufPtr, "%s \n", "** rp = temp ; ");
        }

 bufPtr += sprintf(bufPtr, "%s \n", "return this->retValue;");

 bufPtr += sprintf(bufPtr, " %s \n", " } ");

 newDecl = (char *)malloc(strlen(buf) + 1);
 sprintf(newDecl, "%s", buf);

 return newDecl;
}

char * genSrcLineInfo(char * buf) {
       char * fileName;
       if(needLine()) {
  get_target_file_name(&fileName);
         sprintf(buf, "\n%s # %d \"%s\"\n", "UTAC__ORISRC__LINE__", get_curr_line_no() + 3, fileName);
 }else {
  sprintf(buf, "%s", "\n");
 }
       return buf;
}
# 1565 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
char * getOneParam(char ** ptr) {
 int level = 0;
 int i;
 char buf[1000];
 char * bufP = buf;
 char * oneP;
 char * tP = *ptr;

 
# 1573 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 1573 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
tP && *tP == '('
# 1573 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 1573 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
tP && *tP == '('
# 1573 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 1573 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"tP && *tP == '('"
# 1573 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1573, __extension__ __PRETTY_FUNCTION__); }))
# 1573 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        ;

 tP ++;

 while(1) {
  if(*tP == ')' && level == 0) {
   break;
  }
  if(*tP == '(') level ++;
  if(*tP == ')') level --;

  *bufP ++ = *tP ++;
 }

 *bufP = '\0';

 oneP = (char *)malloc(strlen(buf) + 1);
 sprintf(oneP, "%s", buf);

 *ptr = (++tP);
 return oneP;
}


char * buildParamDecl(char * buf, char * type, char * id) {
 char * ptr = type;
 char * bPtr = buf;
 char * oneParam = 
# 1600 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                  ((void *)0)
# 1600 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                      ;
 if(strstr(type, "fp:[") == type) {

  ptr += 4;

  while(*ptr != ']') {

   *bPtr++ = *ptr++;
  }

  bPtr += sprintf(bPtr, "(*%s)(", id == 
# 1610 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                       ((void *)0) 
# 1610 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                            ? "" : id);
  ptr ++;
  
# 1612 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ((void) sizeof ((
# 1612 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 *ptr == '['
# 1612 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ) ? 1 : 0), __extension__ ({ if (
# 1612 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 *ptr == '['
# 1612 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ) ; else __assert_fail (
# 1612 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 "*ptr == '['"
# 1612 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1612, __extension__ __PRETTY_FUNCTION__); }))
# 1612 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                    ;
  ptr ++;

  while(1) {
   
# 1616 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 1616 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  *ptr == ']' || *ptr == '('
# 1616 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 1616 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  *ptr == ']' || *ptr == '('
# 1616 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ; else __assert_fail (
# 1616 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "*ptr == ']' || *ptr == '('"
# 1616 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1616, __extension__ __PRETTY_FUNCTION__); }))
# 1616 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                    ;
   if(*ptr == ']') {

    bPtr += sprintf(bPtr, "%s", ")");
    break;
   }else {
    oneParam = getOneParam(&ptr);
    bPtr = buildParamDecl(bPtr, oneParam, 
# 1623 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                         ((void *)0)
# 1623 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                             );
    if(oneParam) free(oneParam);
    if(*ptr != ']') {
     bPtr += sprintf(bPtr, "%s", ",");
    }
   }
  }
 }else {
  bPtr += sprintf(buf, "%s %s", type, id == 
# 1631 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                           ((void *)0) 
# 1631 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                ? "" : id);
 }

 return bPtr;
}
void buildGenFuncDecl(char * buf, struct CallContext * c) {
        char * ptr;
 struct Param *pa;
 char pBuf[1000];
 char funcBuf[1000];

 ptr = funcBuf;

 boolean needExtraArgu = 0;

 switch(c->context.type) {
  case SETPC:
  case GETPC:
   {
    char * tmp = strstr(c->newFuncName, "(");
    
# 1651 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ((void) sizeof ((
# 1651 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   tmp
# 1651 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ) ? 1 : 0), __extension__ ({ if (
# 1651 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   tmp
# 1651 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ) ; else __assert_fail (
# 1651 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   "tmp"
# 1651 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1651, __extension__ __PRETTY_FUNCTION__); }))
# 1651 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
              ;
    *tmp = '\0';
    ptr += sprintf(ptr, " %s (", c->newFuncName);
    *tmp = '(';
   }
   break;
  default:
   ptr += sprintf(ptr, " %s (", c->newFuncName);
        }

 pa = c->context.p;

 if(c->context.type == CALLP || (c->context.malInfo & 0x0000000000000800)) {


  needExtraArgu = 1;
 }

 if(pa==
# 1669 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ((void *)0) 
# 1669 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
            && needExtraArgu == 0) {
  ptr += sprintf(ptr, "%s", "void");
 }else {
  while(pa != 
# 1672 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
             ((void *)0)
# 1672 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                 ){
             buildParamDecl(pBuf, pa->type, pa->id);
      ptr += sprintf(ptr, "%s %s", pBuf, (pa->next == 
# 1674 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                     ((void *)0)
# 1674 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                         ? " ": ","));
             pa = pa->next;
         }
         if(needExtraArgu) {
                 if(c->context.p != 
# 1678 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                   ((void *)0)
# 1678 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                       )
                         ptr += sprintf(ptr, "%s", ",");
                 if(c->context.type == CALLP) {
                         build_func_pointer_type_decl(pBuf, c);
                         ptr += sprintf(ptr, "%s", pBuf);
                         if(c->context.malInfo & 0x0000000000000800) {
                                 ptr += sprintf(ptr, "%s", ",");
                         }
                 }

                 if(c->context.malInfo & 0x0000000000000800) {
                         ptr += sprintf(ptr, "void * %s ", "__utac__excep_para");
                 }
         }
 }
 ptr += sprintf(ptr, "%s ", ")");


 buildParamDecl(pBuf, c->context.rtType, funcBuf);

        sprintf(buf, "static inline %s", pBuf);

}



void build_func_pointer_type_decl(char * buf, struct CallContext * c) {
 char * ptr = buf;
        struct Param *pa;
        char pBuf[1000];

        ptr += sprintf(ptr, "%s (* %s) (", c->context.rtType, "__utac__fp__para");
        pa = c->context.p;
        while(pa != 
# 1711 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                   ((void *)0)
# 1711 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       ){
           buildParamDecl(pBuf, pa->type, pa->id);
           ptr += sprintf(ptr, "%s %s", pBuf, (pa->next == 
# 1713 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                          ((void *)0)
# 1713 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                              ? " ": ","));
           pa = pa->next;
        }
        ptr += sprintf(ptr, "%s ", ")");
}

void buildJoinPointContext(long srcinfo, char * inFuncName, char * funcName, char * type, char ** context) {
 struct FuncInfo *tmpFunc = 
# 1720 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                           ((void *)0)
# 1720 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                               ;
 struct Context * c;
 PointcutType pType = text2PointcutType(type);

 
# 1724 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 1724 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
pType == CALL || pType == EXECUTION || pType == INTYPE || pType == CALLP || pType == GETPC || pType == SETPC
# 1724 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 1724 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
pType == CALL || pType == EXECUTION || pType == INTYPE || pType == CALLP || pType == GETPC || pType == SETPC
# 1724 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 1724 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"pType == CALL || pType == EXECUTION || pType == INTYPE || pType == CALLP || pType == GETPC || pType == SETPC"
# 1724 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1724, __extension__ __PRETTY_FUNCTION__); }))
# 1724 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                                                                    ;

        switch(pType) {
  case INTYPE :
   break;
  case CALLP:
   tmpFunc = searchFP(fpTable, funcName, inFuncName);
                 if(tmpFunc == 
# 1731 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                              ((void *)0)
# 1731 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                  ) {
                         *context = 
# 1732 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                   ((void *)0)
# 1732 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                       ;
                         return;
                 }
   break;
  case SETPC:
  case GETPC:
   tmpFunc = searchFunc(varTable, funcName);
                        if(tmpFunc == 
# 1739 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                     ((void *)0) 
# 1739 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                          || (tmpFunc->malInfo & 0x0000000000010000)) {

                                *context = 
# 1741 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                          ((void *)0)
# 1741 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                              ;
                                return;
                        }
   break;
  case CALL:
  case EXECUTION:
                 tmpFunc = searchFunc(funcTable, funcName);
                 if(pType == EXECUTION) 
# 1748 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                       ((void) sizeof ((
# 1748 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                       tmpFunc
# 1748 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                       ) ? 1 : 0), __extension__ ({ if (
# 1748 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                       tmpFunc
# 1748 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                       ) ; else __assert_fail (
# 1748 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                       "tmpFunc"
# 1748 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                       , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1748, __extension__ __PRETTY_FUNCTION__); }))
# 1748 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                      ;

                 if(tmpFunc == 
# 1750 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                              ((void *)0)
# 1750 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                  ) {

                         *context = 
# 1752 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                   ((void *)0)
# 1752 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                       ;
                         return;
                 }
   break;
  default:
   
# 1757 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 1757 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  0
# 1757 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 1757 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  0
# 1757 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ; else __assert_fail (
# 1757 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "0"
# 1757 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1757, __extension__ __PRETTY_FUNCTION__); }))
# 1757 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
           ;
 }

 if(pType == CALL || pType == CALLP || pType == GETPC || pType == SETPC) {
  c = (struct Context*)(malloc(sizeof(struct CallContext)));
  ((struct CallContext*)c)->newFuncName = 
# 1762 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                         ((void *)0)
# 1762 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                             ;
  ((struct CallContext*)c)->next = 
# 1763 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                  ((void *)0)
# 1763 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                      ;
 }else {
   c = (struct Context *)(malloc(sizeof(struct Context)));
 }

 c->insideFile = srcinfo;
 c->insideFunc = inFuncName;
 c->funcName = funcName;
 c->type = pType;
 switch(pType) {
  case INTYPE:
                 c->rtType = 
# 1774 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                            ((void *)0)
# 1774 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                ;
                 c->p = 
# 1775 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       ((void *)0)
# 1775 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                           ;
          c->malInfo = 0;
   break;
  case SETPC:
   {
   struct Param * p1, *p2;
   c->rtType = tmpFunc->rtType;
   c->malInfo = tmpFunc->malInfo;







                        p1 = copy_parameters(tmpFunc->p);
   p2 = copy_parameters(tmpFunc->p);

   addStarToType(&(p1->type));


   
# 1796 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 1796 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  p2->id[strlen(p2->id)-1] == '0'
# 1796 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 1796 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  p2->id[strlen(p2->id)-1] == '0'
# 1796 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ; else __assert_fail (
# 1796 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "p2->id[strlen(p2->id)-1] == '0'"
# 1796 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1796, __extension__ __PRETTY_FUNCTION__); }))
# 1796 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                         ;
   p2->id[strlen(p2->id)-1] = '1';

   p1->next = p2;
   c->p = p1;
   }
   break;
  default:
                 c->rtType = tmpFunc->rtType;
                 c->p = copy_parameters(tmpFunc->p);
   c->malInfo = tmpFunc->malInfo;
 }

 c->numOfCH = 0;
 c->before_advices = 
# 1810 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                    ((void *)0)
# 1810 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        ;
        c->after_advices = 
# 1811 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                          ((void *)0)
# 1811 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                              ;
        c->around_advices = 
# 1812 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                           ((void *)0)
# 1812 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                               ;

 *context = (char *)(c);

}

void buildType(long type, char * tag, char ** name) {
        char nameBuf[300];

        setComplexTypeName(type, nameBuf, tag);

        *name = (char *)malloc(strlen(nameBuf) + 1);

        sprintf(*name, "%s", nameBuf);
}






void match_call_join_point(char * context, char * realName, char **newFuncName) {
        struct CallContext * c = 
# 1834 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                ((void *)0)
# 1834 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                    ;
 long matched = 0;
 char * tmp;
 char * baseFileName;

 c = (struct CallContext *)(context);
 if(c == 
# 1840 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
        ((void *)0)
# 1840 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
            ) {
           *newFuncName = realName;
           free_call_context(c);
  return;
    }

 match_join_point( (char *)(c), &matched);

 if(matched) {
        get_target_file_base_name(&baseFileName);
  tmp = (char *)malloc(strlen(c->context.funcName) + strlen(baseFileName) + 4 + 5);
  sprintf(tmp, "%s__%s__%d", c->context.funcName, baseFileName, call_counter++);
        *newFuncName = tmp;
                c->newFuncName = tmp;
  addMatchedCallContexts(&(matchedCallContexts), c);
  if(c->context.type == CALLP) {
   curr_call_fp_name = c->context.funcName;
  }
 }else {
  *newFuncName = realName;
  free_call_context(c);
 }
}

void match_get_join_point(char * context, char * realName, char **newFuncName) {
        struct CallContext * c = 
# 1865 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                ((void *)0)
# 1865 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                    ;
        long matched = 0;
        char * tmp;
        char * baseFileName;
        c = (struct CallContext *)(context);
 if(c == 
# 1870 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
        ((void *)0)
# 1870 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
            ) {
                *newFuncName = realName;
                free_call_context(c);
                return;
        }

        match_join_point( (char *)(c), &matched);

 if(matched) {
  get_target_file_base_name(&baseFileName);
  tmp = (char *)malloc( 2 * strlen(c->context.funcName) +
     strlen(baseFileName) +
     4 +
     4 +
     2 +
     1 +
     (curr_call_has_preturn == 0 ?
      2
       : (10 + strlen("__utac__excep_var"))));

  sprintf(tmp, "%s__%s__%d(%s%s%s)", c->context.funcName, baseFileName, call_counter++, c->context.funcName, curr_call_has_preturn == 0 ? " " : ",(void *)&",
   curr_call_has_preturn == 0 ? " " : "__utac__excep_var" );

  *newFuncName = tmp;
                c->newFuncName = tmp;
                addMatchedCallContexts(&(matchedCallContexts), c);
         curr_call_has_preturn = 0;
 }else {
                *newFuncName = realName;
                free_call_context(c);
        }
}

int matched_a_set_pc = 0;
void incrMatchedSetPC() {
 matched_a_set_pc ++;
}

void decrMatchedSetPC() {
 matched_a_set_pc --;
}

void hasMatchedSetPC(long *flag) {
 *flag = (matched_a_set_pc ? 1 : 0);
}

void match_set_join_point(char * context, char * realName, char **newFuncName) {
        struct CallContext * c = 
# 1917 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                ((void *)0)
# 1917 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                    ;
        long matched = 0;
        char * tmp;
        char * baseFileName;
        c = (struct CallContext *)(context);
        if(c == 
# 1922 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
               ((void *)0)
# 1922 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                   ) {
                *newFuncName = realName;
                free_call_context(c);
                return;
        }

        match_join_point( (char *)(c), &matched);

 if(matched) {
                get_target_file_base_name(&baseFileName);
                tmp = (char *)malloc( 2 * strlen(c->context.funcName) +
                                        strlen(baseFileName) +
                                        4 +
                                        4 +
                                        3 +
                                        1 );
  sprintf(tmp, "%s__%s__%d(&%s,", c->context.funcName, baseFileName, call_counter++, c->context.funcName);
                *newFuncName = tmp;
                c->newFuncName = tmp;
                addMatchedCallContexts(&(matchedCallContexts), c);
     incrMatchedSetPC();
 }else {
                *newFuncName = realName;
                free_call_context(c);
        }
}



boolean match_pointcut_type(PointcutType pattern, PointcutType realJoinPoint) {
 
# 1952 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 1952 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
realJoinPoint == EXECUTION || realJoinPoint == CALL || realJoinPoint == CALLP || realJoinPoint == INTYPE || realJoinPoint == GETPC || realJoinPoint == SETPC
# 1952 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 1952 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
realJoinPoint == EXECUTION || realJoinPoint == CALL || realJoinPoint == CALLP || realJoinPoint == INTYPE || realJoinPoint == GETPC || realJoinPoint == SETPC
# 1952 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 1952 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"realJoinPoint == EXECUTION || realJoinPoint == CALL || realJoinPoint == CALLP || realJoinPoint == INTYPE || realJoinPoint == GETPC || realJoinPoint == SETPC"
# 1952 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1952, __extension__ __PRETTY_FUNCTION__); }))
                                                                                 
# 1953 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                                ;
 
# 1954 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 1954 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
pattern == EXECUTION || pattern == CALL || pattern == ARGS || pattern == RESULT || pattern == INTYPE || pattern == CALLP || pattern == GETPC || pattern == SETPC
# 1954 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 1954 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
pattern == EXECUTION || pattern == CALL || pattern == ARGS || pattern == RESULT || pattern == INTYPE || pattern == CALLP || pattern == GETPC || pattern == SETPC
# 1954 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 1954 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"pattern == EXECUTION || pattern == CALL || pattern == ARGS || pattern == RESULT || pattern == INTYPE || pattern == CALLP || pattern == GETPC || pattern == SETPC"
# 1954 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1954, __extension__ __PRETTY_FUNCTION__); }))
# 1954 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                                                                                                                        ;

 if( (pattern == ARGS || pattern == RESULT) &&
     (realJoinPoint == EXECUTION || realJoinPoint == CALL || realJoinPoint == CALLP || realJoinPoint == GETPC || realJoinPoint == SETPC)) return 1;

 return pattern == realJoinPoint;
}


void match_join_point(char * context, long * findAMatch) {
        struct Context * c = (struct Context *)(context);
        struct Record *ptr = PointCutTable;
        struct CFlowRecord *cflowPtr = cflowTable;
 struct TryRecord *tryPtr = tryTable;
 struct advice *ad, *ad1, *ad2;
        char * condition = 
# 1969 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                          ((void *)0)
# 1969 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                              ;
 boolean matched = 0;


        if(c == 
# 1973 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
               ((void *)0) 
# 1973 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                    || (c->malInfo & 0x0000000000000080) || c->insideFunc == 
# 1973 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                                      ((void *)0) 
# 1973 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                           ) {
  *findAMatch = 0;
  return;
 }

        while(ptr != 
# 1978 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                    ((void *)0)
# 1978 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        ){
                if(ptr->type != NAMEDPC && ptr->type != INTYPE ) {
                        matched = match_pointcut_with_jp(ptr, c , &condition);
                        if(matched == 1 || matched == 2) {
                                ad = ptr->aList;
                                if(matched == 2) {
     if(ad->cflowCondition) free(ad->cflowCondition);
     ad->cflowCondition = condition;
    }

    if(ad != 
# 1988 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
            ((void *)0)
# 1988 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                ){
                                        newEnqueueAdvice(ad->type, c, ad, matched == 1 ? 0 : 1);
                                        if(ad->malInfo & 0x0000000000000800) {
                                                c->malInfo |= 0x0000000000000800;
                                                needSetjmp = 1;
                                                if(c->type == CALL || c->type == GETPC || c->type == SETPC) {
       curr_call_has_preturn = 1;
       
# 1995 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
      ((void) sizeof ((
# 1995 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
      currExecContext
# 1995 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
      ) ? 1 : 0), __extension__ ({ if (
# 1995 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
      currExecContext
# 1995 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
      ) ; else __assert_fail (
# 1995 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
      "currExecContext"
# 1995 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
      , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 1995, __extension__ __PRETTY_FUNCTION__); }))
# 1995 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                             ;
       currExecContext->malInfo |= 0x0000000000000800;
      }
                                        }

     if(ad->malInfo & 0x0000000000001000) {
                                                c->malInfo |= 0x0000000000001000;
      needSetjmp = 1;
                                        }

     *findAMatch = 1;
                                }
   }
                }
                ptr = ptr->next;
        }

 while(cflowPtr != 
# 2012 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                  ((void *)0)
# 2012 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                      ) {
  matched = match_pointcut_with_jp(cflowPtr->pc, c, 
# 2013 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                   ((void *)0)
# 2013 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                       );
  if(matched == 1) {
   ad1 = (struct advice*)(malloc(sizeof(struct advice)));
   ad2 = (struct advice*)(malloc(sizeof(struct advice)));
   ad1->name = copy_chars(cflowPtr->pc->cflowFuncName);
   ad2->name = copy_chars(cflowPtr->pc->cflowFuncName);
   ad1->rtType = ad2->rtType = 
# 2019 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                              ((void *)0)
# 2019 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                  ;
   ad1->type = ADBEFORECFLOW;
     ad2->type = ADAFTERCFLOW;
   ad1->p = ad2->p = 
# 2022 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                    ((void *)0)
# 2022 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        ;
   ad1->malInfo = ad2->malInfo = 0;
     ad1->acFileBaseName = ad2->acFileBaseName = 
# 2024 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                ((void *)0)
# 2024 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                    ;
     ad1->cflowCondition = ad2->cflowCondition = 
# 2025 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                ((void *)0)
# 2025 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                    ;
   newEnqueueAdvice(BEFORE, c, ad1, 0);
   appendAdvice(AFTER, c, ad2);
   *findAMatch = 1;


   insert_advice_for_args_in_cflow(cflowPtr->argsPCs, c);

  }
  cflowPtr = cflowPtr->next;
 }



        while(tryPtr != 
# 2039 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       ((void *)0)
# 2039 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                           ) {
                matched = match_pointcut_with_jp(tryPtr->pc, c, &condition);
                if(matched == 1 || matched == 2) {
                        ad1 = (struct advice*)(malloc(sizeof(struct advice)));
                        ad2 = (struct advice*)(malloc(sizeof(struct advice)));
                        ad1->name = (char *)tryPtr->ad;
                        ad2->name = 
# 2045 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                   ((void *)0)
# 2045 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                       ;
                        ad1->type = ADBEFORETRY;
                        ad2->type = ADAFTERTRY;
                        ad1->p = ad2->p = 
# 2048 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                         ((void *)0)
# 2048 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                             ;
                        ad1->acFileBaseName = ad2->acFileBaseName = 
# 2049 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                                   ((void *)0)
# 2049 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                       ;
                        ad1->cflowCondition = (matched == 2 ? condition : 
# 2050 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                                               ((void *)0)
# 2050 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                                   );
   ad2->cflowCondition = (matched == 2 ? copy_chars(condition) : 
# 2051 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                                      ((void *)0)
# 2051 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                          ) ;
                        newEnqueueAdvice(BEFORE, c, ad1, 0);
                        appendAdvice(AFTER, c, ad2);
                        *findAMatch = 1;
                        c->malInfo |= 0x0000000000008000;
   needSetjmp = 1;
   c->numOfCH ++ ;

                                                                               ad1->rtType = (char *)c->numOfCH;

   ad2->rtType = 
# 2061 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                ((void *)0)
# 2061 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                    ;

   ad1->malInfo = tryPtr->ad->malInfo;
   if(ad1->malInfo & 0x0000000000000800) {
                               c->malInfo |= 0x0000000000000800;
                               if(c->type == CALL || c->type == GETPC || c->type == SETPC) {
                                        curr_call_has_preturn = 1;
                                        
# 2068 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                       ((void) sizeof ((
# 2068 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                       currExecContext
# 2068 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                       ) ? 1 : 0), __extension__ ({ if (
# 2068 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                       currExecContext
# 2068 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                       ) ; else __assert_fail (
# 2068 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                       "currExecContext"
# 2068 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                       , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2068, __extension__ __PRETTY_FUNCTION__); }))
# 2068 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                              ;
                                        currExecContext->malInfo |= 0x0000000000000800;
                               }
                        }

   ad2->malInfo = 0;



  }
                tryPtr = tryPtr->next;
        }

}


void match_intype_join_point(char * context , char ** result) {
        struct Context * c = (struct Context *)(context);
        struct Record *ptr = PointCutTable;
        char adviceBuf[2000];
        char * bufPtr;

        if(c == 
# 2090 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
               ((void *)0)
# 2090 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                   ) return;

        
# 2092 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ((void) sizeof ((
# 2092 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       c->type == INTYPE
# 2092 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ) ? 1 : 0), __extension__ ({ if (
# 2092 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       c->type == INTYPE
# 2092 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       ) ; else __assert_fail (
# 2092 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
       "c->type == INTYPE"
# 2092 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
       , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2092, __extension__ __PRETTY_FUNCTION__); }))
# 2092 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                ;

        adviceBuf[0] = '\0';
        bufPtr = &(adviceBuf[0]);

        while(ptr != 
# 2097 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                    ((void *)0)
# 2097 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        ){
  if(match_pointcut_with_jp(ptr, c, 
# 2098 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                   ((void *)0)
# 2098 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                       )) {
   bufPtr += sprintf(bufPtr, "%s#%s\n", ptr->aList->acFileBaseName, ptr->aList->name);
  }

                ptr = ptr->next;
        }

 if(adviceBuf[0] == '\0') {
                *result = 
# 2106 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                         ((void *)0)
# 2106 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                             ;
        }else {
                *result = (char *)malloc(strlen(adviceBuf) + 1);
                sprintf(*result, "%s", adviceBuf);
        }

 free_intype_context(c);
}
# 2143 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
boolean match_pointcut_with_jp(struct Record * pc, struct Context * context, char ** condition) {
       boolean result = 0;
 struct matchInfo *info;
    struct advice *ad;
 char * cond1 = 
# 2147 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
               ((void *)0)
# 2147 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                   , * cond2 = 
# 2147 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                               ((void *)0)
# 2147 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                   ;

 
# 2149 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 2149 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
context->type == CALL || context->type == CALLP || context->type == EXECUTION || context->type == INTYPE || context->type == GETPC || context->type == SETPC
# 2149 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 2149 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
context->type == CALL || context->type == CALLP || context->type == EXECUTION || context->type == INTYPE || context->type == GETPC || context->type == SETPC
# 2149 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 2149 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"context->type == CALL || context->type == CALLP || context->type == EXECUTION || context->type == INTYPE || context->type == GETPC || context->type == SETPC"
# 2149 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2149, __extension__ __PRETTY_FUNCTION__); }))



                            
# 2153 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                           ;

 if(pc == 
# 2155 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
         ((void *)0)
# 2155 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
             ) {
  result = 0;
 }else
 if(pc->type == INFILE) {
  result = match_name(pc->info.inside,
    number_to_name(context->insideFile/ 1000000));
 }else
 if(pc->type == INFUNC) {
  result = match_name(pc->info.inside, context->insideFunc);
 }else
 if(pc->type == CALL || pc->type == EXECUTION
  || pc->type == ARGS || pc->type == RESULT || pc->type == GETPC || pc->type == SETPC) {

    if(! match_pointcut_type(pc->type, context->type)) goto END;

    info = pc->info.mInfo;

    if(!match_name(info->funcName, context->funcName)) goto END;


           if(!match_type(info->rtType, context->rtType)) goto END;


    if(pc->type != RESULT && !match_parameters(info->p, context->p , (pc->type == ARGS), 1 , context )) goto END;

    result = 1;

 }else
        if(pc->type == COMP_AND) {
    result = match_pointcut_with_jp(pc->info.childPCs[0], context, &cond1);
    if(result == 1) {
  result = match_pointcut_with_jp(pc->info.childPCs[1], context, condition);
    }else if(result == 0) {
    }else {

  
# 2190 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ((void) sizeof ((
# 2190 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 cond1
# 2190 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ) ? 1 : 0), __extension__ ({ if (
# 2190 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 cond1
# 2190 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ) ; else __assert_fail (
# 2190 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 "cond1"
# 2190 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2190, __extension__ __PRETTY_FUNCTION__); }))
# 2190 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
              ;
  result = match_pointcut_with_jp(pc->info.childPCs[1], context, &cond2);
  if(result != 0) {
   if(result == 1) {
    result = 2;
    *condition = cond1;
   }else {

    
# 2198 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ((void) sizeof ((
# 2198 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   cond2
# 2198 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ) ? 1 : 0), __extension__ ({ if (
# 2198 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   cond2
# 2198 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ) ; else __assert_fail (
# 2198 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   "cond2"
# 2198 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2198, __extension__ __PRETTY_FUNCTION__); }))
# 2198 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                ;
    *condition = (char *)malloc(strlen(cond1) + strlen(cond2) + 7);
    sprintf(*condition, "(%s && %s)", (cond1), (cond2));
    if(cond1) free(cond1);
    if(cond2) free(cond2);
   }
  }else {
   if(cond1) free(cond1);
  }
    }
        }else
 if(pc->type == COMP_OR) {
    result = match_pointcut_with_jp(pc->info.childPCs[0], context, &cond1);
           if(result == 0) {
                result = match_pointcut_with_jp(pc->info.childPCs[1], context, condition);
           }else if(result == 1) {
    }else {

  
# 2216 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ((void) sizeof ((
# 2216 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 cond1
# 2216 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ) ? 1 : 0), __extension__ ({ if (
# 2216 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 cond1
# 2216 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ) ; else __assert_fail (
# 2216 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 "cond1"
# 2216 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2216, __extension__ __PRETTY_FUNCTION__); }))
# 2216 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
              ;
  result = match_pointcut_with_jp(pc->info.childPCs[1], context, &cond2);
  if(result != 1) {
   if(result == 0) {
    result = 2;
    *condition = cond1;
   }else {

    
# 2224 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ((void) sizeof ((
# 2224 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   cond2
# 2224 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ) ? 1 : 0), __extension__ ({ if (
# 2224 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   cond2
# 2224 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   ) ; else __assert_fail (
# 2224 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
   "cond2"
# 2224 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
   , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2224, __extension__ __PRETTY_FUNCTION__); }))
# 2224 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                ;
    *condition = (char *)malloc(strlen(cond1) + strlen(cond2) + 7);
    sprintf(*condition, "(%s || %s)", (cond1), (cond2));
    if(cond1) free(cond1);
    if(cond2) free(cond2);
   }
  }else {
   if(cond1) free(cond1);
  }
    }
 }else
        if(pc->type == COMP_NOT) {
           result = match_pointcut_with_jp(pc->info.childPC, context, &cond1);
           if(result == 0) {
                result = 1;
           }else if(result == 1) {
  result = 0;
    }else {
  *condition = (char *)malloc(strlen(cond1) + 4);
  sprintf(*condition, "!(%s)", cond1);
  if(cond1) free(cond1);
    }
        }else
  if(pc->type == PCNAME) {
           struct Record * realPC = findPointcut(PointCutTable, pc->name);
           
# 2249 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
          ((void) sizeof ((
# 2249 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
          realPC
# 2249 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
          ) ? 1 : 0), __extension__ ({ if (
# 2249 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
          realPC
# 2249 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
          ) ; else __assert_fail (
# 2249 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
          "realPC"
# 2249 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
          , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2249, __extension__ __PRETTY_FUNCTION__); })) 
# 2249 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                         ;
           result = match_pointcut_with_jp(realPC, context, condition);
           if( ( result == 1 || result == 2 ) && pc->info.mInfo->p != 
# 2251 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                                              ((void *)0)
# 2251 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                                  ) {
                struct pointcutParam * pp = pc->info.mInfo->p;
                struct adviceParam * ap = realPC->aList->p;
                struct argIndexInContext * argIndex = 
# 2254 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                     ((void *)0)
# 2254 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                         ;
  
# 2255 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ((void) sizeof ((
# 2255 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 realPC->aList && realPC->aList->p
# 2255 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ) ? 1 : 0), __extension__ ({ if (
# 2255 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 realPC->aList && realPC->aList->p
# 2255 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 ) ; else __assert_fail (
# 2255 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
 "realPC->aList && realPC->aList->p"
# 2255 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
 , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2255, __extension__ __PRETTY_FUNCTION__); }))
# 2255 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                          ;

                while(pp) {
   
# 2258 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 2258 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  ap
# 2258 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 2258 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  ap
# 2258 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ; else __assert_fail (
# 2258 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "ap"
# 2258 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2258, __extension__ __PRETTY_FUNCTION__); }))
# 2258 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
            ;

                        
# 2260 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       ((void) sizeof ((
# 2260 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       match_name(pp->ap->p.type, ap->p.type)
# 2260 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       ) ? 1 : 0), __extension__ ({ if (
# 2260 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       match_name(pp->ap->p.type, ap->p.type)
# 2260 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       ) ; else __assert_fail (
# 2260 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       "match_name(pp->ap->p.type, ap->p.type)"
# 2260 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2260, __extension__ __PRETTY_FUNCTION__); }))
# 2260 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                     ;
                        
# 2261 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       ((void) sizeof ((
# 2261 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       pp->ap->indexInContext
# 2261 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       ) ? 1 : 0), __extension__ ({ if (
# 2261 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       pp->ap->indexInContext
# 2261 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       ) ; else __assert_fail (
# 2261 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       "pp->ap->indexInContext"
# 2261 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2261, __extension__ __PRETTY_FUNCTION__); }))
# 2261 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                     ;

   argIndex = findArgIndexInContext(ap->indexInContext, context);
   
# 2264 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 2264 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  argIndex || (argIndex == 
# 2264 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void *)0) 
# 2264 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  && ap->indexInContext->argIndex==0)
# 2264 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 2264 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  argIndex || (argIndex == 
# 2264 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void *)0) 
# 2264 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  && ap->indexInContext->argIndex==0)
# 2264 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ; else __assert_fail (
# 2264 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "argIndex || (argIndex == NULL && ap->indexInContext->argIndex==0)"
# 2264 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2264, __extension__ __PRETTY_FUNCTION__); }))
                                                                                     
# 2265 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                                    ;

   if(argIndex) {
    createNewArgIndex(pp->ap, context, argIndex->argIndex);
                        }else {
    pp->ap->indexInContext->argIndex = 0;
   }

   pp->ap->matchAddress = ap->matchAddress;

                        ap = ap->next;
                        pp = pp->next;
                }

                
# 2279 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
               ((void) sizeof ((
# 2279 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               ap == 
# 2279 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
               ((void *)0)) ? 1 : 0), __extension__ ({ if (
# 2279 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               ap == 
# 2279 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
               ((void *)0)) ; else __assert_fail (
# 2279 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               "ap == NULL"
# 2279 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
               , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2279, __extension__ __PRETTY_FUNCTION__); }))
# 2279 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                 ;
           }
  }else
        if(pc->type == NAMEDPC) {
           
# 2283 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
          ((void) sizeof ((
# 2283 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
          pc->info.childPC && pc->aList
# 2283 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
          ) ? 1 : 0), __extension__ ({ if (
# 2283 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
          pc->info.childPC && pc->aList
# 2283 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
          ) ; else __assert_fail (
# 2283 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
          "pc->info.childPC && pc->aList"
# 2283 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
          , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2283, __extension__ __PRETTY_FUNCTION__); }))
# 2283 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                               ;
           result = match_pointcut_with_jp(pc->info.childPC, context, condition);
        }else
        if(pc->type == CFLOW) {
    if(condition == 
# 2287 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                   ((void *)0)
# 2287 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       ) goto END;
    result = 2;
           *condition = (char *)malloc(strlen(pc->info.childPC->cflowFuncName)
     +1
     +4
     +1
     +1
     +1
     +1
    );
    sprintf(*condition, "%s(%d,0)", pc->info.childPC->cflowFuncName, 3);
 }else
        if(pc->type == CALLP) {
           char condBuf[1000];
      char *cbp;

    if(! match_pointcut_type(pc->type, context->type)) goto END;

    info = pc->info.mInfo;

           if(!match_type(info->rtType, context->rtType)) goto END;

           if(pc->type != RESULT && !match_parameters(info->p, context->p , 0, 1 , context )) goto END;

           result = 2;
# 2331 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
    cbp = condBuf;
    cbp += sprintf(cbp, "(%s==%s @~ ( this.targetName=\"%s\")  @p3~ ", "__utac__fp__para", info->funcName, info->funcName);
    genFuncDecl(info->funcName, info->rtType, (struct Param*)(info->p), cbp, 0);


    *condition = (char *)malloc(strlen(condBuf) + 7 + 1);
           sprintf(*condition, "%s ; @# )", condBuf);
        }
        else
        if(pc->type == INTYPE) {
           result = match_typedef_name(pc->info.mInfo->p->p.type, context->funcName);
        }
 else
 if(pc->type == TRY) {
    result = 0;
 }
 else 
# 2347 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
     ((void) sizeof ((
# 2347 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
     0
# 2347 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
     ) ? 1 : 0), __extension__ ({ if (
# 2347 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
     0
# 2347 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
     ) ; else __assert_fail (
# 2347 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
     "0"
# 2347 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
     , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2347, __extension__ __PRETTY_FUNCTION__); }))
# 2347 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
              ;

END:

 return result;

}




boolean match_name(char * pattern, char * name) {
 char * patternC, * nameC , * nextPatternC;
 char * posInName = 
# 2360 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                   ((void *)0)
# 2360 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       ;
 char patternChar[2];
 boolean matched = 0;

 if(pattern == 
# 2364 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
              ((void *)0) 
# 2364 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                   || name == 
# 2364 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                              ((void *)0)
# 2364 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                  ) return 0;

 if(strstr(pattern, "$") == 
# 2366 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                           ((void *)0)
# 2366 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                               ){



     return !strcmp(pattern, name);

 }



 if(! strcmp(pattern, "$")) return 1;

 patternC = pattern;
 nameC = name;

 if(*patternC != '$') {
  if(*patternC == *nameC) return match_name(patternC + 1, nameC + 1);
  else return 0;
 }

 nextPatternC = (++patternC );
 if(*nextPatternC == '$') {
  if(*nextPatternC == *nameC) return match_name(patternC +1, nameC + 1);
  else return 0;
 }

 if(*nextPatternC == '\0') return 1;


 patternChar[0] = *nextPatternC;
 patternChar[1] = '\0';

 posInName = strstr(nameC, patternChar);

 while(posInName != 
# 2400 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                   ((void *)0)
# 2400 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       ) {
  matched = match_name(nextPatternC + 1, posInName + 1);
  if(matched == 1) break;
  nameC = nameC + 1;
  if(*(nameC) == '\0') break;
  posInName = strstr(nameC, patternChar);

 }

 return matched;
}

boolean match_type(char * type1, char * type2) {
        return match_name(type1, type2);
}


boolean match_parameters(struct pointcutParam * paramPattern,
   struct Param * param,
   boolean extractParam,
   int currIndex, struct Context * c) {
 struct Param * currPattern = (struct Param*)(paramPattern);
 struct Param * nextPattern = 
# 2422 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                             ((void *)0)
# 2422 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                 ;

 if(currPattern == 
# 2424 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                  ((void *)0)
# 2424 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                      ) {
  if(param == 
# 2425 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
             ((void *)0)
# 2425 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                 ) return 1;
  else return 0;
 }

 if(strstr(currPattern->type, "...") == 0) {

  if(match_one_parameter(currPattern, param, extractParam, currIndex, c)) {
   return match_parameters(paramPattern->next, param==
# 2432 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                     ((void *)0) 
# 2432 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                          ? 
# 2432 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                            ((void *)0) 
# 2432 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                                 : param->next, extractParam, currIndex + 1, c);
  }else {
   return 0;
  }
 }else {
  struct Param * matchedParam = 
# 2437 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                               ((void *)0)
# 2437 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                   ;
  int indexIncrease = 0 ;
  boolean matched = 0;
  boolean preMatched = 0;


  nextPattern = (struct Param*)(paramPattern->next);

  while(nextPattern != 
# 2445 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                      ((void *)0) 
# 2445 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                           && strstr(nextPattern->type, "...")) {
   nextPattern = nextPattern->next;
  }

  if(nextPattern == 
# 2449 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                   ((void *)0)
# 2449 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       ) return 1;
  if(param == 
# 2450 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
             ((void *)0)
# 2450 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                 ) return 0;

  matchedParam = find_parameter_by_type(nextPattern, param, &indexIncrease);
  while(matchedParam != 
# 2453 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                       ((void *)0)
# 2453 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                           ) {
   currIndex = currIndex + indexIncrease;
   matched = match_parameters((struct pointcutParam*)(nextPattern), matchedParam, extractParam, currIndex, c);
   if(preMatched == 0) preMatched = matched;
   indexIncrease = 0;
   currIndex ++;
   matchedParam = find_parameter_by_type(nextPattern, matchedParam->next, &indexIncrease);
  }

  return preMatched;
 }
 return 0;
}



boolean match_one_parameter(struct Param * currPattern, struct Param * param,
   boolean extractParam,
   int currIndex, struct Context * c) {
 struct pointcutParam * pcParam = (struct pointcutParam *)(currPattern);


 char * ptype = 
# 2475 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
               ((void *)0)
# 2475 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                   ;
 if(param != 
# 2476 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
            ((void *)0)
# 2476 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                ) {
  ptype = param->type;
 }else if(c->malInfo & 0x0000000000000040) {
  ptype = "void";
 }

 if(match_type(currPattern->type, ptype)) {
              if(extractParam) {
                   if(pcParam->ap != 
# 2484 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                    ((void *)0)
# 2484 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                        ) {
                         createNewArgIndex(pcParam->ap, c, currIndex);
                   }else {
                         
# 2487 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                        ((void) sizeof ((
# 2487 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        currPattern->id == 
# 2487 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                        ((void *)0)) ? 1 : 0), __extension__ ({ if (
# 2487 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        currPattern->id == 
# 2487 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                        ((void *)0)) ; else __assert_fail (
# 2487 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                        "currPattern->id == NULL"
# 2487 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                        , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2487, __extension__ __PRETTY_FUNCTION__); }))
# 2487 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                       ;
                   }
               }
               return 1;
 }else {
  return 0;
 }
}

boolean match_pointcut(struct Record * pc1, struct Record * pc2) {
 struct matchInfo * match1, *match2;
 struct Param * param1, *param2;
 
# 2499 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 2499 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
pc1 && pc2
# 2499 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 2499 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
pc1 && pc2
# 2499 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 2499 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"pc1 && pc2"
# 2499 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2499, __extension__ __PRETTY_FUNCTION__); }))
# 2499 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                  ;
 if(pc1->type != CALL && pc1->type != EXECUTION) return 0;
 
# 2501 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 2501 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
pc1->type == CALL || pc1->type == EXECUTION
# 2501 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 2501 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
pc1->type == CALL || pc1->type == EXECUTION
# 2501 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 2501 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"pc1->type == CALL || pc1->type == EXECUTION"
# 2501 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2501, __extension__ __PRETTY_FUNCTION__); }))
# 2501 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                   ;

 if(pc1->type != pc2->type) return 0;

 match1 = pc1->info.mInfo;
 match2 = pc2->info.mInfo;

 if(strcmp(match1->funcName, match2->funcName)) return 0;

   if(strcmp(match1->rtType, match2->rtType)) return 0;

 param1 = (struct Param*)(match1->p);
 param2 = (struct Param*)(match2->p);

 while(param1 != 
# 2515 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                ((void *)0) 
# 2515 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                     && param2 != 
# 2515 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                  ((void *)0)
# 2515 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                      ) {
  if(strcmp(param1->type, param2->type)) return 0;

  param1 = param1->next;
  param2 = param2->next;
 }

 if(param1 == 
# 2522 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
             ((void *)0) 
# 2522 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                  && param2 == 
# 2522 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                               ((void *)0)
# 2522 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                   ) return 1;

 return 0;
}
# 2534 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
void free_context(struct Context * temp) {
        free_parameters(temp->p);
 free_advice_queue(temp->before_advices);
 free_advice_queue(temp->after_advices);
 free_advice_queue(temp->around_advices);

 if(temp) free(temp);
}

void free_call_context(struct CallContext * temp) {
 struct CallContext * c = 
# 2544 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                         ((void *)0)
# 2544 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                             ;
 c = temp;

 if(c == 
# 2547 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
        ((void *)0)
# 2547 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
            ) return;
 free_call_context(c->next);

 if(c->newFuncName) free(c->newFuncName);
 free_context( (struct Context *)(c));
}

void free_intype_context(struct Context * temp) {
 if(temp->funcName) free(temp->funcName);
 free_context(temp);
}


void free_all_queues(){
 if(matchedCallContexts != 
# 2561 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                          ((void *)0)
# 2561 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                              ) {
  free_call_context(matchedCallContexts);
 }
 matchedCallContexts = 
# 2564 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                      ((void *)0)
# 2564 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                          ;
}

void free_parameters(struct Param * head) {
 struct Param * next ;
 if(head == 
# 2569 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
           ((void *)0)
# 2569 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               ) return;
 next = head->next;
 free_parameters(next);
 if(head->id) free(head->id);
 if(head->type) free(head->type);
 if(head) free(head);
}

void free_advice_queue(struct AdviceQueue * queue) {
 if(queue == 
# 2578 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
            ((void *)0)
# 2578 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                ) return;
 free_advice_queue(queue->next);
 switch(queue->data->type) {
  case ADBEFORETRY :
   queue->data->name = 
# 2582 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                      ((void *)0)
# 2582 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                          ;
   queue->data->rtType = 
# 2583 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                        ((void *)0)
# 2583 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                            ;
  case ADAFTERTRY:
  case ADBEFORECFLOW :
  case ADAFTERCFLOW :
  case ADARGSCFLOW:
   free_advices(queue->data);
 }

 if(queue) free(queue);
}

void free_scope(struct Scope * s) {
 
# 2595 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 2595 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
s
# 2595 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 2595 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
s
# 2595 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 2595 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"s"
# 2595 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2595, __extension__ __PRETTY_FUNCTION__); }))
# 2595 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
         ;
 free_scope_syms(s->syms);
 if(s) free(s);
}

void free_scope_syms(struct ScopeSym *ss) {
 if(ss == 
# 2601 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
         ((void *)0)
# 2601 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
             ) return;
 free_scope_syms(ss->next);
 if(ss) free(ss);
}



struct Param * find_parameter_by_index(struct Param * head, int index) {
 
# 2609 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 2609 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
head
# 2609 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 2609 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
head
# 2609 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 2609 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"head"
# 2609 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2609, __extension__ __PRETTY_FUNCTION__); }))
# 2609 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
            ;
 if(index == 1) return head;
 return find_parameter_by_index(head->next, index-1);
}

struct Param * find_parameter_by_type(struct Param * target, struct Param * head, int * indexIncrease ) {
        if(head == 
# 2615 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                  ((void *)0)
# 2615 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                      ) return 
# 2615 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                               ((void *)0)
# 2615 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                   ;
 if(match_name(target->type, head->type)) return head;

 *indexIncrease = *indexIncrease + 1;
 return find_parameter_by_type(target, head->next, indexIncrease);
}

struct argIndexInContext * findArgIndexInContext(struct argIndexInContext * head, struct Context * c) {
 if(head == 
# 2623 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
           ((void *)0)
# 2623 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
               ) return 
# 2623 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                        ((void *)0)
# 2623 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                            ;
 if(head->c == c) return head;
 return findArgIndexInContext(head->nextContext, c);
}



void logSetjmp(char * context) {
 struct Context * c = (struct Context *)context;

 if(isSJMPH_Emitted() == 0) {
                logGenDecls("#include <setjmp.h> \n", getCurrDefnLineNum());
                setSJMPH_Emitted();
        }

 
# 2638 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 2638 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
c
# 2638 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 2638 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
c
# 2638 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 2638 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"c"
# 2638 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2638, __extension__ __PRETTY_FUNCTION__); }))
# 2638 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
         ;
 
# 2639 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 2639 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
c->type == EXECUTION
# 2639 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 2639 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
c->type == EXECUTION
# 2639 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 2639 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"c->type == EXECUTION"
# 2639 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2639, __extension__ __PRETTY_FUNCTION__); }))
# 2639 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                            ;

 if(c->malInfo & 0x0000000000000800) {
  char buf[5000];
         char * bufptr;
         struct AdviceQueue * adptr;

  bufptr = &(buf[0]);

  bufptr += sprintf(bufptr, "\nstruct __UTAC__EXCEPTION %s ; \n jmp_buf %s ; \n int %s ; \n %s.jumpbuf = & %s ; \n %s.prtValue = 0 ; \n %s.cflowfuncs = 0 ; \n %s.pops = 0 ; \n ",
                        "__utac__excep_var",
   "__utac__jmpbuf",
                        "__utac__jmp_ret",
                        "__utac__excep_var", "__utac__jmpbuf",
   "__utac__excep_var",
                        "__utac__excep_var",
   "__utac__excep_var");


  adptr = c->before_advices;
         while(adptr) {
   if(adptr->data->type == ADBEFORECFLOW) {
    bufptr += sprintf(bufptr, "{ extern %s ; \n", "void __utac__exception__cf_handler_set(void * exception, int (*cflow_func)(int, int), int val) ");
    bufptr += sprintf(bufptr, "%s ( (void *) & %s, & %s , %s(%d, 0)); } \n",
                                                "__utac__exception__cf_handler_set",
                                                "__utac__excep_var",
                                                adptr->data->name,
                                                adptr->data->name,
                                                3);
   }
                 adptr = adptr->next;
  }

  bufptr += sprintf(bufptr, "%s = setjmp(%s); \n if(%s !=0) { \n if(%s.cflowfuncs != 0) { \n extern %s ; \n %s (& %s ); \n } \n",
                        "__utac__jmp_ret", "__utac__jmpbuf",
                        "__utac__jmp_ret",
                        "__utac__excep_var",
                        "void __utac__exception__cf_handler_reset(void * exception)",
                        "__utac__exception__cf_handler_reset",
                        "__utac__excep_var");

  if(needReturnValue(c)) {

   bufptr += sprintf(bufptr, "%s = (%s)%s.prtValue ; \n return %s ; \n",
      "retValue_acc" ,
      c->rtType ,
      "__utac__excep_var",
      "retValue_acc");
  }else {
   bufptr += sprintf(bufptr, "%s; \n", "return ");
  }

  bufptr += sprintf(bufptr, "%s \n", "}");

  logGenDecls(buf, getCurrDefnBgnLn());
 }
}

void logAroundDeclaration() {
 char buf[1000];
 char * targetFileName;
 long line;
 struct advice * ad;

 ad = getCurrAdvice();

 if(ad->malInfo & 0x0000000000004000) {
  line = getCurrDefnLineNum();

  logGenDecls("", line);



  sprintf(buf, "%s%s%s", ad->p == 
# 2712 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                 ((void *)0) 
# 2712 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                      ? "UTAC__NOPARAM":"UTAC__HSPARAM", "UTAC__HASAPROCEED__", ad->name);
  logGenDecls(buf, line);
 }

}

void logWrapperFunction(struct AdviceQueue * aQ, struct Context * c, char * preBuf ) {
 int index = -1;
 int i = -1;
 struct Param * pa = c->p;
 char buf[6000];
 char *bufPtr = &(buf[0]);
 char funcDeclBuf[2000];
 char wrapperFuncName[300];
 char execoriFuncName[300];
 char * myDecl ;
 struct advice * ad = aQ->data;
 char prtType[1000];


 
# 2732 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 2732 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
aQ
# 2732 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 2732 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
aQ
# 2732 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 2732 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"aQ"
# 2732 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2732, __extension__ __PRETTY_FUNCTION__); }))
# 2732 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
          ;
 
# 2733 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 2733 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
ad->type == AROUND
# 2733 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 2733 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
ad->type == AROUND
# 2733 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 2733 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"ad->type == AROUND"
# 2733 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2733, __extension__ __PRETTY_FUNCTION__); }))
# 2733 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                          ;


 switch(c->type) {
  case CALL:
  case EXECUTION :
   bufPtr += sprintf(bufPtr, "%s ; \n", genFuncDecl(c->funcName, c->rtType, c->p, funcDeclBuf, c->malInfo));
   break;
  case SETPC:
  case GETPC:
   break;
  default:
   
# 2745 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 2745 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  0
# 2745 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 2745 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  0
# 2745 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ; else __assert_fail (
# 2745 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "0"
# 2745 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2745, __extension__ __PRETTY_FUNCTION__); }))
# 2745 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
           ;
 }


 if(aQ->next && ( (ad->malInfo & 0x0000000000000400) || aQ->emitCond) ) {
  myDecl = genTransWrapperFunction(aQ->next, c);

  if(preBuf) {
   char * newBuf = (char *)malloc(strlen(preBuf) + strlen(myDecl) + 1);
   sprintf(newBuf, "%s%s", myDecl, preBuf);
   if(preBuf) free(preBuf);
   if(myDecl) free(myDecl);
   myDecl = newBuf;
  }

  logWrapperFunction(aQ->next, c, myDecl);
  return;
 }


 pa = c->p;


 get_wrapper_func_name(c->funcName, c->type, wrapperFuncName);

 if(c->type == EXECUTION) {
  get_exec_ori_name(c->funcName, execoriFuncName);
  genFuncDecl(execoriFuncName, c->rtType, c->p, funcDeclBuf, 0);
  bufPtr += sprintf(bufPtr, "%s ; \n", funcDeclBuf);
 }


 bufPtr += sprintf(bufPtr, "%s%s%s \n", "void ** ", wrapperFuncName, " (struct JoinPoint * this);  \n");

        bufPtr += strlen(genSrcLineInfo(bufPtr));

        bufPtr += sprintf(bufPtr, "%s%s%s \n", "void ** ", wrapperFuncName, " (struct JoinPoint * this) { \n");
        while(pa != 
# 2782 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                   ((void *)0)
# 2782 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                       ){
                index ++;
                bufPtr += sprintf(bufPtr, "%s %s %s%d %s %s %s %s %d %s  \n", pa->type, "*", "a", index, " = (", pa->type, "*)", "(this->args[", index , "]); \n");
                pa = pa->next;
        }

        if(needReturnValue(c)) {
  getPlainType(c->rtType, prtType);
                bufPtr += sprintf(bufPtr, "%s %s %s %s %s \n", prtType, "**", " rp = ( ", prtType, "**)(this->retValue);");
                bufPtr += sprintf(bufPtr, "%s %s \n", prtType, " temp ; ");
                bufPtr += sprintf(bufPtr, "%s ", "temp = ");
        }

 switch(c->type) {
  case CALL:
  case EXECUTION:
   bufPtr += sprintf(bufPtr, "%s %s ", c->type == CALL ? c->funcName : execoriFuncName, "(");

   for(i = -1; i < index; ) {
                  i++;
                  bufPtr += sprintf(bufPtr, "%s%d ", "*a", i);
                  if(i < index) {
                          bufPtr += sprintf(bufPtr, "%s ", ",");
                  }
          }
   break;
  case SETPC:
   bufPtr += sprintf(bufPtr, "(**a0 = *a1");
   break;
  case GETPC:
   bufPtr += sprintf(bufPtr, "%s ", "(*a0");
   break;
  default:
   
# 2815 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ((void) sizeof ((
# 2815 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  0
# 2815 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ? 1 : 0), __extension__ ({ if (
# 2815 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  0
# 2815 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  ) ; else __assert_fail (
# 2815 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
  "0"
# 2815 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
  , "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2815, __extension__ __PRETTY_FUNCTION__); }))
# 2815 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
           ;
 }

        bufPtr += sprintf(bufPtr, "%s \n", ");");

        if(needReturnValue(c)) {
                bufPtr += sprintf(bufPtr, "%s \n", "** rp = temp ; ");
        }
        bufPtr += sprintf(bufPtr, "%s \n", "return this->retValue;");
        bufPtr += sprintf(bufPtr, "%s \n", "}");

 if(preBuf) {
  bufPtr += sprintf(bufPtr, "%s", preBuf);
  if(preBuf) free(preBuf);
 }


 logGenDecls(buf, 0 );
}



void enterScope() {
 struct Scope * newScope = (struct Scope *)malloc(sizeof(struct Scope));
 newScope->parent = currScope;
 newScope->syms = 
# 2840 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                 ((void *)0)
# 2840 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                     ;
 currScope = newScope;
}

void leaveScope() {
 struct Scope * oldScope = currScope;
 struct ScopeSym * ss ;
 
# 2847 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 2847 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
oldScope
# 2847 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 2847 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
oldScope
# 2847 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 2847 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"oldScope"
# 2847 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2847, __extension__ __PRETTY_FUNCTION__); }))
# 2847 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                ;

 currScope = currScope->parent;

 ss = oldScope->syms;

 while(ss) {
  ss->sym->malInfo = ss->oriInfo;
  ss = ss->next;
 }

 free_scope(oldScope);
}

void shadowGlobSym(char * sym) {
 struct FuncInfo * gSym = searchFunc(varTable, sym);

 if(gSym) {

  struct ScopeSym * ss = (struct ScopeSym *)malloc(sizeof(struct ScopeSym));
  ss->sym = gSym;
  ss->oriInfo = gSym->malInfo;
  gSym->malInfo |= 0x0000000000010000;
  ss->next = currScope->syms;
  currScope->syms = ss;
 }
}

void isInLocalScope(long * flag) {
 *flag = (currScope == 
# 2876 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                      ((void *)0) 
# 2876 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                           ? 0 : 1);
}


void isFuncPointer(char * inFuncName, char * name, long * flag) {

 *flag = (searchFP(fpTable, name, inFuncName) == 
# 2882 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
                                                ((void *)0) 
# 2882 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                                                     ? 0 : 1);

}
# 2897 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
char * emitConditionStmt(char * buf, struct advice * d) {
 char * cond = d->cflowCondition;
 char * newBuf=
# 2899 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
              ((void *)0)
# 2899 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                  ;
 char * bkBuf=
# 2900 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
             ((void *)0)
# 2900 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                 ;
 int i, j;
 
# 2902 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
((void) sizeof ((
# 2902 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
d->cflowCondition
# 2902 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ? 1 : 0), __extension__ ({ if (
# 2902 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
d->cflowCondition
# 2902 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
) ; else __assert_fail (
# 2902 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
"d->cflowCondition"
# 2902 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
, "/home/sd/ACC_v09/ACC/src/weaveutil.c", 2902, __extension__ __PRETTY_FUNCTION__); }))
# 2902 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                         ;

 if(strstr(cond, "@~") && strstr(cond, "@p3~") && strstr(cond, "@#")) {
  char * p0;
  char * p1;
  char * p2;
  char * replaceStr;



  bkBuf = (char*)malloc(strlen(cond) + 1);
  sprintf(bkBuf, "%s", cond);
  p0 = bkBuf;



  while(p1 = strstr(p0, "@p3~")) {
   p2 = strstr(p1, "@#");
   *p2 = '\0';
   buf += sprintf(buf, " %s \n", p1+4);
   *p2 = '@';
   p0 = p2;
  }



  if(d->malInfo & 0x0000000000002000) {
   replaceStr="&&";
  }else {
   replaceStr="@p3~";
  }

  j= strlen(replaceStr);
  p0=bkBuf;
  while(p1= strstr(p0, "@~")) {
   for(i = 0; i < j; i++) {
    p1[i] = replaceStr[i];
   }
   p0=p1+j;
  }


  newBuf = (char *)malloc(strlen(cond) + 1);
  p0=bkBuf;
  p1=newBuf;
  while(p2=strstr(p0, "@p3~")) {
   *p2='\0';
   p1+= sprintf(p1, "%s", p0);
   *p2='@';
   p0=strstr(p2, "@#");
   p0+=2;
  }
  p1+= sprintf(p1, "%s", p0);

  cond = newBuf;
 }

 buf += sprintf(buf, "if( %s ) { \n", cond);

 if(newBuf != 
# 2961 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
             ((void *)0)
# 2961 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                 ) free(newBuf);
 if(bkBuf != 
# 2962 "/home/sd/ACC_v09/ACC/src/weaveutil.c" 3 4
            ((void *)0)
# 2962 "/home/sd/ACC_v09/ACC/src/weaveutil.c"
                ) free(bkBuf);

 return buf;
}
