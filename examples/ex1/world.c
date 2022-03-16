
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


#include <stdio.h>
 
  void __utac_acc__hello__1 (void);


  void __utac_acc__hello__2 (void);


#line 4 "/home/sd/ACC_v09/ACC/examples/ex1/world.mc"
int main()  
# 41 "/home/sd/ACC_v09/ACC/examples/ex1/world.c"
{
# 43 "/home/sd/ACC_v09/ACC/examples/ex1/world.c"
int retValue_acc;




{
__utac_acc__hello__1();

}

# 54 "/home/sd/ACC_v09/ACC/examples/ex1/world.c"
{

#line 5 "/home/sd/ACC_v09/ACC/examples/ex1/world.mc"
printf("world"); 
# 59 "/home/sd/ACC_v09/ACC/examples/ex1/world.c"

}

{
__utac_acc__hello__2();

}

# 68 "/home/sd/ACC_v09/ACC/examples/ex1/world.c"
return (int )retValue_acc;

# 71 "/home/sd/ACC_v09/ACC/examples/ex1/world.c"

}
 
