
struct JoinPoint { 
	void** (*fp) (struct JoinPoint *);
	void ** args;
	int argsCount;
	const char ** argsType;
	 void * (*arg)(int, struct JoinPoint *); 
	 const char * (*argType)(int , struct JoinPoint *); 
	void ** retValue;
	const char * retType;
	const char * funcName ;
	const char * targetName ;
	const char * fileName ;
	const char * kind ;
	void * excep_return ;
};

 struct __UTAC__EXCEPTION {
	void * jumpbuf ;
	unsigned long long int prtValue ;
	int pops;
	struct __UTAC__CFLOW_FUNC {
		int (*func)(int,int) ;
		int val ;
		struct __UTAC__CFLOW_FUNC * next; 
	} * cflowfuncs; 
}; 



typedef int boolean; 

typedef enum {FUNCDECL,FUNCBODY,STRUCTDECL,PARAMDECL,PARAMFPDECL,FUNCPDECL,TYPEDEFFPDECL,TYPEDEFDECL,PCMATCHING,ADFUNCDECL,GLOBVARDECL,UNKNOWNDECL}DeclType; 

struct Param {char *id; char *type; struct Param *next; 
}; 

struct FuncInfo {char *fname; char *rtType; struct Param *p; struct FuncInfo *next; int malInfo; 
}; 

struct TypedefInfo {char *source; char *target; struct TypedefInfo *next; 
}; 

struct checkFrame {int info;  DeclType type; int paramCount; struct FuncInfo *curFunc; struct TypedefInfo *curTypedef; struct checkFrame *parent; char *qualifier; int declaratorLevel; struct Param *paramFor2ndDeclarator;  boolean paramFor2ndDeclaratorIsSet; 
}; 

extern struct FuncInfo *funcTable; 

extern struct FuncInfo *fpTable; 

extern struct FuncInfo *varTable; 

extern struct TypedefInfo *typedefTable; 

void addFunc(struct FuncInfo **head, struct FuncInfo *data); 

struct FuncInfo *searchFunc(struct FuncInfo *head, char *key); 

struct FuncInfo *searchFP(struct FuncInfo *head, char *key, char *infunc); 

struct Param *addParam(struct Param **head, struct Param *data); 

struct Param *copy_parameters(struct Param *); 

char *copy_chars(char *); 

void setType(char *t); 

void setQualifier(char *); 

void setComplexType(long , char *); 

void setComplexTypeName(long , char ([]), char *); 

void setPointerType(); 

void setEllipsis(); 

void setStorageClass(char *); 

void addStarToType(char **); 

void removeStarToType(char **); 

char *addType(char *t1, char *t2); 

void setId(char *id); 

void appendId(char *id); 

char *add_chars_with_dot(char *str1, char *str2); 

void printFuncs(struct FuncInfo *table); 

void free_func(struct FuncInfo *); 

void free_typedefTable(struct TypedefInfo *); 

void free_declframe(struct checkFrame *f); 

void initDeclCollection(char *); 

void endDeclCollection(); 

void setFuncDecl(); 

void setFuncDecl_old(); 

void setInsideATypedefDecl(); 

char *make_param_name(int ); 

char *make_func_pointer_type(struct checkFrame *); 

void make_fp_name(struct checkFrame *frame); 

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

char *findRealType(char *name); 

void switchTypedefTargetSource(struct TypedefInfo *oneTypedef); 

void addQualifier(char **type, char **qualifier); 

void getPlainType(char *, char *); 

void setDeclIsFuncLike(); 

void isDiffName(char *, char *, long *); 

void setEndFuncDeclarator(); 

extern char *errmsg_fmt[]; 

extern void __assert_fail(__const char *__assertion, __const char *__file, unsigned int __line, __const char *__function) __attribute__  (( __nothrow__ ))  __attribute__  (( __noreturn__ )) ; 

extern void __assert_perror_fail(int __errnum, __const char *__file, unsigned int __line, __const char *__function) __attribute__  (( __nothrow__ ))  __attribute__  (( __noreturn__ )) ; 

extern void __assert(const char *__assertion, const char *__file, int __line) __attribute__  (( __nothrow__ ))  __attribute__  (( __noreturn__ )) ; 

typedef enum {CALL,EXECUTION,CALLP,ARGS,RESULT,INFILE,INFUNC,INTYPE,COMPOUND,COMP_AND,COMP_OR,COMP_NOT,NAMEDPC,PCNAME,CFLOW,TRY,GETPC,SETPC,UNKNOWN_PC}PointcutType; 

typedef enum {BEFORE,AFTER,AROUND,INTRODUCE,CATCH,ADFORNAMEDPC,ADBEFORECFLOW,ADAFTERCFLOW,ADARGSCFLOW,ADBEFORETRY,ADAFTERTRY,UNKNOWN_AD}AdviceType; 

typedef enum {PROCEED,PRETURN,THROW,THIS,ARG,ARGTYPE,UNKNOWN_ADKEYWORD}AdviceKeyword; 

struct argIndexInContext {struct Context *c; int argIndex; struct argIndexInContext *nextContext; 
}; 

struct jpInfo {char *name; long pos;  PointcutType type; struct jpInfo *next; 
}; 

struct adviceParam {struct Param p; struct argIndexInContext *indexInContext; char *callCflowContextFunc;  boolean matchAddress;  boolean usedInPC; struct adviceParam *next; 
}; 

struct advice {char *name; char *rtType;  AdviceType type; struct adviceParam *p; int malInfo; char *acFileBaseName; char *cflowCondition; 





long insideFile;



struct jpInfo *jps;
}; 

struct AdviceQueue {struct advice *data; struct AdviceQueue *next;  boolean emitCond; 
}; 

struct pointcutParam {struct Param p; struct adviceParam *ap; struct pointcutParam *next; 
}; 

struct matchInfo {char *funcName; char *rtType; struct pointcutParam *p; 
}; 

union MatchingInfo {struct matchInfo *mInfo; struct Record *childPCs[2]; struct Record *childPC; char *inside; 
}; 

struct Record {int id; char *name;  PointcutType type; struct advice *aList; struct Record *next; union MatchingInfo info; struct Record *parentPC; char *cflowFuncName; 
}; 

struct ArgsInCflow {struct Record *pc; char *funcName; struct ArgsInCflow *next; 
}; 

struct CFlowRecord {struct Record *pc; struct CFlowRecord *next; struct ArgsInCflow *argsPCs;  boolean notPrinted; 
}; 

struct TryRecord {struct Record *pc; struct TryRecord *next; struct advice *ad; 
}; 

struct Context {long insideFile; char *insideFunc; char *funcName;  PointcutType type; char *rtType; struct Param *p; struct AdviceQueue *before_advices; struct AdviceQueue *after_advices; struct AdviceQueue *around_advices; int malInfo; long numOfCH; 
}; 

struct CallContext {struct Context context; char *newFuncName; struct CallContext *next; 
}; 

extern struct Record *pCutInfo; 

extern struct Record *PointCutTable; 

extern struct CFlowRecord *cflowTable; 

extern struct TypedefInfo *typedefTable; 

extern struct TryRecord *tryTable; 

extern char *currTypeQualifier; 

void addPointCutType2Current(char *type); 

void addNewAdvice(struct advice **head); 

void addPointCutToCFlowTable(struct Record *pc); 

struct ArgsInCflow *addArgsPCsInCFlow(struct Record *pc, char *baseFuncName, int *index); 

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

void assertKeyword(char *s, char *keyword); 

void assert2Keywords(char *s, char *keyword1, char *keyword2); 

void checkKeywordInAdvice(char *s, long *flag); 

struct Record *createNewRecord(int id); 

char *createAdName(char *fname, int counter); 

void createNewArgIndex(struct adviceParam *adParam, struct Context *, int initValue); 

void createPointcutMatchingInfo(struct checkFrame *cf); 

struct adviceParam *create_advice_parameter(struct Param *p); 

struct argIndexInContext *copy_argindex_incontext(struct argIndexInContext *); 

char *create_dot_types(struct Param *p); 

void setACName(char *id); 

void setACType(char *t); 

void setACComplexType(long type, char *t); 

void setACTypePointer(); 

void setAdviceType(char *); 

void resetCurrParamAndType(); 

void resetAdviceCounter(); 

void setInsideFile(char *); 

void setPointcutName(char *s); 

char *getPointCutTypeText( PointcutType p); 

char *getAdviceText( AdviceType a); 

void getAdviceName(char **); 

struct advice *getCurrAdvice(); 

struct Param *findParam(struct Param *head, char *name); 

struct Record *findPointcut(struct Record *head, char *name); 

struct CFlowRecord *findPointcutInTable(struct CFlowRecord *head, struct Record *target); 

 boolean hasIntypePCOnly(struct Record *pc); 

 boolean hasTryPCOnly(struct Record *pc); 

 AdviceType text2AdviceType(char *type); 

 PointcutType text2PointcutType(char *type); 

void pushAChildForCompPC(long index); 

void popChild(); 

void outputAdviceFuncBeginTag(); 

void outputAdviceFuncEndTag(); 

void endACParamDeclCollection(); 

void free_pointcut(struct Record *); 

void free_matchinginfo_struct(struct matchInfo *info); 

void free_pointcut_param(struct pointcutParam *pp); 

void free_matchinginfo(struct Record *rec); 

void free_advices(struct advice *a); 

void free_advice_param(struct adviceParam *p); 

void free_argIndexInContext(struct argIndexInContext *arg); 

void free_cflowTable(struct CFlowRecord *); 

void free_tryTable(struct TryRecord *); 

char *checkContextExposureInCflow(struct Record *pc, char *fName, int *index); 

typedef long unsigned int size_t; 

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

typedef long int __quad_t; 

typedef unsigned long int __u_quad_t; 

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

typedef struct {int __val[2]; 
}__fsid_t; 

typedef long int __clock_t; 

typedef unsigned long int __rlim_t; 

typedef unsigned long int __rlim64_t; 

typedef unsigned int __id_t; 

typedef long int __time_t; 

typedef unsigned int __useconds_t; 

typedef long int __suseconds_t; 

typedef int __daddr_t; 

typedef long int __swblk_t; 

typedef int __key_t; 

typedef int __clockid_t; 

typedef void *__timer_t; 

typedef long int __blksize_t; 

typedef long int __blkcnt_t; 

typedef long int __blkcnt64_t; 

typedef unsigned long int __fsblkcnt_t; 

typedef unsigned long int __fsblkcnt64_t; 

typedef unsigned long int __fsfilcnt_t; 

typedef unsigned long int __fsfilcnt64_t; 

typedef long int __ssize_t; 

typedef  __off64_t __loff_t; 

typedef  __quad_t *__qaddr_t; 

typedef char *__caddr_t; 

typedef long int __intptr_t; 

typedef unsigned int __socklen_t; 

struct _IO_FILE ; 

typedef struct _IO_FILE FILE; 

typedef struct _IO_FILE __FILE; 

typedef struct {int __count; union {unsigned int __wch; char __wchb[4]; 
}__value; 
}__mbstate_t; 

typedef struct { __off_t __pos;  __mbstate_t __state; 
}_G_fpos_t; 

typedef struct { __off64_t __pos;  __mbstate_t __state; 
}_G_fpos64_t; 

typedef int _G_int16_t __attribute__  (( __mode__ ( __HI__ )  )) ; 

typedef int _G_int32_t __attribute__  (( __mode__ ( __SI__ )  )) ; 

typedef unsigned int _G_uint16_t __attribute__  (( __mode__ ( __HI__ )  )) ; 

typedef unsigned int _G_uint32_t __attribute__  (( __mode__ ( __SI__ )  )) ; 

typedef __builtin_va_list __gnuc_va_list; 

struct _IO_jump_t ; 

struct _IO_FILE ; 

typedef void _IO_lock_t; 

struct _IO_marker {struct _IO_marker *_next; struct _IO_FILE *_sbuf; int _pos; 
}; 

enum __codecvt_result {__codecvt_ok,__codecvt_partial,__codecvt_error,__codecvt_noconv}; 

struct _IO_FILE {int _flags; char *_IO_read_ptr; char *_IO_read_end; char *_IO_read_base; char *_IO_write_base; char *_IO_write_ptr; char *_IO_write_end; char *_IO_buf_base; char *_IO_buf_end; char *_IO_save_base; char *_IO_backup_base; char *_IO_save_end; struct _IO_marker *_markers; struct _IO_FILE *_chain; int _fileno; int _flags2;  __off_t _old_offset; unsigned short _cur_column; signed char _vtable_offset; char _shortbuf[1];  _IO_lock_t *_lock;  __off64_t _offset; void *__pad1; void *__pad2; void *__pad3; void *__pad4;  size_t __pad5; int _mode; char _unused2[15 * sizeof (int ) - 4 * sizeof (void *) - sizeof ( size_t )]; 
}; 

typedef struct _IO_FILE _IO_FILE; 

struct _IO_FILE_plus ; 

extern struct _IO_FILE_plus _IO_2_1_stdin_; 

extern struct _IO_FILE_plus _IO_2_1_stdout_; 

extern struct _IO_FILE_plus _IO_2_1_stderr_; 

typedef  __ssize_t __io_read_fn(void *__cookie, char *__buf,  size_t __nbytes); 

typedef  __ssize_t __io_write_fn(void *__cookie, __const char *__buf,  size_t __n); 

typedef int __io_seek_fn(void *__cookie,  __off64_t *__pos, int __w); 

typedef int __io_close_fn(void *__cookie); 

extern int __underflow( _IO_FILE *); 

extern int __uflow( _IO_FILE *); 

extern int __overflow( _IO_FILE *, int ); 

extern int _IO_getc( _IO_FILE *__fp); 

extern int _IO_putc(int __c,  _IO_FILE *__fp); 

extern int _IO_feof( _IO_FILE *__fp) __attribute__  (( __nothrow__ )) ; 

extern int _IO_ferror( _IO_FILE *__fp) __attribute__  (( __nothrow__ )) ; 

extern int _IO_peekc_locked( _IO_FILE *__fp); 

extern void _IO_flockfile( _IO_FILE *) __attribute__  (( __nothrow__ )) ; 

extern void _IO_funlockfile( _IO_FILE *) __attribute__  (( __nothrow__ )) ; 

extern int _IO_ftrylockfile( _IO_FILE *) __attribute__  (( __nothrow__ )) ; 

extern int _IO_vfscanf( _IO_FILE *__restrict , const char *__restrict ,  __gnuc_va_list , int *__restrict ); 

extern int _IO_vfprintf( _IO_FILE *__restrict , const char *__restrict ,  __gnuc_va_list ); 

extern  __ssize_t _IO_padn( _IO_FILE *, int ,  __ssize_t ); 

extern  size_t _IO_sgetn( _IO_FILE *, void *,  size_t ); 

extern  __off64_t _IO_seekoff( _IO_FILE *,  __off64_t , int , int ); 

extern  __off64_t _IO_seekpos( _IO_FILE *,  __off64_t , int ); 

extern void _IO_free_backup_area( _IO_FILE *) __attribute__  (( __nothrow__ )) ; 

typedef  _G_fpos_t fpos_t; 

extern struct _IO_FILE *stdin; 

extern struct _IO_FILE *stdout; 

extern struct _IO_FILE *stderr; 

extern int remove(__const char *__filename) __attribute__  (( __nothrow__ )) ; 

extern int rename(__const char *__old, __const char *__new) __attribute__  (( __nothrow__ )) ; 

extern int renameat(int __oldfd, __const char *__old, int __newfd, __const char *__new) __attribute__  (( __nothrow__ )) ; 

extern  FILE *tmpfile(void ); 

extern char *tmpnam(char *__s) __attribute__  (( __nothrow__ )) ; 

extern char *tmpnam_r(char *__s) __attribute__  (( __nothrow__ )) ; 

extern char *tempnam(__const char *__dir, __const char *__pfx) __attribute__  (( __nothrow__ ))  __attribute__  (( __malloc__ )) ; 

extern int fclose( FILE *__stream); 

extern int fflush( FILE *__stream); 

extern int fflush_unlocked( FILE *__stream); 

extern  FILE *fopen(__const char *__restrict __filename, __const char *__restrict __modes); 

extern  FILE *freopen(__const char *__restrict __filename, __const char *__restrict __modes,  FILE *__restrict __stream); 

extern  FILE *fdopen(int __fd, __const char *__modes) __attribute__  (( __nothrow__ )) ; 

extern  FILE *fmemopen(void *__s,  size_t __len, __const char *__modes) __attribute__  (( __nothrow__ )) ; 

extern  FILE *open_memstream(char **__bufloc,  size_t *__sizeloc) __attribute__  (( __nothrow__ )) ; 

extern void setbuf( FILE *__restrict __stream, char *__restrict __buf) __attribute__  (( __nothrow__ )) ; 

extern int setvbuf( FILE *__restrict __stream, char *__restrict __buf, int __modes,  size_t __n) __attribute__  (( __nothrow__ )) ; 

extern void setbuffer( FILE *__restrict __stream, char *__restrict __buf,  size_t __size) __attribute__  (( __nothrow__ )) ; 

extern void setlinebuf( FILE *__stream) __attribute__  (( __nothrow__ )) ; 

extern int fprintf( FILE *__restrict __stream, __const char *__restrict __format, ...); 

extern int printf(__const char *__restrict __format, ...); 

extern int sprintf(char *__restrict __s, __const char *__restrict __format, ...) __attribute__  (( __nothrow__ )) ; 

extern int vfprintf( FILE *__restrict __s, __const char *__restrict __format,  __gnuc_va_list __arg); 

extern int vprintf(__const char *__restrict __format,  __gnuc_va_list __arg); 

extern int vsprintf(char *__restrict __s, __const char *__restrict __format,  __gnuc_va_list __arg) __attribute__  (( __nothrow__ )) ; 

extern int snprintf(char *__restrict __s,  size_t __maxlen, __const char *__restrict __format, ...) __attribute__  (( __nothrow__ ))  __attribute__  (( __format__ ( __printf__, 3, 4 )  )) ; 

extern int vsnprintf(char *__restrict __s,  size_t __maxlen, __const char *__restrict __format,  __gnuc_va_list __arg) __attribute__  (( __nothrow__ ))  __attribute__  (( __format__ ( __printf__, 3, 0 )  )) ; 

extern int vdprintf(int __fd, __const char *__restrict __fmt,  __gnuc_va_list __arg) __attribute__  (( __format__ ( __printf__, 2, 0 )  )) ; 

extern int dprintf(int __fd, __const char *__restrict __fmt, ...) __attribute__  (( __format__ ( __printf__, 2, 3 )  )) ; 

extern int fscanf( FILE *__restrict __stream, __const char *__restrict __format, ...); 

extern int scanf(__const char *__restrict __format, ...); 

extern int sscanf(__const char *__restrict __s, __const char *__restrict __format, ...) __attribute__  (( __nothrow__ )) ; 

extern int fscanf( FILE *__restrict __stream, __const char *__restrict __format, ...) __asm__ ("""__isoc99_fscanf"); 

extern int scanf(__const char *__restrict __format, ...) __asm__ ("""__isoc99_scanf"); 

extern int sscanf(__const char *__restrict __s, __const char *__restrict __format, ...) __asm__ ("""__isoc99_sscanf") __attribute__  (( __nothrow__ )) ; 

extern int vfscanf( FILE *__restrict __s, __const char *__restrict __format,  __gnuc_va_list __arg) __attribute__  (( __format__ ( __scanf__, 2, 0 )  )) ; 

extern int vscanf(__const char *__restrict __format,  __gnuc_va_list __arg) __attribute__  (( __format__ ( __scanf__, 1, 0 )  )) ; 

extern int vsscanf(__const char *__restrict __s, __const char *__restrict __format,  __gnuc_va_list __arg) __attribute__  (( __nothrow__ ))  __attribute__  (( __format__ ( __scanf__, 2, 0 )  )) ; 

extern int vfscanf( FILE *__restrict __s, __const char *__restrict __format,  __gnuc_va_list __arg) __asm__ ("""__isoc99_vfscanf") __attribute__  (( __format__ ( __scanf__, 2, 0 )  )) ; 

extern int vscanf(__const char *__restrict __format,  __gnuc_va_list __arg) __asm__ ("""__isoc99_vscanf") __attribute__  (( __format__ ( __scanf__, 1, 0 )  )) ; 

extern int vsscanf(__const char *__restrict __s, __const char *__restrict __format,  __gnuc_va_list __arg) __asm__ ("""__isoc99_vsscanf") __attribute__  (( __nothrow__ ))  __attribute__  (( __format__ ( __scanf__, 2, 0 )  )) ; 

extern int fgetc( FILE *__stream); 

extern int getc( FILE *__stream); 

extern int getchar(void ); 

extern int getc_unlocked( FILE *__stream); 

extern int getchar_unlocked(void ); 

extern int fgetc_unlocked( FILE *__stream); 

extern int fputc(int __c,  FILE *__stream); 

extern int putc(int __c,  FILE *__stream); 

extern int putchar(int __c); 

extern int fputc_unlocked(int __c,  FILE *__stream); 

extern int putc_unlocked(int __c,  FILE *__stream); 

extern int putchar_unlocked(int __c); 

extern int getw( FILE *__stream); 

extern int putw(int __w,  FILE *__stream); 

extern char *fgets(char *__restrict __s, int __n,  FILE *__restrict __stream); 

extern char *gets(char *__s); 

extern  __ssize_t __getdelim(char **__restrict __lineptr,  size_t *__restrict __n, int __delimiter,  FILE *__restrict __stream); 

extern  __ssize_t getdelim(char **__restrict __lineptr,  size_t *__restrict __n, int __delimiter,  FILE *__restrict __stream); 

extern  __ssize_t getline(char **__restrict __lineptr,  size_t *__restrict __n,  FILE *__restrict __stream); 

extern int fputs(__const char *__restrict __s,  FILE *__restrict __stream); 

extern int puts(__const char *__s); 

extern int ungetc(int __c,  FILE *__stream); 

extern  size_t fread(void *__restrict __ptr,  size_t __size,  size_t __n,  FILE *__restrict __stream); 

extern  size_t fwrite(__const void *__restrict __ptr,  size_t __size,  size_t __n,  FILE *__restrict __s); 

extern  size_t fread_unlocked(void *__restrict __ptr,  size_t __size,  size_t __n,  FILE *__restrict __stream); 

extern  size_t fwrite_unlocked(__const void *__restrict __ptr,  size_t __size,  size_t __n,  FILE *__restrict __stream); 

extern int fseek( FILE *__stream, long int __off, int __whence); 

extern long int ftell( FILE *__stream); 

extern void rewind( FILE *__stream); 

extern int fseeko( FILE *__stream,  __off_t __off, int __whence); 

extern  __off_t ftello( FILE *__stream); 

extern int fgetpos( FILE *__restrict __stream,  fpos_t *__restrict __pos); 

extern int fsetpos( FILE *__stream, __const  fpos_t *__pos); 

extern void clearerr( FILE *__stream) __attribute__  (( __nothrow__ )) ; 

extern int feof( FILE *__stream) __attribute__  (( __nothrow__ )) ; 

extern int ferror( FILE *__stream) __attribute__  (( __nothrow__ )) ; 

extern void clearerr_unlocked( FILE *__stream) __attribute__  (( __nothrow__ )) ; 

extern int feof_unlocked( FILE *__stream) __attribute__  (( __nothrow__ )) ; 

extern int ferror_unlocked( FILE *__stream) __attribute__  (( __nothrow__ )) ; 

extern void perror(__const char *__s); 

extern int sys_nerr; 

extern __const char *__const sys_errlist[]; 

extern int fileno( FILE *__stream) __attribute__  (( __nothrow__ )) ; 

extern int fileno_unlocked( FILE *__stream) __attribute__  (( __nothrow__ )) ; 

extern  FILE *popen(__const char *__command, __const char *__modes); 

extern int pclose( FILE *__stream); 

extern char *ctermid(char *__s) __attribute__  (( __nothrow__ )) ; 

extern void flockfile( FILE *__stream) __attribute__  (( __nothrow__ )) ; 

extern int ftrylockfile( FILE *__stream) __attribute__  (( __nothrow__ )) ; 

extern void funlockfile( FILE *__stream) __attribute__  (( __nothrow__ )) ; 

typedef int wchar_t; 

typedef struct {int quot; int rem; 
}div_t; 

typedef struct {long int quot; long int rem; 
}ldiv_t; 

 __extension__ typedef struct {long long int quot; long long int rem; 
}lldiv_t; 

extern  size_t __ctype_get_mb_cur_max(void ) __attribute__  (( __nothrow__ )) ; 

extern double atof(__const char *__nptr) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern int atoi(__const char *__nptr) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern long int atol(__const char *__nptr) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

 __extension__ extern long long int atoll(__const char *__nptr) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern double strtod(__const char *__restrict __nptr, char **__restrict __endptr) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern float strtof(__const char *__restrict __nptr, char **__restrict __endptr) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern long double strtold(__const char *__restrict __nptr, char **__restrict __endptr) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern long int strtol(__const char *__restrict __nptr, char **__restrict __endptr, int __base) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern unsigned long int strtoul(__const char *__restrict __nptr, char **__restrict __endptr, int __base) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

 __extension__ extern long long int strtoq(__const char *__restrict __nptr, char **__restrict __endptr, int __base) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

 __extension__ extern unsigned long long int strtouq(__const char *__restrict __nptr, char **__restrict __endptr, int __base) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

 __extension__ extern long long int strtoll(__const char *__restrict __nptr, char **__restrict __endptr, int __base) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

 __extension__ extern unsigned long long int strtoull(__const char *__restrict __nptr, char **__restrict __endptr, int __base) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern char *l64a(long int __n) __attribute__  (( __nothrow__ )) ; 

extern long int a64l(__const char *__s) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

typedef  __u_char u_char; 

typedef  __u_short u_short; 

typedef  __u_int u_int; 

typedef  __u_long u_long; 

typedef  __quad_t quad_t; 

typedef  __u_quad_t u_quad_t; 

typedef  __fsid_t fsid_t; 

typedef  __loff_t loff_t; 

typedef  __ino_t ino_t; 

typedef  __dev_t dev_t; 

typedef  __gid_t gid_t; 

typedef  __mode_t mode_t; 

typedef  __nlink_t nlink_t; 

typedef  __uid_t uid_t; 

typedef  __off_t off_t; 

typedef  __pid_t pid_t; 

typedef  __id_t id_t; 

typedef  __ssize_t ssize_t; 

typedef  __daddr_t daddr_t; 

typedef  __caddr_t caddr_t; 

typedef  __key_t key_t; 

typedef  __time_t time_t; 

typedef  __clockid_t clockid_t; 

typedef  __timer_t timer_t; 

typedef unsigned long int ulong; 

typedef unsigned short int ushort; 

typedef unsigned int uint; 

typedef int int8_t __attribute__  (( __mode__ ( __QI__ )  )) ; 

typedef int int16_t __attribute__  (( __mode__ ( __HI__ )  )) ; 

typedef int int32_t __attribute__  (( __mode__ ( __SI__ )  )) ; 

typedef int int64_t __attribute__  (( __mode__ ( __DI__ )  )) ; 

typedef unsigned int u_int8_t __attribute__  (( __mode__ ( __QI__ )  )) ; 

typedef unsigned int u_int16_t __attribute__  (( __mode__ ( __HI__ )  )) ; 

typedef unsigned int u_int32_t __attribute__  (( __mode__ ( __SI__ )  )) ; 

typedef unsigned int u_int64_t __attribute__  (( __mode__ ( __DI__ )  )) ; 

typedef int register_t __attribute__  (( __mode__ ( __word__ )  )) ; 

typedef int __sig_atomic_t; 

typedef struct {unsigned long int __val[(1024 / (8 * sizeof (unsigned long int )))]; 
}__sigset_t; 

typedef  __sigset_t sigset_t; 

struct timespec { __time_t tv_sec; long int tv_nsec; 
}; 

struct timeval { __time_t tv_sec;  __suseconds_t tv_usec; 
}; 

typedef  __suseconds_t suseconds_t; 

typedef long int __fd_mask; 

typedef struct { __fd_mask __fds_bits[1024 / (8 * sizeof ( __fd_mask ))]; 
}fd_set; 

typedef  __fd_mask fd_mask; 

extern int select(int __nfds,  fd_set *__restrict __readfds,  fd_set *__restrict __writefds,  fd_set *__restrict __exceptfds, struct timeval *__restrict __timeout); 

extern int pselect(int __nfds,  fd_set *__restrict __readfds,  fd_set *__restrict __writefds,  fd_set *__restrict __exceptfds, const struct timespec *__restrict __timeout, const  __sigset_t *__restrict __sigmask); 

 __extension__ extern unsigned int gnu_dev_major(unsigned long long int __dev) __attribute__  (( __nothrow__ )) ; 

 __extension__ extern unsigned int gnu_dev_minor(unsigned long long int __dev) __attribute__  (( __nothrow__ )) ; 

 __extension__ extern unsigned long long int gnu_dev_makedev(unsigned int __major, unsigned int __minor) __attribute__  (( __nothrow__ )) ; 

typedef  __blkcnt_t blkcnt_t; 

typedef  __fsblkcnt_t fsblkcnt_t; 

typedef  __fsfilcnt_t fsfilcnt_t; 

typedef unsigned long int pthread_t; 

typedef union {char __size[56]; long int __align; 
}pthread_attr_t; 

typedef struct __pthread_internal_list {struct __pthread_internal_list *__prev; struct __pthread_internal_list *__next; 
}__pthread_list_t; 

typedef union {struct __pthread_mutex_s {int __lock; unsigned int __count; int __owner; unsigned int __nusers; int __kind; int __spins;  __pthread_list_t __list; 
}__data; char __size[40]; long int __align; 
}pthread_mutex_t; 

typedef union {char __size[4]; int __align; 
}pthread_mutexattr_t; 

typedef union {struct {int __lock; unsigned int __futex;  __extension__ unsigned long long int __total_seq;  __extension__ unsigned long long int __wakeup_seq;  __extension__ unsigned long long int __woken_seq; void *__mutex; unsigned int __nwaiters; unsigned int __broadcast_seq; 
}__data; char __size[48];  __extension__ long long int __align; 
}pthread_cond_t; 

typedef union {char __size[4]; int __align; 
}pthread_condattr_t; 

typedef unsigned int pthread_key_t; 

typedef int pthread_once_t; 

typedef union {struct {int __lock; unsigned int __nr_readers; unsigned int __readers_wakeup; unsigned int __writer_wakeup; unsigned int __nr_readers_queued; unsigned int __nr_writers_queued; int __writer; int __shared; unsigned long int __pad1; unsigned long int __pad2; unsigned int __flags; 
}__data; char __size[56]; long int __align; 
}pthread_rwlock_t; 

typedef union {char __size[8]; long int __align; 
}pthread_rwlockattr_t; 

typedef volatile int pthread_spinlock_t; 

typedef union {char __size[32]; long int __align; 
}pthread_barrier_t; 

typedef union {char __size[4]; int __align; 
}pthread_barrierattr_t; 

extern long int random(void ) __attribute__  (( __nothrow__ )) ; 

extern void srandom(unsigned int __seed) __attribute__  (( __nothrow__ )) ; 

extern char *initstate(unsigned int __seed, char *__statebuf,  size_t __statelen) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 2 )  )) ; 

extern char *setstate(char *__statebuf) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

struct random_data { int32_t *fptr;  int32_t *rptr;  int32_t *state; int rand_type; int rand_deg; int rand_sep;  int32_t *end_ptr; 
}; 

extern int random_r(struct random_data *__restrict __buf,  int32_t *__restrict __result) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern int srandom_r(unsigned int __seed, struct random_data *__buf) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 2 )  )) ; 

extern int initstate_r(unsigned int __seed, char *__restrict __statebuf,  size_t __statelen, struct random_data *__restrict __buf) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 2, 4 )  )) ; 

extern int setstate_r(char *__restrict __statebuf, struct random_data *__restrict __buf) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern int rand(void ) __attribute__  (( __nothrow__ )) ; 

extern void srand(unsigned int __seed) __attribute__  (( __nothrow__ )) ; 

extern int rand_r(unsigned int *__seed) __attribute__  (( __nothrow__ )) ; 

extern double drand48(void ) __attribute__  (( __nothrow__ )) ; 

extern double erand48(unsigned short int __xsubi[3]) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern long int lrand48(void ) __attribute__  (( __nothrow__ )) ; 

extern long int nrand48(unsigned short int __xsubi[3]) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern long int mrand48(void ) __attribute__  (( __nothrow__ )) ; 

extern long int jrand48(unsigned short int __xsubi[3]) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern void srand48(long int __seedval) __attribute__  (( __nothrow__ )) ; 

extern unsigned short int *seed48(unsigned short int __seed16v[3]) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern void lcong48(unsigned short int __param[7]) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

struct drand48_data {unsigned short int __x[3]; unsigned short int __old_x[3]; unsigned short int __c; unsigned short int __init; unsigned long long int __a; 
}; 

extern int drand48_r(struct drand48_data *__restrict __buffer, double *__restrict __result) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern int erand48_r(unsigned short int __xsubi[3], struct drand48_data *__restrict __buffer, double *__restrict __result) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern int lrand48_r(struct drand48_data *__restrict __buffer, long int *__restrict __result) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern int nrand48_r(unsigned short int __xsubi[3], struct drand48_data *__restrict __buffer, long int *__restrict __result) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern int mrand48_r(struct drand48_data *__restrict __buffer, long int *__restrict __result) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern int jrand48_r(unsigned short int __xsubi[3], struct drand48_data *__restrict __buffer, long int *__restrict __result) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern int srand48_r(long int __seedval, struct drand48_data *__buffer) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 2 )  )) ; 

extern int seed48_r(unsigned short int __seed16v[3], struct drand48_data *__buffer) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern int lcong48_r(unsigned short int __param[7], struct drand48_data *__buffer) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern void *malloc( size_t __size) __attribute__  (( __nothrow__ ))  __attribute__  (( __malloc__ )) ; 

extern void *calloc( size_t __nmemb,  size_t __size) __attribute__  (( __nothrow__ ))  __attribute__  (( __malloc__ )) ; 

extern void *realloc(void *__ptr,  size_t __size) __attribute__  (( __nothrow__ ))  __attribute__  (( __warn_unused_result__ )) ; 

extern void free(void *__ptr) __attribute__  (( __nothrow__ )) ; 

extern void cfree(void *__ptr) __attribute__  (( __nothrow__ )) ; 

extern void *alloca( size_t __size) __attribute__  (( __nothrow__ )) ; 

extern void *valloc( size_t __size) __attribute__  (( __nothrow__ ))  __attribute__  (( __malloc__ )) ; 

extern int posix_memalign(void **__memptr,  size_t __alignment,  size_t __size) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern void abort(void ) __attribute__  (( __nothrow__ ))  __attribute__  (( __noreturn__ )) ; 

extern int atexit(void (*__func)(void )) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern int on_exit(void (*__func)(int __status, void *__arg), void *__arg) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern void exit(int __status) __attribute__  (( __nothrow__ ))  __attribute__  (( __noreturn__ )) ; 

extern void _Exit(int __status) __attribute__  (( __nothrow__ ))  __attribute__  (( __noreturn__ )) ; 

extern char *getenv(__const char *__name) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern char *__secure_getenv(__const char *__name) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern int putenv(char *__string) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern int setenv(__const char *__name, __const char *__value, int __replace) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 2 )  )) ; 

extern int unsetenv(__const char *__name) __attribute__  (( __nothrow__ )) ; 

extern int clearenv(void ) __attribute__  (( __nothrow__ )) ; 

extern char *mktemp(char *__template) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern int mkstemp(char *__template) __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern char *mkdtemp(char *__template) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern int system(__const char *__command); 

extern char *realpath(__const char *__restrict __name, char *__restrict __resolved) __attribute__  (( __nothrow__ )) ; 

typedef int (*__compar_fn_t)(__const void *, __const void *); 

extern void *bsearch(__const void *__key, __const void *__base,  size_t __nmemb,  size_t __size,  __compar_fn_t __compar) __attribute__  (( __nonnull__ ( 1, 2, 5 )  )) ; 

extern void qsort(void *__base,  size_t __nmemb,  size_t __size,  __compar_fn_t __compar) __attribute__  (( __nonnull__ ( 1, 4 )  )) ; 

extern int abs(int __x) __attribute__  (( __nothrow__ ))  __attribute__  (( __const__ )) ; 

extern long int labs(long int __x) __attribute__  (( __nothrow__ ))  __attribute__  (( __const__ )) ; 

 __extension__ extern long long int llabs(long long int __x) __attribute__  (( __nothrow__ ))  __attribute__  (( __const__ )) ; 

extern  div_t div(int __numer, int __denom) __attribute__  (( __nothrow__ ))  __attribute__  (( __const__ )) ; 

extern  ldiv_t ldiv(long int __numer, long int __denom) __attribute__  (( __nothrow__ ))  __attribute__  (( __const__ )) ; 

 __extension__ extern  lldiv_t lldiv(long long int __numer, long long int __denom) __attribute__  (( __nothrow__ ))  __attribute__  (( __const__ )) ; 

extern char *ecvt(double __value, int __ndigit, int *__restrict __decpt, int *__restrict __sign) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 3, 4 )  )) ; 

extern char *fcvt(double __value, int __ndigit, int *__restrict __decpt, int *__restrict __sign) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 3, 4 )  )) ; 

extern char *gcvt(double __value, int __ndigit, char *__buf) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 3 )  )) ; 

extern char *qecvt(long double __value, int __ndigit, int *__restrict __decpt, int *__restrict __sign) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 3, 4 )  )) ; 

extern char *qfcvt(long double __value, int __ndigit, int *__restrict __decpt, int *__restrict __sign) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 3, 4 )  )) ; 

extern char *qgcvt(long double __value, int __ndigit, char *__buf) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 3 )  )) ; 

extern int ecvt_r(double __value, int __ndigit, int *__restrict __decpt, int *__restrict __sign, char *__restrict __buf,  size_t __len) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 3, 4, 5 )  )) ; 

extern int fcvt_r(double __value, int __ndigit, int *__restrict __decpt, int *__restrict __sign, char *__restrict __buf,  size_t __len) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 3, 4, 5 )  )) ; 

extern int qecvt_r(long double __value, int __ndigit, int *__restrict __decpt, int *__restrict __sign, char *__restrict __buf,  size_t __len) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 3, 4, 5 )  )) ; 

extern int qfcvt_r(long double __value, int __ndigit, int *__restrict __decpt, int *__restrict __sign, char *__restrict __buf,  size_t __len) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 3, 4, 5 )  )) ; 

extern int mblen(__const char *__s,  size_t __n) __attribute__  (( __nothrow__ )) ; 

extern int mbtowc( wchar_t *__restrict __pwc, __const char *__restrict __s,  size_t __n) __attribute__  (( __nothrow__ )) ; 

extern int wctomb(char *__s,  wchar_t __wchar) __attribute__  (( __nothrow__ )) ; 

extern  size_t mbstowcs( wchar_t *__restrict __pwcs, __const char *__restrict __s,  size_t __n) __attribute__  (( __nothrow__ )) ; 

extern  size_t wcstombs(char *__restrict __s, __const  wchar_t *__restrict __pwcs,  size_t __n) __attribute__  (( __nothrow__ )) ; 

extern int rpmatch(__const char *__response) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern int posix_openpt(int __oflag); 

extern int getloadavg(double __loadavg[], int __nelem) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern void *memcpy(void *__restrict __dest, __const void *__restrict __src,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern void *memmove(void *__dest, __const void *__src,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern void *memccpy(void *__restrict __dest, __const void *__restrict __src, int __c,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern void *memset(void *__s, int __c,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern int memcmp(__const void *__s1, __const void *__s2,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern void *memchr(__const void *__s, int __c,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern char *strcpy(char *__restrict __dest, __const char *__restrict __src) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern char *strncpy(char *__restrict __dest, __const char *__restrict __src,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern char *strcat(char *__restrict __dest, __const char *__restrict __src) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern char *strncat(char *__restrict __dest, __const char *__restrict __src,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern int strcmp(__const char *__s1, __const char *__s2) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern int strncmp(__const char *__s1, __const char *__s2,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern int strcoll(__const char *__s1, __const char *__s2) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern  size_t strxfrm(char *__restrict __dest, __const char *__restrict __src,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 2 )  )) ; 

typedef struct __locale_struct {struct locale_data *__locales[13]; const unsigned short int *__ctype_b; const int *__ctype_tolower; const int *__ctype_toupper; const char *__names[13]; 
}*__locale_t; 

typedef  __locale_t locale_t; 

extern int strcoll_l(__const char *__s1, __const char *__s2,  __locale_t __l) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1, 2, 3 )  )) ; 

extern  size_t strxfrm_l(char *__dest, __const char *__src,  size_t __n,  __locale_t __l) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 2, 4 )  )) ; 

extern char *strdup(__const char *__s) __attribute__  (( __nothrow__ ))  __attribute__  (( __malloc__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern char *strndup(__const char *__string,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __malloc__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern char *strchr(__const char *__s, int __c) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern char *strrchr(__const char *__s, int __c) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern  size_t strcspn(__const char *__s, __const char *__reject) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern  size_t strspn(__const char *__s, __const char *__accept) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern char *strpbrk(__const char *__s, __const char *__accept) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern char *strstr(__const char *__haystack, __const char *__needle) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern char *strtok(char *__restrict __s, __const char *__restrict __delim) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 2 )  )) ; 

extern char *__strtok_r(char *__restrict __s, __const char *__restrict __delim, char **__restrict __save_ptr) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 2, 3 )  )) ; 

extern char *strtok_r(char *__restrict __s, __const char *__restrict __delim, char **__restrict __save_ptr) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 2, 3 )  )) ; 

extern  size_t strlen(__const char *__s) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern  size_t strnlen(__const char *__string,  size_t __maxlen) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern char *strerror(int __errnum) __attribute__  (( __nothrow__ )) ; 

extern int strerror_r(int __errnum, char *__buf,  size_t __buflen) __asm__ ("""__xpg_strerror_r") __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 2 )  )) ; 

extern char *strerror_l(int __errnum,  __locale_t __l) __attribute__  (( __nothrow__ )) ; 

extern void __bzero(void *__s,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern void bcopy(__const void *__src, void *__dest,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern void bzero(void *__s,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern int bcmp(__const void *__s1, __const void *__s2,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern char *index(__const char *__s, int __c) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern char *rindex(__const char *__s, int __c) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1 )  )) ; 

extern int ffs(int __i) __attribute__  (( __nothrow__ ))  __attribute__  (( __const__ )) ; 

extern int strcasecmp(__const char *__s1, __const char *__s2) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern int strncasecmp(__const char *__s1, __const char *__s2,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __pure__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern char *strsep(char **__restrict __stringp, __const char *__restrict __delim) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern char *strsignal(int __sig) __attribute__  (( __nothrow__ )) ; 

extern char *__stpcpy(char *__restrict __dest, __const char *__restrict __src) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern char *stpcpy(char *__restrict __dest, __const char *__restrict __src) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern char *__stpncpy(char *__restrict __dest, __const char *__restrict __src,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

extern char *stpncpy(char *__restrict __dest, __const char *__restrict __src,  size_t __n) __attribute__  (( __nothrow__ ))  __attribute__  (( __nonnull__ ( 1, 2 )  )) ; 

char *ac_suffix = ".acc"; 

char *mc_suffix = ".mc"; 

void free_file_name(); 

void init( FILE *); 

char isThreadSafe(); 

void setThreadSafe(); 

char needLine(); 

void setNoLine(); 

void insertTypeMember(char *, struct Record *); 

char *get_file_suffix(char *option); 

void printHelpMenu(); 

extern void addMapFileName(char *); 

int process_onearg(char **, int , int ); 

long compileFlag = 1; 

char *target_file_name,*target_file_base_name,*src_file_name; 

char threadSafe = 0; 

char srcLineNeeded = 1; 

char user_ac_suffix = 0; 

char user_mc_suffix = 0; 
static inline void  exit__main__2 (int __status  )  ; 

static inline void  free_pointcut__main__1 (struct Record * __utac__para0  )  ; 

static inline void  insertTypeMember__main__0 (char* __utac__para0 ,struct Record * __utac__para1  )  ; 

  void insertTypeMember (char* __utac__para0 ,struct Record * __utac__para1  ) ; 
void ** insertTypeMember_utac__call__wrapper_main_1 (struct JoinPoint * this);  
 

void ** insertTypeMember_utac__call__wrapper_main_1 (struct JoinPoint * this) { 
 
char* * a0  = ( char* *) (this->args[ 0 ]); 
  
struct Record * * a1  = ( struct Record * *) (this->args[ 1 ]); 
  
insertTypeMember ( *a0 , *a1 ); 
return this->retValue; 
} 



main(argc,argv) 

int argc; 

char **argv;  
{
int retValue_acc;




{




 FILE *f1;



 FILE *f2;



char **aFileNames;



char **nFileNames;



int aFileNum = 0;



int nFileNum = 0;



int i;

process_args(argc, argv, (&aFileNames), (&nFileNames), (&aFileNum), (&nFileNum)); 

for(i = 0;i < aFileNum;i++) { { 

define_target_file_name(aFileNames[i]); 

f1 = fopen(aFileNames[i], "r"); 

if (f1 == (((void *)0))){
{ 

WARNING("file %s does not exist. It is skipped.\n", aFileNames[i]); } }else{
{ 

init(f1); 

ROOT(); 

insertGenDecls(target_file_name, 0); } }

free_file_name(); } } 

if (getSemanticError()){
{ 

goto free_memory; } }

compileFlag = 0; 

for(i = 0;i < nFileNum;i++) { { 

define_target_file_name(nFileNames[i]); 

f2 = fopen(nFileNames[i], "r"); 

if (f2 == (((void *)0))){
{ 

WARNING("file %s does not exist. It is skipped.\n", nFileNames[i]); } }else{
{ 

init(f2); 

ROOT(); 

insertGenDecls(target_file_name, 1); } }

free_file_name(); } } 

for(i = 0;i < aFileNum;i++) { { 

define_target_file_name(aFileNames[i]); 

insertTypeMember__main__0(target_file_name, PointCutTable); 

free_file_name(); } } 

free_memory:  free_pointcut__main__1(PointCutTable); 

free_cflowTable(cflowTable); 

free_tryTable(tryTable); 

free_typedefTable(typedefTable); 

free_func(funcTable); 

free_func(fpTable); 

free_func(varTable); 

free_file_chain(); 

{ 



int k;

if (aFileNum > 0){
{ 

for(k = 0;k < (aFileNum);k++) { { 

if ((aFileNames) && (aFileNames)[k]){
free((aFileNames)[k]); }} } 

if ((aFileNames)){
free((aFileNames)); }} }} 

{ 



int k;

if (nFileNum > 0){
{ 

for(k = 0;k < (nFileNum);k++) { { 

if ((nFileNames) && (nFileNames)[k]){
free((nFileNames)[k]); }} } 

if ((nFileNames)){
free((nFileNames)); }} }} 

if (user_ac_suffix){
free(ac_suffix); }

if (user_mc_suffix){
free(mc_suffix); }

exit__main__2(0); 

}

return (int )retValue_acc;


}
  void __utac_acc__matchinfo_ac__10 (void);

  void exit (int __status  ) ; 

static inline void  exit__main__2 (int __status  ) {

{
__utac_acc__matchinfo_ac__10();

}
exit ( __status ) ;  
}
  void __utac_acc__matchinfo_ac__9 (struct Record * pcPtr  );

  void free_pointcut (struct Record * __utac__para0  ) ; 

static inline void  free_pointcut__main__1 (struct Record * __utac__para0  ) {

{
struct Record * __utac__ad__arg1 = __utac__para0 ; 
__utac_acc__matchinfo_ac__9(__utac__ad__arg1 );

}
free_pointcut ( __utac__para0 ) ;  
}
  void __utac_acc__matchaa_ac__3 (char* acc_target ,struct Record * pc  , struct JoinPoint * );

  void insertTypeMember (char* __utac__para0 ,struct Record * __utac__para1  ) ; 

static inline void  insertTypeMember__main__0 (char* __utac__para0 ,struct Record * __utac__para1  ) {
 { 
 struct JoinPoint this; 
char** __utac__arg0 = &__utac__para0; 
const char * __utac__argtype0 = "char*"; 
struct Record ** __utac__arg1 = &__utac__para1; 
const char * __utac__argtype1 = "struct Record *"; 
 void * __utac__args[2]; 
 const char * __utac__argstype[2];
this.argsCount = 2 ; 
 void * __utac__retp[1]; 
__utac__args[0] = (void*)(__utac__arg0);
__utac__argstype[0] = __utac__argtype0;
__utac__args[1] = (void*)(__utac__arg1);
__utac__argstype[1] = __utac__argtype1;
this.args = __utac__args; 
this.argsType = __utac__argstype; 
{ extern void * __utac__get_this_arg (int, struct JoinPoint *)  ; 
  extern const char * __utac__get_this_argtype (int, struct JoinPoint *)  ; 
this.arg = __utac__get_this_arg ; 
this.argType= __utac__get_this_argtype ; } 
this.fp = &(insertTypeMember_utac__call__wrapper_main_1);
this.retValue = __utac__retp ; 
this.retType ="void" ; 
 { 
char* __utac__ad__arg1 = __utac__para0 ; 
struct Record * __utac__ad__arg2 = __utac__para1 ; 
__utac_acc__matchaa_ac__3(__utac__ad__arg1 ,__utac__ad__arg2 ,&this );
 
 } 
 } 
}
 
static inline void  exit__main__4 (int __status  )  ; 

static inline void  exit__main__3 (int __status  )  ; 


process_args(argc,argv,aFiles,nFiles,aNum,nNum) 

int argc; 

char **argv; 

char ***aFiles; 

char ***nFiles; 

int *aNum; 

int *nNum;  
{
int retValue_acc;




{




int i;



int aFileCount = 0;



int nFileCount = 0;



int argLen = 0;

if (argc <= 1){
{ 

printf("no file name is specified.\n"); 

exit__main__3(1); } }

for(i = 1;i < argc;) { { 

i = process_onearg(argv, argc, i); } } 

for(i = 1;i < argc;i++) { { 

argLen = strlen(argv[i]); 

if (strstr(argv[i], "-") == argv[i]){
{ 

continue; } }else{
if (argLen > (strlen(ac_suffix)) && (strcmp(argv[i] + argLen - (strlen(ac_suffix)), ac_suffix) == 0)){
{ 

aFileCount++; } }else{
if (argLen > (strlen(mc_suffix)) && (strcmp(argv[i] + argLen - (strlen(mc_suffix)), mc_suffix) == 0)){
{ 

nFileCount++; } }else{
{ 

printf("invalid file name: \"%s\". Acceptable file name suffix are \"%s\" and \"%s\" \n", argv[i], ac_suffix, mc_suffix); 

exit__main__4(1); } }}}} } 

(*aNum) = aFileCount; 

(*nNum) = nFileCount; 

if (aFileCount > 0){
((*aFiles)) = ((char **)malloc(aFileCount * sizeof (char *))); }

if (nFileCount > 0){
((*nFiles)) = ((char **)malloc(nFileCount * sizeof (char *))); }

aFileCount = 0; 

nFileCount = 0; 

for(i = 1;i < argc;i++) { { 

argLen = strlen(argv[i]); 

if (strstr(argv[i], "-") == argv[i]){
{ 

continue; } }else{
if (argLen > (strlen(ac_suffix)) && (strcmp(argv[i] + argLen - (strlen(ac_suffix)), ac_suffix) == 0)){
{ 

((*aFiles))[aFileCount] = ((char *)malloc(argLen * sizeof (char ) + 1)); 

strcpy(((*aFiles))[aFileCount], argv[i]); 

((*aFiles))[aFileCount][argLen] = '\0'; 

aFileCount++; } }else{
if (argLen > (strlen(mc_suffix)) && (strcmp(argv[i] + argLen - (strlen(mc_suffix)), mc_suffix) == 0)){
{ 

((*nFiles))[nFileCount] = ((char *)malloc(argLen * sizeof (char ) + 1)); 

strcpy(((*nFiles))[nFileCount], argv[i]); 

((*nFiles))[nFileCount][argLen] = '\0'; 

nFileCount++; } }else{
if (strstr(argv[i], "-") != argv[i]){
{ 

(((0)?((void )(0)):__assert_fail("0", "/home/lizimo/Desktop/ACCtesting2/ACC/src/main.c", 242, __PRETTY_FUNCTION__))); } }}}}} } 

}

return (int )retValue_acc;


}
  void __utac_acc__matchinfo_ac__10 (void);

  void exit (int __status  ) ; 

static inline void  exit__main__4 (int __status  ) {

{
__utac_acc__matchinfo_ac__10();

}
exit ( __status ) ;  
}
  void __utac_acc__matchinfo_ac__10 (void);

  void exit (int __status  ) ; 

static inline void  exit__main__3 (int __status  ) {

{
__utac_acc__matchinfo_ac__10();

}
exit ( __status ) ;  
}
 
  int __utac_acc__matchinfo_ac__1 (char** argv ,int argc ,int i  , struct JoinPoint * );


  int process_onearg (char** argv ,int argc ,int i  ) ; 
  int process_oneargutac__exec__ori (char** argv ,int argc ,int i  ) ; 
void ** process_onearg_utac__exec__wrapper_main_3 (struct JoinPoint * this);  
 

void ** process_onearg_utac__exec__wrapper_main_3 (struct JoinPoint * this) { 
 
char** * a0  = ( char** *) (this->args[ 0 ]); 
  
int * a1  = ( int *) (this->args[ 1 ]); 
  
int * a2  = ( int *) (this->args[ 2 ]); 
  
int **  rp = (  int **)(this->retValue); 
int  temp ;  
temp =  process_oneargutac__exec__ori ( *a0 , *a1 , *a2 ); 
** rp = temp ;  
return this->retValue; 
} 
void ** process_onearg_utac__exec__wrapper_main_2 (struct JoinPoint * this);  
 
  int __utac_acc__matchaa_ac__1 (char** argv ,int argc ,int i  , struct JoinPoint * );

void ** process_onearg_utac__exec__wrapper_main_2 (struct JoinPoint * this) { 
 
int **  rp = (  int **)(this->retValue); 
int  temp ;  
this->fp = &( process_onearg_utac__exec__wrapper_main_3 ) ; 
temp = __utac_acc__matchaa_ac__1( * ( char** *) (this->args[ 0 ]) ,   * ( int *) (this->args[ 1 ]) ,   * ( int *) (this->args[ 2 ]) , this  ); 
 ** rp = temp ;  
return this->retValue; 
  }  


static inline void  exit__main__6 (int __status  )  ; 

static inline void  exit__main__5 (int __status  )  ; 


int process_onearg(char **argv, int argc, int i)  
{
int retValue_acc;



 { 
 struct JoinPoint this; 
char*** __utac__arg0 = &argv; 
const char * __utac__argtype0 = "char**"; 
int* __utac__arg1 = &argc; 
const char * __utac__argtype1 = "int"; 
int* __utac__arg2 = &i; 
const char * __utac__argtype2 = "int"; 
 void * __utac__args[3]; 
 const char * __utac__argstype[3];
this.argsCount = 3 ; 
 void * __utac__retp[1]; 
int __utac__ret ;
__utac__args[0] = (void*)(__utac__arg0);
__utac__argstype[0] = __utac__argtype0;
__utac__args[1] = (void*)(__utac__arg1);
__utac__argstype[1] = __utac__argtype1;
__utac__args[2] = (void*)(__utac__arg2);
__utac__argstype[2] = __utac__argtype2;
*__utac__retp  = (void *)(&__utac__ret);
this.args = __utac__args; 
this.argsType = __utac__argstype; 
{ extern void * __utac__get_this_arg (int, struct JoinPoint *)  ; 
  extern const char * __utac__get_this_argtype (int, struct JoinPoint *)  ; 
this.arg = __utac__get_this_arg ; 
this.argType= __utac__get_this_argtype ; } 
this.fp = &(process_onearg_utac__exec__wrapper_main_2);
this.retValue = __utac__retp ; 
this.retType ="int" ; 
 { 
char** __utac__ad__arg1 = argv ; 
int __utac__ad__arg2 = argc ; 
int __utac__ad__arg3 = i ; 
retValue_acc = __utac_acc__matchinfo_ac__1(__utac__ad__arg1 ,__utac__ad__arg2 ,__utac__ad__arg3 ,&this );
 
 } 
 } 


return (int )retValue_acc;


}
  void __utac_acc__matchinfo_ac__10 (void);

  void exit (int __status  ) ; 

static inline void  exit__main__6 (int __status  ) {

{
__utac_acc__matchinfo_ac__10();

}
exit ( __status ) ;  
}
  void __utac_acc__matchinfo_ac__10 (void);

  void exit (int __status  ) ; 

static inline void  exit__main__5 (int __status  ) {

{
__utac_acc__matchinfo_ac__10();

}
exit ( __status ) ;  
}
 

  int process_oneargutac__exec__ori (char** argv ,int argc ,int i  ) { 

int retValue_acc;




char *suffix_temp;

if (strcmp(argv[i], "-v") == 0 || strcmp(argv[i], "--version") == 0){
{ 

printf("AspeCt-oriented C (ACC) version dev \n"); 

exit__main__5(0); } }else{
if (strcmp(argv[i], "-h") == 0 || strcmp(argv[i], "--help") == 0){
{ 

printHelpMenu(); 

exit__main__6(0); } }else{
if (strcmp(argv[i], "-t") == 0 || strcmp(argv[i], "--thread-safe") == 0){
{ 

setThreadSafe(); } }else{
if (strstr(argv[i], "-af=") == argv[i] || strstr(argv[i], "--aspect-suffix=") == argv[i]){
{ 

suffix_temp = get_file_suffix(argv[i]); 

if (suffix_temp){
{ 

ac_suffix = suffix_temp; 

user_ac_suffix = 1; } }} }else{
if (strstr(argv[i], "-mf=") == argv[i] || strstr(argv[i], "--mainfile-suffix=") == argv[i]){
{ 

suffix_temp = get_file_suffix(argv[i]); 

if (suffix_temp){
{ 

mc_suffix = suffix_temp; 

user_mc_suffix = 1; } }} }else{
if (strcmp(argv[i], "-n") == 0 || strcmp(argv[i], "--no-line") == 0){
{ 

setNoLine(); } }else{
if (strstr(argv[i], "-map=") == argv[i]){
{ 

addMapFileName(argv[i]); } }else{
if (strstr(argv[i], "-") == argv[i]){
{ 

printf("invalid option : %s . It is skipped \n", argv[i]); } }}}}}}}}


retValue_acc = i + 1;
return (int )retValue_acc;
 
 } 
static inline void  exit__main__9 (int __status  )  ; 

static inline void  exit__main__8 (int __status  )  ; 

static inline void  exit__main__7 (int __status  )  ; 


define_target_file_name(str) 

char *str;  
{
int retValue_acc;




{




int i,base_name_len;



char *start = (((void *)0));

setCurFileName(str); 

src_file_name = ((char *)malloc(strlen(str) + 1)); 

sprintf(src_file_name, "%s", str); 

i = strlen(str) - 1; 

for(;;) { { 

if (i < 0){
{ 

printf("missing file name extension\n"); 

exit__main__7(1); } }

if (str[i] == '.'){
{ 

if (str[i + 1] == 'c' && str[i + 2] == '\0'){
{ 

printf("source file name cannot have extension '.c'\n"); 

exit__main__8(1); } }

target_file_name = ((char *)malloc(i + 3)); 

if (target_file_name == 0){
{ 

printf("running out of memory\n"); 

exit__main__9(1); } }

str[i] = '\0'; 

sprintf(target_file_name, "%s.c", str); 

str[i] = '.'; 

break; } }

i--; } } 

start = strrchr(target_file_name, '/'); 

if (start == (((void *)0))){
{ 

start = target_file_name; } }else{
{ 

start = start + 1; } }

base_name_len = strlen(target_file_name) - 2 - (start - target_file_name) + 1; 

target_file_base_name = ((char *)malloc(base_name_len)); 

i = 0; 

while(i < base_name_len - 1) { { 

switch((*start)){ { 

case '-': case '+': case '.': target_file_base_name[i] = '_'; 

break; 

default: target_file_base_name[i] = (*start); } } 

i++; 

start = start + 1; } } 

(((i == base_name_len - 1)?((void )(0)):__assert_fail("i == base_name_len - 1", "/home/lizimo/Desktop/ACCtesting2/ACC/src/main.c", 365, __PRETTY_FUNCTION__))); 

target_file_base_name[i] = '\0'; 

}

return (int )retValue_acc;


}
  void __utac_acc__matchinfo_ac__10 (void);

  void exit (int __status  ) ; 

static inline void  exit__main__9 (int __status  ) {

{
__utac_acc__matchinfo_ac__10();

}
exit ( __status ) ;  
}
  void __utac_acc__matchinfo_ac__10 (void);

  void exit (int __status  ) ; 

static inline void  exit__main__8 (int __status  ) {

{
__utac_acc__matchinfo_ac__10();

}
exit ( __status ) ;  
}
  void __utac_acc__matchinfo_ac__10 (void);

  void exit (int __status  ) ; 

static inline void  exit__main__7 (int __status  ) {

{
__utac_acc__matchinfo_ac__10();

}
exit ( __status ) ;  
}
 

void free_file_name()  
{



{


if (src_file_name){
{ 

free(src_file_name); 

src_file_name = (((void *)0)); } }

if (target_file_name){
{ 

free(target_file_name); 

target_file_name = (((void *)0)); } }

if (target_file_base_name){
{ 

free(target_file_base_name); 

target_file_base_name = (((void *)0)); } }

}


}
 

get_target_file_name(p) 

char **p;  
{
int retValue_acc;




{


(*p) = target_file_name; 

}

return (int )retValue_acc;


}
 

get_target_file_base_name(p) 

char **p;  
{
int retValue_acc;




{


(*p) = target_file_base_name; 

}

return (int )retValue_acc;


}
 

void isAspectCompile(long *flag)  
{



{


(*flag) = compileFlag; 

}


}
 

void init(f) 

 FILE *f;  
{



{


resetCurrDefnLineNum(); 

resetAdviceCounter(); 

resetGenBufSize(); 

initFuncCalls(); 

initStream(f); 

InitScanner(); 

}


}
 

char isThreadSafe()  
{
char retValue_acc;




{



retValue_acc = threadSafe;
return (char )retValue_acc;
 

}

return (char )retValue_acc;


}
 

void setThreadSafe()  
{



{


threadSafe = 1; 

}


}
 

char needLine()  
{
char retValue_acc;




{



retValue_acc = srcLineNeeded;
return (char )retValue_acc;
 

}

return (char )retValue_acc;


}
 

void setNoLine()  
{



{


srcLineNeeded = 0; 

}


}
 

char *get_file_suffix(char *option)  
{
char* retValue_acc;




{




char *equalSign = strstr(option, "=");



char *uSuffix;

if (equalSign - option == strlen(option) - 1){
{ 

printf("No file suffix is specified after option %s . The option is skipped and default file suffix will be used.\n", option); 


retValue_acc = (((void *)0));
return (char* )retValue_acc;
 } }else{
if ((*(equalSign + 1)) != '.'){
{ 

printf("The file suffix specified in %s does not start with '.'. The option is skipped and default file suffix will be used.\n", option); 


retValue_acc = (((void *)0));
return (char* )retValue_acc;
 } }else{
if (strlen(equalSign + 1) == 1){
{ 

printf("No file suffix is specified after '.'. The option %s is skipped and default file suffix will be used.\n", option); 


retValue_acc = (((void *)0));
return (char* )retValue_acc;
 } }else{
{ 

uSuffix = ((char *)malloc(strlen(equalSign + 1) + 1)); 

sprintf(uSuffix, "%s", equalSign + 1); } }}}


retValue_acc = uSuffix;
return (char* )retValue_acc;
 

}

return (char* )retValue_acc;


}
 

void printOptions(); 
static inline void  printOptions__main__10 (void)  ; 


void printHelpMenu()  
{



{


printf("%s", "Usage: acc [options] file... \nOptions:\n"); 

printOptions__main__10(); 

printf("\n%s", "For bug reporting instructions, please see: http://www.aspectc.net .\n"); 

}


}
  void __utac_acc__matchinfo_ac__2 (void);

  void __utac_acc__matchaa_ac__2 (void);

  void printOptions () ; 

static inline void  printOptions__main__10 (void) {
printOptions ( ) ;  

{
__utac_acc__matchinfo_ac__2();

}

{
__utac_acc__matchaa_ac__2();

}
}
 

void printOptions()  
{



{




char options[] = "-h , --help \n""\tDisplay this help information\n\n""-n , --no-line\n""\tNo # directives will be generated\n\n""-t , --thread-safe\n""\tInstruct to generate thread safe code\n\n""-v , --version \n""\tDisplay acc version\n\n""-af=<file suffix> , --aspect-suffix=<file suffix>\n""\tSpecify file suffix for aspect file\n\n""-mf=<file suffix> , --mainfile-suffix=<file suffix>\n""\tSpecify file suffix for non-aspect file\n\n";

printf("%s", options); 

}


}
 
