
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



typedef long *yy; 

static  yy yynull; 

extern  yy yyh; 

extern  yy yyhx; 

static yyErr(n,l)  
{
int retValue_acc;




{


yyAbort(n, "Coder", l); 

}

return (int )retValue_acc;


}
 

extern  yy yyglov_Var_Line; 

cg_new_static_var(yyin_1,yyin_2,yyin_3) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Linkage;



 yy yy_0_1;



 yy yyv_INT;



 yy yy_0_2;



 yy yyv_Ident;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yyv_Linkage = yy_0_1; 

yyv_INT = yy_0_2; 

yyv_Ident = yy_0_3; 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

cg_new_auto_var(yyin_1,yyin_2,yyin_3,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Align;



 yy yy_0_1;



 yy yyv_N;



 yy yy_0_2;



 yy yyv_Ident;



 yy yy_0_3;



 yy yy_0_4;



 yy yyv_ObjNr;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yyv_Align = yy_0_1; 

yyv_N = yy_0_2; 

yyv_Ident = yy_0_3; 

cg_dummy_ObjNr((&yy_1_1)); 

yyv_ObjNr = yy_1_1; 

yy_0_4 = yyv_ObjNr; 

(*yyout_1) = yy_0_4; 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

cg_new_param(yyin_1,yyin_2,yyin_3,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_N1;



 yy yy_0_1;



 yy yyv_N2;



 yy yy_0_2;



 yy yyv_Ident;



 yy yy_0_3;



 yy yy_0_4;



 yy yyv_ObjNr;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yyv_N1 = yy_0_1; 

yyv_N2 = yy_0_2; 

yyv_Ident = yy_0_3; 

cg_dummy_ObjNr((&yy_1_1)); 

yyv_ObjNr = yy_1_1; 

yy_0_4 = yyv_ObjNr; 

(*yyout_1) = yy_0_4; 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

cg_new_function(yyin_1,yyin_2) 

 yy yyin_1; 

 yy yyin_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Name;



 yy yy_0_1;



 yy yyv_Linkage;



 yy yy_0_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Name = yy_0_1; 

yyv_Linkage = yy_0_2; 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

cg_new_address_tempo(yyout_1) 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_ObjNr;



 yy yy_1_1;

cg_dummy_ObjNr((&yy_1_1)); 

yyv_ObjNr = yy_1_1; 

yy_0_1 = yyv_ObjNr; 

(*yyout_1) = yy_0_1; 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

cg_new_tempo(yyin_1,yyout_1) 

 yy yyin_1; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_TpDescr;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_ObjNr;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yyv_TpDescr = yy_0_1; 

cg_dummy_ObjNr((&yy_1_1)); 

yyv_ObjNr = yy_1_1; 

yy_0_2 = yyv_ObjNr; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

NextFunction(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Ident;



 yy yy_0_1;

yy_0_1 = yyin_1; 

yyv_Ident = yy_0_1; 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

cg_init_function(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Ident;



 yy yy_0_1;

yy_0_1 = yyin_1; 

yyv_Ident = yy_0_1; 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

cg_external_function(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Ident;



 yy yy_0_1;

yy_0_1 = yyin_1; 

yyv_Ident = yy_0_1; 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

cg_external_var(yyin_1,yyin_2) 

 yy yyin_1; 

 yy yyin_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_INT;



 yy yy_0_1;



 yy yyv_Ident;



 yy yy_0_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_INT = yy_0_1; 

yyv_Ident = yy_0_2; 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 
