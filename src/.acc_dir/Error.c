
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


yyAbort(n, "Error", l); 

}

return (int )retValue_acc;


}
 

extern  yy yyglov_Var_Line; 

compiler_error(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_String;



 yy yy_0_1;



 yy yyv_Line;



 yy yy_1_1;



 yy yy_2_1;



 yy yy_2_2;

yy_0_1 = yyin_1; 

yyv_String = yy_0_1; 

GETVarLine((&yy_1_1)); 

yyv_Line = yy_1_1; 

yy_2_1 = yyv_String; 

yy_2_2 = yyv_Line; 

ERROR(yy_2_1, yy_2_2); 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

semantic_error(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_String;



 yy yy_0_1;



 yy yyv_Line;



 yy yy_1_1;



 yy yy_2_1;



 yy yy_2_2;

yy_0_1 = yyin_1; 

yyv_String = yy_0_1; 

GETVarLine((&yy_1_1)); 

yyv_Line = yy_1_1; 

yy_2_1 = yyv_String; 

yy_2_2 = yyv_Line; 

ERROR(yy_2_1, yy_2_2); 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

semantic_error_i(yyin_1,yyin_2,yyin_3) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_STRING1;



 yy yy_0_1;



 yy yyv_STRINGId;



 yy yy_0_2;



 yy yyv_STRING2;



 yy yy_0_3;



 yy yyv_Line;



 yy yy_1_1;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yy_2_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yyv_STRING1 = yy_0_1; 

yyv_STRINGId = yy_0_2; 

yyv_STRING2 = yy_0_3; 

GETVarLine((&yy_1_1)); 

yyv_Line = yy_1_1; 

yy_2_1 = yyv_STRING1; 

yy_2_2 = yyv_STRINGId; 

yy_2_3 = yyv_STRING2; 

yy_2_4 = yyv_Line; 

ErrorI(yy_2_1, yy_2_2, yy_2_3, yy_2_4); 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

semantic_error_ii(yyin_1,yyin_2,yyin_3,yyin_4,yyin_5) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy yyin_4; 

 yy yyin_5;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_STRING1;



 yy yy_0_1;



 yy yyv_STRINGId1;



 yy yy_0_2;



 yy yyv_STRING2;



 yy yy_0_3;



 yy yyv_STRINGId2;



 yy yy_0_4;



 yy yyv_STRING3;



 yy yy_0_5;



 yy yyv_Line;



 yy yy_1_1;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yy_2_4;



 yy yy_2_5;



 yy yy_2_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yy_0_5 = yyin_5; 

yyv_STRING1 = yy_0_1; 

yyv_STRINGId1 = yy_0_2; 

yyv_STRING2 = yy_0_3; 

yyv_STRINGId2 = yy_0_4; 

yyv_STRING3 = yy_0_5; 

GETVarLine((&yy_1_1)); 

yyv_Line = yy_1_1; 

yy_2_1 = yyv_STRING1; 

yy_2_2 = yyv_STRINGId1; 

yy_2_3 = yyv_STRING2; 

yy_2_4 = yyv_STRINGId2; 

yy_2_5 = yyv_STRING3; 

yy_2_6 = yyv_Line; 

ErrorII(yy_2_1, yy_2_2, yy_2_3, yy_2_4, yy_2_5, yy_2_6); 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

sem_error(yyin_1,yyin_2) 

 yy yyin_1; 

 yy yyin_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_ID;



 yy yy_0_1;



 yy yyv_FMT;



 yy yy_0_2;



 yy yyv_Line;



 yy yy_1_1;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_ID = yy_0_1; 

yyv_FMT = yy_0_2; 

GETVarLine((&yy_1_1)); 

yyv_Line = yy_1_1; 

yy_2_1 = yyv_ID; 

yy_2_2 = yyv_FMT; 

yy_2_3 = yyv_Line; 

Error_new(yy_2_1, yy_2_2, yy_2_3); 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

sem_error_i(yyin_1,yyin_2,yyin_3) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_ID;



 yy yy_0_1;



 yy yyv_FMT;



 yy yy_0_2;



 yy yyv_PARA;



 yy yy_0_3;



 yy yyv_Line;



 yy yy_1_1;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yy_2_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yyv_ID = yy_0_1; 

yyv_FMT = yy_0_2; 

yyv_PARA = yy_0_3; 

GETVarLine((&yy_1_1)); 

yyv_Line = yy_1_1; 

yy_2_1 = yyv_ID; 

yy_2_2 = yyv_FMT; 

yy_2_3 = yyv_PARA; 

yy_2_4 = yyv_Line; 

ErrorI_new(yy_2_1, yy_2_2, yy_2_3, yy_2_4); 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

sem_error_ii(yyin_1,yyin_2,yyin_3,yyin_4) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy yyin_4;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_ID;



 yy yy_0_1;



 yy yyv_FMT;



 yy yy_0_2;



 yy yyv_PARA1;



 yy yy_0_3;



 yy yyv_PARA2;



 yy yy_0_4;



 yy yyv_Line;



 yy yy_1_1;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yy_2_4;



 yy yy_2_5;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_ID = yy_0_1; 

yyv_FMT = yy_0_2; 

yyv_PARA1 = yy_0_3; 

yyv_PARA2 = yy_0_4; 

GETVarLine((&yy_1_1)); 

yyv_Line = yy_1_1; 

yy_2_1 = yyv_ID; 

yy_2_2 = yyv_FMT; 

yy_2_3 = yyv_PARA1; 

yy_2_4 = yyv_PARA2; 

yy_2_5 = yyv_Line; 

ErrorII_new(yy_2_1, yy_2_2, yy_2_3, yy_2_4, yy_2_5); 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 
