
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


yyAbort(n, "Decls", l); 

}

return (int )retValue_acc;


}
 

extern  yy yyglov_Var_Line; 

 yy yyglov_Var_FunctionType = (( yy )((-2147483647L))); 

yyeq_TypedIdentList(t1,t2) 

 yy t1,t2;  
{
int retValue_acc;




{


switch(t1[0]){ { 

case 1: 
retValue_acc = (t2[0] == 1) && yyeq_TypedIdentList((( yy )t1[1]), (( yy )t2[1])) && yyeq_Ident((( yy )t1[2]), (( yy )t2[2])) && yyeq_Tp((( yy )t1[3]), (( yy )t2[3])) && yyeq_StClass((( yy )t1[4]), (( yy )t2[4]));
return (int )retValue_acc;
 

case 2: 
retValue_acc = (t2[0] == 2);
return (int )retValue_acc;
 } } 

}

return (int )retValue_acc;


}
 

yyPrint_TypedIdentList(t) 

 yy t;  
{
int retValue_acc;




{


switch(t[0]){ { 

case 1: yyTerm("typed_identifier_list"); 

yyFirstArg(); 

yyPrint_TypedIdentList((( yy )t[1])); 

yyNextArg(); 

yyPrint_Ident((( yy )t[2])); 

yyNextArg(); 

yyPrint_Tp((( yy )t[3])); 

yyNextArg(); 

yyPrint_StClass((( yy )t[4])); 

yyEndArgs(); 

break; 

case 2: yyTerm("typed_identifier_list_nil"); 

yyNoArgs(); 

break; } } 

}

return (int )retValue_acc;


}
 

yybroadcast_TypedIdentList(t,In,Out,Handler) 

 yy t,In,*Out; 

int (*Handler)();  
{
int retValue_acc;




{




 yy A,B;

A = In; 

if ((!Handler(yybroadcast_TypedIdentList, t, In, Out))){
{ 

switch(t[0]){ { 

case 1: yybroadcast_TypedIdentList((( yy )t[1]), A, (&B), Handler); 

yybroadcast_Ident((( yy )t[2]), B, (&A), Handler); 

yybroadcast_StClass((( yy )t[4]), A, (&B), Handler); 

(*Out) = B; 

break; 

case 2: (*Out) = A; 

break; } } } }

}

return (int )retValue_acc;


}
 

yyeq_ParamFlag(t1,t2) 

 yy t1,t2;  
{
int retValue_acc;




{


switch(t1[0]){ { 

case 1: 
retValue_acc = (t2[0] == 1);
return (int )retValue_acc;
 

case 2: 
retValue_acc = (t2[0] == 2);
return (int )retValue_acc;
 } } 

}

return (int )retValue_acc;


}
 

yyPrint_ParamFlag(t) 

 yy t;  
{
int retValue_acc;




{


switch(t[0]){ { 

case 1: yyTerm("param"); 

yyNoArgs(); 

break; 

case 2: yyTerm("no_param"); 

yyNoArgs(); 

break; } } 

}

return (int )retValue_acc;


}
 

yybroadcast_ParamFlag(t,In,Out,Handler) 

 yy t,In,*Out; 

int (*Handler)();  
{
int retValue_acc;




{




 yy A,B;

A = In; 

if ((!Handler(yybroadcast_ParamFlag, t, In, Out))){
{ 

switch(t[0]){ { 

case 1: (*Out) = A; 

break; 

case 2: (*Out) = A; 

break; } } } }

}

return (int )retValue_acc;


}
 

ProcessUnit(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Unit;



 yy yy_0_1;



 yy yy_3_1;

yy_0_1 = yyin_1; 

yyv_Unit = yy_0_1; 

init_scope_stack(); 

enter_scope(); 

yy_3_1 = yyv_Unit; 

process_external_declaration_list(yy_3_1); 

leave_scope(); 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

process_external_declaration_list(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_L;



 yy yy_0_1_1;



 yy yyv_D;



 yy yy_0_1_2;



 yy yy_1_1;



 yy yy_2_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 2){
goto yyfl_2_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_L = yy_0_1_1; 

yyv_D = yy_0_1_2; 

yy_1_1 = yyv_L; 

process_external_declaration_list(yy_1_1); 

yy_2_1 = yyv_D; 

process_external_declaration(yy_2_1); 


return (int )retValue_acc;
 

yyfl_2_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 3){
goto yyfl_2_2; }


return (int )retValue_acc;
 

yyfl_2_2:  ; } 

yyErr(2, 46); 

}

return (int )retValue_acc;


}
 

process_type_name(yyin_1,yyout_1) 

 yy yyin_1; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_L;



 yy yy_0_1_1;



 yy yyv_D;



 yy yy_0_1_2;



 yy yy_0_2;



 yy yy_1_1;



 yy yyv_Qualifier;



 yy yy_1_2;



 yy yyv_TpDescr;



 yy yy_1_3;



 yy yy_2_1;



 yy yy_2_2;



 yy yyv_Type;



 yy yy_2_3;



 yy yy_3_1;



 yy yy_3_2;



 yy yyv_Name;



 yy yy_3_3;



 yy yyv_Tp1;



 yy yy_3_4;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 144){
goto yyfl_3_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_L = yy_0_1_1; 

yyv_D = yy_0_1_2; 

yy_1_1 = yyv_L; 

process_specifier_qualifier_list(yy_1_1, (&yy_1_2), (&yy_1_3)); 

yyv_Qualifier = yy_1_2; 

yyv_TpDescr = yy_1_3; 

yy_2_1 = yyv_Qualifier; 

yy_2_2 = yyv_TpDescr; 

compute_base_type(yy_2_1, yy_2_2, (&yy_2_3)); 

yyv_Type = yy_2_3; 

yy_3_1 = yyv_D; 

yy_3_2 = yyv_Type; 

process_abstract_declarator(yy_3_1, yy_3_2, (&yy_3_3), (&yy_3_4)); 

yyv_Name = yy_3_3; 

yyv_Tp1 = yy_3_4; 

yy_0_2 = yyv_Tp1; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_3_1:  ; } 

yyErr(2, 57); 

}

return (int )retValue_acc;


}
 

process_declaration_list(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 14){
goto yyfl_4_1; }


return (int )retValue_acc;
 

yyfl_4_1:  ; } 

yyErr(2, 67); 

}

return (int )retValue_acc;


}
 

PUTVarFunctionType(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_X;



 yy yy_0_1;



 yy yy_1;

yy_0_1 = yyin_1; 

yyv_X = yy_0_1; 

yy_1 = yyv_X; 

yyglov_Var_FunctionType = yy_1; 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

GETVarFunctionType(yyout_1) 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_X;



 yy yy_1;

yy_1 = yyglov_Var_FunctionType; 

if (yy_1 == (( yy )((-2147483647L)))){
yyErr(1, 81); }

yyv_X = yy_1; 

yy_0_1 = yyv_X; 

(*yyout_1) = yy_0_1; 


return (int )retValue_acc;
 } 

}

return (int )retValue_acc;


}
 

process_external_declaration(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_S;



 yy yy_0_1_1;



 yy yyv_L;



 yy yy_0_1_2;



 yy yyv_PosX;



 yy yy_0_1_3;



 yy yy_1_1;



 yy yy_2_1;



 yy yyv_StorageClass;



 yy yy_2_2;



 yy yyv_Qualifier;



 yy yy_2_3;



 yy yyv_TpDescr;



 yy yy_2_4;



 yy yy_3_1;



 yy yy_3_2;



 yy yy_3_3;



 yy yy_3_4;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 9){
goto yyfl_10_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yyv_S = yy_0_1_1; 

yyv_L = yy_0_1_2; 

yyv_PosX = yy_0_1_3; 

yy_1_1 = yyv_PosX; 

PUTVarLine(yy_1_1); 

yy_2_1 = yyv_S; 

process_declaration_specifiers(yy_2_1, (&yy_2_2), (&yy_2_3), (&yy_2_4)); 

yyv_StorageClass = yy_2_2; 

yyv_Qualifier = yy_2_3; 

yyv_TpDescr = yy_2_4; 

yy_3_1 = yyv_StorageClass; 

yy_3_2 = yyv_Qualifier; 

yy_3_3 = yyv_TpDescr; 

yy_3_4 = yyv_L; 

compute_base_type_and_process_init_declarator_list(yy_3_1, yy_3_2, yy_3_3, yy_3_4); 


return (int )retValue_acc;
 

yyfl_10_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_S;



 yy yy_0_1_1;



 yy yyv_D;



 yy yy_0_1_2;



 yy yyv_L;



 yy yy_0_1_3;



 yy yyv_Stmt;



 yy yy_0_1_4;



 yy yyv_PosX;



 yy yy_0_1_5;



 yy yy_1_1;



 yy yy_2_1;



 yy yyv_StClass;



 yy yy_2_2;



 yy yyv_Qualifier;



 yy yy_2_3;



 yy yyv_Type0;



 yy yy_2_4;



 yy yy_3_1;



 yy yy_3_2;



 yy yyv_Type;



 yy yy_3_3;



 yy yy_4_1;



 yy yy_4_2;



 yy yyv_Name;



 yy yy_4_3;



 yy yyv_Type2;



 yy yy_4_4;



 yy yy_5_1;



 yy yy_5_2;



 yy yy_5_3;



 yy yy_5_4;



 yy yy_5_5;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 8){
goto yyfl_10_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yy_0_1_4 = ((( yy )yy_0_1[4])); 

yy_0_1_5 = ((( yy )yy_0_1[5])); 

yyv_S = yy_0_1_1; 

yyv_D = yy_0_1_2; 

yyv_L = yy_0_1_3; 

yyv_Stmt = yy_0_1_4; 

yyv_PosX = yy_0_1_5; 

yy_1_1 = yyv_PosX; 

PUTVarLine(yy_1_1); 

yy_2_1 = yyv_S; 

process_declaration_specifiers(yy_2_1, (&yy_2_2), (&yy_2_3), (&yy_2_4)); 

yyv_StClass = yy_2_2; 

yyv_Qualifier = yy_2_3; 

yyv_Type0 = yy_2_4; 

yy_3_1 = yyv_Qualifier; 

yy_3_2 = yyv_Type0; 

compute_base_type(yy_3_1, yy_3_2, (&yy_3_3)); 

yyv_Type = yy_3_3; 

yy_4_1 = yyv_D; 

yy_4_2 = yyv_Type; 

process_declarator(yy_4_1, yy_4_2, (&yy_4_3), (&yy_4_4)); 

yyv_Name = yy_4_3; 

yyv_Type2 = yy_4_4; 

yy_5_1 = yyv_Name; 

yy_5_2 = yyv_Type2; 

yy_5_3 = yyv_StClass; 

yy_5_4 = yyv_L; 

yy_5_5 = yyv_Stmt; 

process_function_body(yy_5_1, yy_5_2, yy_5_3, yy_5_4, yy_5_5); 


return (int )retValue_acc;
 

yyfl_10_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 4){
goto yyfl_10_3; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_D = yy_0_1_1; 


return (int )retValue_acc;
 

yyfl_10_3:  ; } 

yyErr(2, 92); 

}

return (int )retValue_acc;


}
 

process_function_body(yyin_1,yyin_2,yyin_3,yyin_4,yyin_5) 

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



 yy yyv_Name;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_2;



 yy yyv_StClass;



 yy yy_0_3;



 yy yyv_L;



 yy yy_0_4;



 yy yyv_Stmt;



 yy yy_0_5;



 yy yy_1_1;



 yy yyv_IdentList;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yy_3_1;



 yy yy_6_1;



 yy yy_6_2;



 yy yyv_TypedNameList;



 yy yy_6_3;



 yy yy_7_1;



 yy yy_7_2;



 yy yy_8_1;



 yy yy_8_2;



 yy yy_8_3;



 yy yyv_ParamTypes;



 yy yy_8_4;



 yy yy_9_1;



 yy yy_10_1;



 yy yy_11_1;



 yy yyv_StmtC;



 yy yy_11_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yy_0_5 = yyin_5; 

yyv_Name = yy_0_1; 

yyv_Tp = yy_0_2; 

yyv_StClass = yy_0_3; 

yyv_L = yy_0_4; 

yyv_Stmt = yy_0_5; 

yyb = yyh; 

yyh += 2; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tp; 

if ((!test_old_function(yy_1_1, (&yy_1_2)))){
goto yyfl_11_1; }

yyv_IdentList = yy_1_2; 

yy_2_1 = yyv_Name; 

yy_2_2 = yyv_Tp; 

yy_2_3 = yyv_StClass; 

declare_function_or_test_legal_redeclaration(yy_2_1, yy_2_2, yy_2_3); 

yy_3_1 = yyv_Name; 

NextFunction(yy_3_1); 

enter_scope(); 

trafo_begin_function(); 

yy_6_1 = yyv_L; 

yy_6_2 = yyb + 0; 

yy_6_2[0] = 2; 

process_old_parameter_type_declaration_list(yy_6_1, yy_6_2, (&yy_6_3)); 

yyv_TypedNameList = yy_6_3; 

yy_7_1 = yyv_TypedNameList; 

yy_7_2 = yyv_IdentList; 

test_type_names_in_param_list(yy_7_1, yy_7_2); 

yy_8_1 = yyv_IdentList; 

yy_8_2 = yyv_TypedNameList; 

yy_8_3 = yyb + 1; 

yy_8_3[0] = 1; 

make_param_type_list(yy_8_1, yy_8_2, yy_8_3, (&yy_8_4)); 

yyv_ParamTypes = yy_8_4; 

yy_9_1 = yyv_ParamTypes; 

declare_parameters(yy_9_1); 

yy_10_1 = yyv_Tp; 

PUTVarFunctionType(yy_10_1); 

yy_11_1 = yyv_Stmt; 

TrafoStatement(yy_11_1, (&yy_11_2)); 

yyv_StmtC = yy_11_2; 

trafo_end_function(); 

leave_scope(); 


return (int )retValue_acc;
 

yyfl_11_1:  ; } 

{ 



 yy yyb;



 yy yyv_Name;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_2;



 yy yyv_StClass;



 yy yy_0_3;



 yy yyv_L;



 yy yy_0_4;



 yy yyv_Stmt;



 yy yy_0_5;



 yy yy_1_1;



 yy yyv_ParamTypes;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yy_3_1;



 yy yy_6_1;



 yy yy_7_1;



 yy yy_8_1;



 yy yy_9_1;



 yy yyv_StmtC;



 yy yy_9_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yy_0_5 = yyin_5; 

yyv_Name = yy_0_1; 

yyv_Tp = yy_0_2; 

yyv_StClass = yy_0_3; 

yyv_L = yy_0_4; 

yyv_Stmt = yy_0_5; 

yy_1_1 = yyv_Tp; 

if ((!test_new_function(yy_1_1, (&yy_1_2)))){
goto yyfl_11_2; }

yyv_ParamTypes = yy_1_2; 

yy_2_1 = yyv_Name; 

yy_2_2 = yyv_Tp; 

yy_2_3 = yyv_StClass; 

declare_function_or_test_legal_redeclaration(yy_2_1, yy_2_2, yy_2_3); 

yy_3_1 = yyv_Name; 

NextFunction(yy_3_1); 

enter_scope(); 

trafo_begin_function(); 

yy_6_1 = yyv_ParamTypes; 

declare_parameters(yy_6_1); 

yy_7_1 = yyv_L; 

test_empty_declaration_list(yy_7_1); 

yy_8_1 = yyv_Tp; 

PUTVarFunctionType(yy_8_1); 

yy_9_1 = yyv_Stmt; 

TrafoStatement(yy_9_1, (&yy_9_2)); 

yyv_StmtC = yy_9_2; 

trafo_end_function(); 

leave_scope(); 


return (int )retValue_acc;
 

yyfl_11_2:  ; } 

{ 



 yy yyb;



 yy yyv_Name;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_2;



 yy yyv_StClass;



 yy yy_0_3;



 yy yyv_L;



 yy yy_0_4;



 yy yyv_Stmt;



 yy yy_0_5;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yy_0_5 = yyin_5; 

yyv_Name = yy_0_1; 

yyv_Tp = yy_0_2; 

yyv_StClass = yy_0_3; 

yyv_L = yy_0_4; 

yyv_Stmt = yy_0_5; 

yy_1_1 = ((( yy )"illegal type for a function definition")); 

semantic_error(yy_1_1); 


return (int )retValue_acc;
 

yyfl_11_3:  ; } 

yyErr(2, 116); 

}

return (int )retValue_acc;


}
 

process_old_parameter_type_declaration_list(yyin_1,yyin_2,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_TNL;



 yy yy_0_2;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 14){
goto yyfl_12_1; }

yyv_TNL = yy_0_2; 

yy_0_3 = yyv_TNL; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_12_1:  ; } 

yyErr(2, 167); 

}

return (int )retValue_acc;


}
 

process_old_parameter_type_declaration(yyin_1,yyin_2,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_S;



 yy yy_0_1_1;



 yy yyv_L;



 yy yy_0_1_2;



 yy yyv_PosX;



 yy yy_0_1_3;



 yy yyv_TNL;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_2_1;



 yy yyv_StorageClass;



 yy yy_2_2;



 yy yyv_Qualifier;



 yy yy_2_3;



 yy yyv_TpDescr;



 yy yy_2_4;



 yy yy_3_1;



 yy yy_3_2;



 yy yyv_Type;



 yy yy_3_3;



 yy yy_4_1;



 yy yy_4_2;



 yy yy_4_3;



 yy yy_4_4;



 yy yyv_TNL1;



 yy yy_4_5;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 9){
goto yyfl_13_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yyv_S = yy_0_1_1; 

yyv_L = yy_0_1_2; 

yyv_PosX = yy_0_1_3; 

yyv_TNL = yy_0_2; 

yy_1_1 = yyv_PosX; 

PUTVarLine(yy_1_1); 

yy_2_1 = yyv_S; 

process_declaration_specifiers(yy_2_1, (&yy_2_2), (&yy_2_3), (&yy_2_4)); 

yyv_StorageClass = yy_2_2; 

yyv_Qualifier = yy_2_3; 

yyv_TpDescr = yy_2_4; 

yy_3_1 = yyv_Qualifier; 

yy_3_2 = yyv_TpDescr; 

compute_base_type(yy_3_1, yy_3_2, (&yy_3_3)); 

yyv_Type = yy_3_3; 

yy_4_1 = yyv_L; 

yy_4_2 = yyv_Type; 

yy_4_3 = yyv_StorageClass; 

yy_4_4 = yyv_TNL; 

process_old_parameter_type_init_declarator_list(yy_4_1, yy_4_2, yy_4_3, yy_4_4, (&yy_4_5)); 

yyv_TNL1 = yy_4_5; 

yy_0_3 = yyv_TNL1; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_13_1:  ; } 

yyErr(2, 180); 

}

return (int )retValue_acc;


}
 

process_old_parameter_type_init_declarator_list(yyin_1,yyin_2,yyin_3,yyin_4,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy yyin_4; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Rest;



 yy yy_0_1_1;



 yy yyv_Last;



 yy yy_0_1_2;



 yy yyv_Type0;



 yy yy_0_2;



 yy yyv_Class;



 yy yy_0_3;



 yy yyv_TNL0;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;



 yy yy_0_5_2;



 yy yy_0_5_3;



 yy yy_0_5_4;



 yy yy_1_1;



 yy yy_1_2;



 yy yy_1_3;



 yy yy_1_4;



 yy yyv_TNL1;



 yy yy_1_5;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yyv_Name;



 yy yy_2_4;



 yy yyv_Tp;



 yy yy_2_5;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 18){
goto yyfl_14_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_Rest = yy_0_1_1; 

yyv_Last = yy_0_1_2; 

yyv_Type0 = yy_0_2; 

yyv_Class = yy_0_3; 

yyv_TNL0 = yy_0_4; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Rest; 

yy_1_2 = yyv_Type0; 

yy_1_3 = yyv_Class; 

yy_1_4 = yyv_TNL0; 

process_old_parameter_type_init_declarator_list(yy_1_1, yy_1_2, yy_1_3, yy_1_4, (&yy_1_5)); 

yyv_TNL1 = yy_1_5; 

yy_2_1 = yyv_Last; 

yy_2_2 = yyv_Type0; 

yy_2_3 = yyv_Class; 

process_old_parameter_type_init_declarator(yy_2_1, yy_2_2, yy_2_3, (&yy_2_4), (&yy_2_5)); 

yyv_Name = yy_2_4; 

yyv_Tp = yy_2_5; 

yy_0_5_1 = yyv_TNL1; 

yy_0_5_2 = yyv_Name; 

yy_0_5_3 = yyv_Tp; 

yy_0_5_4 = yyv_Class; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 1; 

yy_0_5[1] = (((long )yy_0_5_1)); 

yy_0_5[2] = (((long )yy_0_5_2)); 

yy_0_5[3] = (((long )yy_0_5_3)); 

yy_0_5[4] = (((long )yy_0_5_4)); 

(*yyout_1) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_14_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Type0;



 yy yy_0_2;



 yy yyv_Class;



 yy yy_0_3;



 yy yyv_NL;



 yy yy_0_4;



 yy yy_0_5;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 19){
goto yyfl_14_2; }

yyv_Type0 = yy_0_2; 

yyv_Class = yy_0_3; 

yyv_NL = yy_0_4; 

yy_0_5 = yyv_NL; 

(*yyout_1) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_14_2:  ; } 

yyErr(2, 193); 

}

return (int )retValue_acc;


}
 

process_old_parameter_type_init_declarator(yyin_1,yyin_2,yyin_3,yyout_1,yyout_2) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy *yyout_1; 

 yy *yyout_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yyv_Type0;



 yy yy_0_2;



 yy yyv_StClass;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Name;



 yy yy_1_3;



 yy yyv_Type1;



 yy yy_1_4;



 yy yy_2_1;



 yy yyv_Type;



 yy yy_2_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 26){
goto yyfl_15_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_D = yy_0_1_1; 

yyv_Type0 = yy_0_2; 

yyv_StClass = yy_0_3; 

yy_1_1 = yyv_D; 

yy_1_2 = yyv_Type0; 

process_declarator(yy_1_1, yy_1_2, (&yy_1_3), (&yy_1_4)); 

yyv_Name = yy_1_3; 

yyv_Type1 = yy_1_4; 

yy_2_1 = yyv_Type1; 

adjust_param_type(yy_2_1, (&yy_2_2)); 

yyv_Type = yy_2_2; 

yy_0_4 = yyv_Name; 

yy_0_5 = yyv_Type; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_15_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yyv_I;



 yy yy_0_1_2;



 yy yyv_Type0;



 yy yy_0_2;



 yy yyv_StClass;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_1_1;



 yy yyv_Ident;



 yy yy_2_1;



 yy yyv_Tp;



 yy yy_3_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 20){
goto yyfl_15_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_D = yy_0_1_1; 

yyv_I = yy_0_1_2; 

yyv_Type0 = yy_0_2; 

yyv_StClass = yy_0_3; 

yy_1_1 = ((( yy )"no initializer allowed for parameters")); 

semantic_error(yy_1_1); 

make_dummy_Ident((&yy_2_1)); 

yyv_Ident = yy_2_1; 

make_tp((&yy_3_1)); 

yyv_Tp = yy_3_1; 

yy_0_4 = yyv_Ident; 

yy_0_5 = yyv_Tp; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_15_2:  ; } 

yyErr(2, 206); 

}

return (int )retValue_acc;


}
 

process_declaration(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_S;



 yy yy_0_1_1;



 yy yyv_L;



 yy yy_0_1_2;



 yy yyv_PosX;



 yy yy_0_1_3;



 yy yy_1_1;



 yy yy_2_1;



 yy yyv_StorageClass;



 yy yy_2_2;



 yy yyv_Qualifier;



 yy yy_2_3;



 yy yyv_TpDescr;



 yy yy_2_4;



 yy yy_3_1;



 yy yy_3_2;



 yy yy_3_3;



 yy yy_3_4;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 9){
goto yyfl_16_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yyv_S = yy_0_1_1; 

yyv_L = yy_0_1_2; 

yyv_PosX = yy_0_1_3; 

yy_1_1 = yyv_PosX; 

PUTVarLine(yy_1_1); 

yy_2_1 = yyv_S; 

process_declaration_specifiers(yy_2_1, (&yy_2_2), (&yy_2_3), (&yy_2_4)); 

yyv_StorageClass = yy_2_2; 

yyv_Qualifier = yy_2_3; 

yyv_TpDescr = yy_2_4; 

yy_3_1 = yyv_StorageClass; 

yy_3_2 = yyv_Qualifier; 

yy_3_3 = yyv_TpDescr; 

yy_3_4 = yyv_L; 

compute_base_type_and_process_init_declarator_list(yy_3_1, yy_3_2, yy_3_3, yy_3_4); 


return (int )retValue_acc;
 

yyfl_16_1:  ; } 

yyErr(2, 222); 

}

return (int )retValue_acc;


}
 

process_declaration_specifiers(yyin_1,yyout_1,yyout_2,yyout_3) 

 yy yyin_1; 

 yy *yyout_1; 

 yy *yyout_2; 

 yy *yyout_3;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_G;



 yy yy_0_1_1;



 yy yyv_D;



 yy yy_0_1_2;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yyv_StorageClass;



 yy yy_1_2;



 yy yyv_Qualifier;



 yy yy_1_3;



 yy yyv_Type;



 yy yy_1_4;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 16){
goto yyfl_17_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_G = yy_0_1_1; 

yyv_D = yy_0_1_2; 

yy_1_1 = yyv_D; 

process_declaration_specifiers(yy_1_1, (&yy_1_2), (&yy_1_3), (&yy_1_4)); 

yyv_StorageClass = yy_1_2; 

yyv_Qualifier = yy_1_3; 

yyv_Type = yy_1_4; 

yy_0_2 = yyv_StorageClass; 

yy_0_3 = yyv_Qualifier; 

yy_0_4 = yyv_Type; 

(*yyout_1) = yy_0_2; 

(*yyout_2) = yy_0_3; 

(*yyout_3) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_17_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_S;



 yy yy_0_1_1;



 yy yyv_L;



 yy yy_0_1_2;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yyv_StorageClass0;



 yy yy_1_2;



 yy yyv_Qualifier0;



 yy yy_1_3;



 yy yyv_Type0;



 yy yy_1_4;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yy_2_4;



 yy yyv_StorageClass;



 yy yy_2_5;



 yy yyv_Qualifier;



 yy yy_2_6;



 yy yyv_Type;



 yy yy_2_7;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 17){
goto yyfl_17_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_S = yy_0_1_1; 

yyv_L = yy_0_1_2; 

yy_1_1 = yyv_L; 

process_declaration_specifiers(yy_1_1, (&yy_1_2), (&yy_1_3), (&yy_1_4)); 

yyv_StorageClass0 = yy_1_2; 

yyv_Qualifier0 = yy_1_3; 

yyv_Type0 = yy_1_4; 

yy_2_1 = yyv_S; 

yy_2_2 = yyv_StorageClass0; 

yy_2_3 = yyv_Qualifier0; 

yy_2_4 = yyv_Type0; 

process_declaration_specifier(yy_2_1, yy_2_2, yy_2_3, yy_2_4, (&yy_2_5), (&yy_2_6), (&yy_2_7)); 

yyv_StorageClass = yy_2_5; 

yyv_Qualifier = yy_2_6; 

yyv_Type = yy_2_7; 

yy_0_2 = yyv_StorageClass; 

yy_0_3 = yyv_Qualifier; 

yy_0_4 = yyv_Type; 

(*yyout_1) = yy_0_2; 

(*yyout_2) = yy_0_3; 

(*yyout_3) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_17_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 15){
goto yyfl_17_3; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 6; 

yy_0_3 = yyb + 1; 

yy_0_3[0] = 4; 

yy_0_4 = yyb + 2; 

yy_0_4[0] = 1; 

(*yyout_1) = yy_0_2; 

(*yyout_2) = yy_0_3; 

(*yyout_3) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_17_3:  ; } 

yyErr(2, 235); 

}

return (int )retValue_acc;


}
 

compute_base_type(yyin_1,yyin_2,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Qualifier;



 yy yy_0_1;



 yy yyv_TpDescr;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Tag;



 yy yy_1_3;



 yy yy_2_1;



 yy yy_2_2;



 yy yyv_Tp;



 yy yy_2_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Qualifier = yy_0_1; 

yyv_TpDescr = yy_0_2; 

yy_1_1 = yyv_Qualifier; 

yy_1_2 = yyv_TpDescr; 

if ((!test_complete_tagged_type(yy_1_1, yy_1_2, (&yy_1_3)))){
goto yyfl_18_1; }

yyv_Tag = yy_1_3; 

yy_2_1 = yyv_Tag; 

yy_2_2 = yyv_TpDescr; 

test_and_handle_tag(yy_2_1, yy_2_2, (&yy_2_3)); 

yyv_Tp = yy_2_3; 

yy_0_3 = yyv_Tp; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_18_1:  ; } 

{ 



 yy yyb;



 yy yyv_Qualifier;



 yy yy_0_1;



 yy yyv_TpDescr;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1_1_1_1_1;



 yy yy_1_1_1_1_1_2;



 yy yy_1_1_1_2_1_1;



 yy yy_1_1_1_2_1_2;



 yy yy_1_1_2_1;



 yy yy_1_1_2_2;



 yy yyv_Tp;



 yy yy_1_1_2_3;



 yy yy_1_2_1_1;



 yy yy_1_2_1_2;



 yy yy_1_2_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Qualifier = yy_0_1; 

yyv_TpDescr = yy_0_2; 

{ 



 yy yysb = yyb;

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

{ 



 yy yysb = yyb;

yy_1_1_1_1_1_1 = yyv_Qualifier; 

yy_1_1_1_1_1_2 = yy_1_1_1_1_1_1; 

if (yy_1_1_1_1_1_2[0] != 3){
goto yyfl_18_2_1_1_1_1; }

goto yysl_18_2_1_1_1; 

yyfl_18_2_1_1_1_1:  ; 

yy_1_1_1_2_1_1 = yyv_Qualifier; 

yy_1_1_1_2_1_2 = yy_1_1_1_2_1_1; 

if (yy_1_1_1_2_1_2[0] != 2){
goto yyfl_18_2_1_1_1_2; }

goto yysl_18_2_1_1_1; 

yyfl_18_2_1_1_1_2:  ; 

goto yyfl_18_2_1_1; 

yysl_18_2_1_1_1:  ; 

yyb = yysb; } 

yy_1_1_2_1 = yyb + 0; 

yy_1_1_2_1[0] = 4; 

yy_1_1_2_2 = yyv_TpDescr; 

if ((!test_and_handle_incomplete_tagged_type(yy_1_1_2_1, yy_1_1_2_2, (&yy_1_1_2_3)))){
goto yyfl_18_2_1_1; }

yyv_Tp = yy_1_1_2_3; 

goto yysl_18_2_1; 

yyfl_18_2_1_1:  ; 

yy_1_2_1_1 = yyv_Qualifier; 

yy_1_2_1_2 = yyv_TpDescr; 

if ((!test_and_handle_incomplete_tagged_type(yy_1_2_1_1, yy_1_2_1_2, (&yy_1_2_1_3)))){
goto yyfl_18_2_1_2; }

yyv_Tp = yy_1_2_1_3; 

goto yysl_18_2_1; 

yyfl_18_2_1_2:  ; 

goto yyfl_18_2; 

yysl_18_2_1:  ; 

yyb = yysb; } 

yy_0_3 = yyv_Tp; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_18_2:  ; } 

{ 



 yy yyb;



 yy yyv_Qualifier;



 yy yy_0_1;



 yy yyv_TpDescr;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1_1_1_1_1;



 yy yy_1_1_1_1_1_2;



 yy yy_1_1_1_2_1_1;



 yy yy_1_1_1_2_1_2;



 yy yy_1_1_2_1;



 yy yy_1_1_2_2;



 yy yy_1_2_1_1;



 yy yy_1_2_1_2;



 yy yy_2_1;



 yy yyv_Tp;



 yy yy_2_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Qualifier = yy_0_1; 

yyv_TpDescr = yy_0_2; 

{ 



 yy yysb = yyb;

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

{ 



 yy yysb = yyb;

yy_1_1_1_1_1_1 = yyv_Qualifier; 

yy_1_1_1_1_1_2 = yy_1_1_1_1_1_1; 

if (yy_1_1_1_1_1_2[0] != 3){
goto yyfl_18_3_1_1_1_1; }

goto yysl_18_3_1_1_1; 

yyfl_18_3_1_1_1_1:  ; 

yy_1_1_1_2_1_1 = yyv_Qualifier; 

yy_1_1_1_2_1_2 = yy_1_1_1_2_1_1; 

if (yy_1_1_1_2_1_2[0] != 2){
goto yyfl_18_3_1_1_1_2; }

goto yysl_18_3_1_1_1; 

yyfl_18_3_1_1_1_2:  ; 

goto yyfl_18_3_1_1; 

yysl_18_3_1_1_1:  ; 

yyb = yysb; } 

yy_1_1_2_1 = yyb + 0; 

yy_1_1_2_1[0] = 4; 

yy_1_1_2_2 = yyv_TpDescr; 

if ((!test_not_simple_type(yy_1_1_2_1, yy_1_1_2_2))){
goto yyfl_18_3_1_1; }

goto yysl_18_3_1; 

yyfl_18_3_1_1:  ; 

yy_1_2_1_1 = yyv_Qualifier; 

yy_1_2_1_2 = yyv_TpDescr; 

if ((!test_not_simple_type(yy_1_2_1_1, yy_1_2_1_2))){
goto yyfl_18_3_1_2; }

goto yysl_18_3_1; 

yyfl_18_3_1_2:  ; 

goto yyfl_18_3; 

yysl_18_3_1:  ; 

yyb = yysb; } 

yy_2_1 = yyv_TpDescr; 

make_type_and_size(yy_2_1, (&yy_2_2)); 

yyv_Tp = yy_2_2; 

yy_0_3 = yyv_Tp; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_18_3:  ; } 

{ 



 yy yyb;



 yy yyv_Qualifier;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_1_1;



 yy yy_1_1_2;



 yy yy_1_1_3;



 yy yyv_Tp1;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_1_1;



 yy yy_2_1_2;



 yy yyv_Tp;



 yy yy_2_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Qualifier = yy_0_1; 

if (yy_0_2[0] != 1){
goto yyfl_18_4; }

yyb = yyh; 

yyh += 10; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1_1 = yyb + 4; 

yy_1_1_1[0] = 2; 

yy_1_1_2 = yyb + 5; 

yy_1_1_2[0] = 1; 

yy_1_1_3 = yyb + 6; 

yy_1_1_3[0] = 6; 

yy_1_1 = yyb + 0; 

yy_1_1[0] = 13; 

yy_1_1[1] = (((long )yy_1_1_1)); 

yy_1_1[2] = (((long )yy_1_1_2)); 

yy_1_1[3] = (((long )yy_1_1_3)); 

make_type_and_size(yy_1_1, (&yy_1_2)); 

yyv_Tp1 = yy_1_2; 

yy_2_1_1 = yyv_Qualifier; 

yy_2_1_2 = yyv_Tp1; 

yy_2_1 = yyb + 7; 

yy_2_1[0] = 12; 

yy_2_1[1] = (((long )yy_2_1_1)); 

yy_2_1[2] = (((long )yy_2_1_2)); 

make_type_and_size(yy_2_1, (&yy_2_2)); 

yyv_Tp = yy_2_2; 

yy_0_3 = yyv_Tp; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_18_4:  ; } 

{ 



 yy yyb;



 yy yyv_Qualifier;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_Sign0;



 yy yy_0_2_1;



 yy yyv_Size0;



 yy yy_0_2_2;



 yy yyv_Mode0;



 yy yy_0_2_3;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yy_1_3;



 yy yyv_Sign;



 yy yy_1_4;



 yy yyv_Size;



 yy yy_1_5;



 yy yyv_Mode;



 yy yy_1_6;



 yy yy_2_1;



 yy yy_2_1_1;



 yy yy_2_1_2;



 yy yy_2_1_3;



 yy yyv_Tp1;



 yy yy_2_2;



 yy yy_3_1;



 yy yy_3_1_1;



 yy yy_3_1_2;



 yy yyv_Tp;



 yy yy_3_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Qualifier = yy_0_1; 

if (yy_0_2[0] != 13){
goto yyfl_18_5; }

yy_0_2_1 = ((( yy )yy_0_2[1])); 

yy_0_2_2 = ((( yy )yy_0_2[2])); 

yy_0_2_3 = ((( yy )yy_0_2[3])); 

yyv_Sign0 = yy_0_2_1; 

yyv_Size0 = yy_0_2_2; 

yyv_Mode0 = yy_0_2_3; 

yyb = yyh; 

yyh += 7; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Sign0; 

yy_1_2 = yyv_Size0; 

yy_1_3 = yyv_Mode0; 

test_valid_combination_and_normalize(yy_1_1, yy_1_2, yy_1_3, (&yy_1_4), (&yy_1_5), (&yy_1_6)); 

yyv_Sign = yy_1_4; 

yyv_Size = yy_1_5; 

yyv_Mode = yy_1_6; 

yy_2_1_1 = yyv_Sign; 

yy_2_1_2 = yyv_Size; 

yy_2_1_3 = yyv_Mode; 

yy_2_1 = yyb + 0; 

yy_2_1[0] = 13; 

yy_2_1[1] = (((long )yy_2_1_1)); 

yy_2_1[2] = (((long )yy_2_1_2)); 

yy_2_1[3] = (((long )yy_2_1_3)); 

make_type_and_size(yy_2_1, (&yy_2_2)); 

yyv_Tp1 = yy_2_2; 

yy_3_1_1 = yyv_Qualifier; 

yy_3_1_2 = yyv_Tp1; 

yy_3_1 = yyb + 4; 

yy_3_1[0] = 12; 

yy_3_1[1] = (((long )yy_3_1_1)); 

yy_3_1[2] = (((long )yy_3_1_2)); 

make_type_and_size(yy_3_1, (&yy_3_2)); 

yyv_Tp = yy_3_2; 

yy_0_3 = yyv_Tp; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_18_5:  ; } 

{ 



 yy yyb;



 yy yyv_Qualifier;



 yy yy_0_1;



 yy yyv_Descr;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yyv_Key;



 yy yy_2_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Qualifier = yy_0_1; 

yyv_Descr = yy_0_2; 

yy_1_1 = ((( yy )"illegal type specifier combination")); 

semantic_error(yy_1_1); 

make_tp((&yy_2_1)); 

yyv_Key = yy_2_1; 

yy_0_3 = yyv_Key; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_18_6:  ; } 

yyErr(2, 259); 

}

return (int )retValue_acc;


}
 

compute_base_type_and_process_init_declarator_list(yyin_1,yyin_2,yyin_3,yyin_4) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy yyin_4;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_StorageClass;



 yy yy_0_1;



 yy yyv_Qualifier;



 yy yy_0_2;



 yy yyv_TpDescr;



 yy yy_0_3;



 yy yyv_L;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;



 yy yy_1_3;



 yy yy_1_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_StorageClass = yy_0_1; 

yyv_Qualifier = yy_0_2; 

yyv_TpDescr = yy_0_3; 

yyv_L = yy_0_4; 

yy_1_1 = yyv_StorageClass; 

yy_1_2 = yyv_Qualifier; 

yy_1_3 = yyv_TpDescr; 

yy_1_4 = yyv_L; 

if ((!test_and_handle_vacous_tagged_type(yy_1_1, yy_1_2, yy_1_3, yy_1_4))){
goto yyfl_19_1; }


return (int )retValue_acc;
 

yyfl_19_1:  ; } 

{ 



 yy yyb;



 yy yyv_StorageClass;



 yy yy_0_1;



 yy yyv_Qualifier;



 yy yy_0_2;



 yy yyv_TpDescr;



 yy yy_0_3;



 yy yyv_L;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Type;



 yy yy_1_3;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_StorageClass = yy_0_1; 

yyv_Qualifier = yy_0_2; 

yyv_TpDescr = yy_0_3; 

yyv_L = yy_0_4; 

yy_1_1 = yyv_Qualifier; 

yy_1_2 = yyv_TpDescr; 

compute_base_type(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Type = yy_1_3; 

yy_2_1 = yyv_L; 

yy_2_2 = yyv_Type; 

yy_2_3 = yyv_StorageClass; 

process_init_declarator_list(yy_2_1, yy_2_2, yy_2_3); 


return (int )retValue_acc;
 

yyfl_19_2:  ; } 

yyErr(2, 318); 

}

return (int )retValue_acc;


}
 

process_declarator(yyin_1,yyin_2,yyout_1,yyout_2) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1; 

 yy *yyout_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_P;



 yy yy_0_1_1;



 yy yyv_D;



 yy yy_0_1_2;



 yy yyv_Type0;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_RawType;



 yy yy_1_3;



 yy yy_2_1;



 yy yy_2_2;



 yy yyv_Name;



 yy yy_2_3;



 yy yyv_Type;



 yy yy_2_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 29){
goto yyfl_20_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_P = yy_0_1_1; 

yyv_D = yy_0_1_2; 

yyv_Type0 = yy_0_2; 

yy_1_1 = yyv_P; 

yy_1_2 = yyv_Type0; 

process_pointer(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_RawType = yy_1_3; 

yy_2_1 = yyv_D; 

yy_2_2 = yyv_RawType; 

process_direct_declarator(yy_2_1, yy_2_2, (&yy_2_3), (&yy_2_4)); 

yyv_Name = yy_2_3; 

yyv_Type = yy_2_4; 

yy_0_3 = yyv_Name; 

yy_0_4 = yyv_Type; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_20_1:  ; } 

yyErr(2, 338); 

}

return (int )retValue_acc;


}
 

process_init_declarator_list(yyin_1,yyin_2,yyin_3) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Rest;



 yy yy_0_1_1;



 yy yyv_Last;



 yy yy_0_1_2;



 yy yyv_Type0;



 yy yy_0_2;



 yy yyv_Class;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yy_1_3;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 18){
goto yyfl_21_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_Rest = yy_0_1_1; 

yyv_Last = yy_0_1_2; 

yyv_Type0 = yy_0_2; 

yyv_Class = yy_0_3; 

yy_1_1 = yyv_Rest; 

yy_1_2 = yyv_Type0; 

yy_1_3 = yyv_Class; 

process_init_declarator_list(yy_1_1, yy_1_2, yy_1_3); 

yy_2_1 = yyv_Last; 

yy_2_2 = yyv_Type0; 

yy_2_3 = yyv_Class; 

process_init_declarator(yy_2_1, yy_2_2, yy_2_3); 


return (int )retValue_acc;
 

yyfl_21_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Type0;



 yy yy_0_2;



 yy yyv_Class;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 19){
goto yyfl_21_2; }

yyv_Type0 = yy_0_2; 

yyv_Class = yy_0_3; 


return (int )retValue_acc;
 

yyfl_21_2:  ; } 

yyErr(2, 348); 

}

return (int )retValue_acc;


}
 

process_declaration_specifier(yyin_1,yyin_2,yyin_3,yyin_4,yyout_1,yyout_2,yyout_3) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy yyin_4; 

 yy *yyout_1; 

 yy *yyout_2; 

 yy *yyout_3;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_C;



 yy yy_0_1_1;



 yy yyv_StorageClass0;



 yy yy_0_2;



 yy yyv_Qual;



 yy yy_0_3;



 yy yyv_Tp;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_0_7;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_StorageClass;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 39){
goto yyfl_22_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_C = yy_0_1_1; 

yyv_StorageClass0 = yy_0_2; 

yyv_Qual = yy_0_3; 

yyv_Tp = yy_0_4; 

yy_1_1 = yyv_C; 

yy_1_2 = yyv_StorageClass0; 

update_storage_class(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_StorageClass = yy_1_3; 

yy_0_5 = yyv_StorageClass; 

yy_0_6 = yyv_Qual; 

yy_0_7 = yyv_Tp; 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 

(*yyout_3) = yy_0_7; 


return (int )retValue_acc;
 

yyfl_22_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Q;



 yy yy_0_1_1;



 yy yyv_StClass;



 yy yy_0_2;



 yy yyv_Qual0;



 yy yy_0_3;



 yy yyv_Tp;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_0_7;



 yy yy_1_1;



 yy yyv_Qual1;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_2;



 yy yyv_Qual;



 yy yy_2_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 87){
goto yyfl_22_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_Q = yy_0_1_1; 

yyv_StClass = yy_0_2; 

yyv_Qual0 = yy_0_3; 

yyv_Tp = yy_0_4; 

yy_1_1 = yyv_Q; 

make_qual(yy_1_1, (&yy_1_2)); 

yyv_Qual1 = yy_1_2; 

yy_2_1 = yyv_Qual1; 

yy_2_2 = yyv_Qual0; 

update_qualifier(yy_2_1, yy_2_2, (&yy_2_3)); 

yyv_Qual = yy_2_3; 

yy_0_5 = yyv_StClass; 

yy_0_6 = yyv_Qual; 

yy_0_7 = yyv_Tp; 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 

(*yyout_3) = yy_0_7; 


return (int )retValue_acc;
 

yyfl_22_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_Id;



 yy yy_0_1_1_1;



 yy yyv_C;



 yy yy_0_2;



 yy yyv_Q0;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_0_7;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Tp;



 yy yy_1_2_1;



 yy yy_2;



 yy yy_2_1;



 yy yy_3_1;



 yy yyv_Descr;



 yy yy_3_2;



 yy yy_4_1;



 yy yy_4_2;



 yy yyv_Q;



 yy yy_4_3;



 yy yyv_Descr2;



 yy yy_4_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 67){
goto yyfl_22_3; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 86){
goto yyfl_22_3; }

yy_0_1_1_1 = ((( yy )yy_0_1_1[1])); 

yyv_Id = yy_0_1_1_1; 

yyv_C = yy_0_2; 

yyv_Q0 = yy_0_3; 

if (yy_0_4[0] != 1){
goto yyfl_22_3; }

yyb = yyh; 

yyh += 2; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Id; 

ApplyIdent(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 5){
goto yyfl_22_3; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yyv_Tp = yy_1_2_1; 

yy_2_1 = yyv_Id; 

yy_2 = yyb + 0; 

yy_2[0] = 2; 

yy_2[1] = (((long )yy_2_1)); 

yyv_Tp[3] = ((long )yy_2); 

yy_3_1 = yyv_Tp; 

get_tp_descr(yy_3_1, (&yy_3_2)); 

yyv_Descr = yy_3_2; 

yy_4_1 = yyv_Descr; 

yy_4_2 = yyv_Q0; 

split_qualified_type(yy_4_1, yy_4_2, (&yy_4_3), (&yy_4_4)); 

yyv_Q = yy_4_3; 

yyv_Descr2 = yy_4_4; 

yy_0_5 = yyv_C; 

yy_0_6 = yyv_Q; 

yy_0_7 = yyv_Descr2; 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 

(*yyout_3) = yy_0_7; 


return (int )retValue_acc;
 

yyfl_22_3:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_T;



 yy yy_0_1_1;



 yy yyv_StClass;



 yy yy_0_2;



 yy yyv_Qual;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_0_7;



 yy yy_1_1;



 yy yyv_Tp;



 yy yy_1_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 67){
goto yyfl_22_4; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_T = yy_0_1_1; 

yyv_StClass = yy_0_2; 

yyv_Qual = yy_0_3; 

if (yy_0_4[0] != 1){
goto yyfl_22_4; }

yy_1_1 = yyv_T; 

make_triple_or_complex(yy_1_1, (&yy_1_2)); 

yyv_Tp = yy_1_2; 

yy_0_5 = yyv_StClass; 

yy_0_6 = yyv_Qual; 

yy_0_7 = yyv_Tp; 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 

(*yyout_3) = yy_0_7; 


return (int )retValue_acc;
 

yyfl_22_4:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_StClass;



 yy yy_0_2;



 yy yyv_Qual;



 yy yy_0_3;



 yy yy_0_4;



 yy yyv_Sign;



 yy yy_0_4_1;



 yy yyv_Size;



 yy yy_0_4_2;



 yy yyv_Mode0;



 yy yy_0_4_3;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_0_7;



 yy yy_0_7_1;



 yy yy_0_7_2;



 yy yy_0_7_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Mode;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 67){
goto yyfl_22_5; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 68){
goto yyfl_22_5; }

yyv_StClass = yy_0_2; 

yyv_Qual = yy_0_3; 

if (yy_0_4[0] != 13){
goto yyfl_22_5; }

yy_0_4_1 = ((( yy )yy_0_4[1])); 

yy_0_4_2 = ((( yy )yy_0_4[2])); 

yy_0_4_3 = ((( yy )yy_0_4[3])); 

yyv_Sign = yy_0_4_1; 

yyv_Size = yy_0_4_2; 

yyv_Mode0 = yy_0_4_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 2; 

yy_1_2 = yyv_Mode0; 

update_mode(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Mode = yy_1_3; 

yy_0_5 = yyv_StClass; 

yy_0_6 = yyv_Qual; 

yy_0_7_1 = yyv_Sign; 

yy_0_7_2 = yyv_Size; 

yy_0_7_3 = yyv_Mode; 

yy_0_7 = yyb + 0; 

yy_0_7[0] = 13; 

yy_0_7[1] = (((long )yy_0_7_1)); 

yy_0_7[2] = (((long )yy_0_7_2)); 

yy_0_7[3] = (((long )yy_0_7_3)); 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 

(*yyout_3) = yy_0_7; 


return (int )retValue_acc;
 

yyfl_22_5:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_StClass;



 yy yy_0_2;



 yy yyv_Qual;



 yy yy_0_3;



 yy yy_0_4;



 yy yyv_Sign;



 yy yy_0_4_1;



 yy yyv_Size;



 yy yy_0_4_2;



 yy yyv_Mode0;



 yy yy_0_4_3;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_0_7;



 yy yy_0_7_1;



 yy yy_0_7_2;



 yy yy_0_7_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Mode;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 67){
goto yyfl_22_6; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 69){
goto yyfl_22_6; }

yyv_StClass = yy_0_2; 

yyv_Qual = yy_0_3; 

if (yy_0_4[0] != 13){
goto yyfl_22_6; }

yy_0_4_1 = ((( yy )yy_0_4[1])); 

yy_0_4_2 = ((( yy )yy_0_4[2])); 

yy_0_4_3 = ((( yy )yy_0_4[3])); 

yyv_Sign = yy_0_4_1; 

yyv_Size = yy_0_4_2; 

yyv_Mode0 = yy_0_4_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 3; 

yy_1_2 = yyv_Mode0; 

update_mode(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Mode = yy_1_3; 

yy_0_5 = yyv_StClass; 

yy_0_6 = yyv_Qual; 

yy_0_7_1 = yyv_Sign; 

yy_0_7_2 = yyv_Size; 

yy_0_7_3 = yyv_Mode; 

yy_0_7 = yyb + 0; 

yy_0_7[0] = 13; 

yy_0_7[1] = (((long )yy_0_7_1)); 

yy_0_7[2] = (((long )yy_0_7_2)); 

yy_0_7[3] = (((long )yy_0_7_3)); 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 

(*yyout_3) = yy_0_7; 


return (int )retValue_acc;
 

yyfl_22_6:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_StClass;



 yy yy_0_2;



 yy yyv_Qual;



 yy yy_0_3;



 yy yy_0_4;



 yy yyv_Sign;



 yy yy_0_4_1;



 yy yyv_Size;



 yy yy_0_4_2;



 yy yyv_Mode0;



 yy yy_0_4_3;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_0_7;



 yy yy_0_7_1;



 yy yy_0_7_2;



 yy yy_0_7_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Mode;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 67){
goto yyfl_22_7; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 75){
goto yyfl_22_7; }

yyv_StClass = yy_0_2; 

yyv_Qual = yy_0_3; 

if (yy_0_4[0] != 13){
goto yyfl_22_7; }

yy_0_4_1 = ((( yy )yy_0_4[1])); 

yy_0_4_2 = ((( yy )yy_0_4[2])); 

yy_0_4_3 = ((( yy )yy_0_4[3])); 

yyv_Sign = yy_0_4_1; 

yyv_Size = yy_0_4_2; 

yyv_Mode0 = yy_0_4_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 4; 

yy_1_2 = yyv_Mode0; 

update_mode(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Mode = yy_1_3; 

yy_0_5 = yyv_StClass; 

yy_0_6 = yyv_Qual; 

yy_0_7_1 = yyv_Sign; 

yy_0_7_2 = yyv_Size; 

yy_0_7_3 = yyv_Mode; 

yy_0_7 = yyb + 0; 

yy_0_7[0] = 13; 

yy_0_7[1] = (((long )yy_0_7_1)); 

yy_0_7[2] = (((long )yy_0_7_2)); 

yy_0_7[3] = (((long )yy_0_7_3)); 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 

(*yyout_3) = yy_0_7; 


return (int )retValue_acc;
 

yyfl_22_7:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_StClass;



 yy yy_0_2;



 yy yyv_Qual;



 yy yy_0_3;



 yy yy_0_4;



 yy yyv_Sign;



 yy yy_0_4_1;



 yy yyv_Size;



 yy yy_0_4_2;



 yy yyv_Mode0;



 yy yy_0_4_3;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_0_7;



 yy yy_0_7_1;



 yy yy_0_7_2;



 yy yy_0_7_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Mode;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 67){
goto yyfl_22_8; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 76){
goto yyfl_22_8; }

yyv_StClass = yy_0_2; 

yyv_Qual = yy_0_3; 

if (yy_0_4[0] != 13){
goto yyfl_22_8; }

yy_0_4_1 = ((( yy )yy_0_4[1])); 

yy_0_4_2 = ((( yy )yy_0_4[2])); 

yy_0_4_3 = ((( yy )yy_0_4[3])); 

yyv_Sign = yy_0_4_1; 

yyv_Size = yy_0_4_2; 

yyv_Mode0 = yy_0_4_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 5; 

yy_1_2 = yyv_Mode0; 

update_mode(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Mode = yy_1_3; 

yy_0_5 = yyv_StClass; 

yy_0_6 = yyv_Qual; 

yy_0_7_1 = yyv_Sign; 

yy_0_7_2 = yyv_Size; 

yy_0_7_3 = yyv_Mode; 

yy_0_7 = yyb + 0; 

yy_0_7[0] = 13; 

yy_0_7[1] = (((long )yy_0_7_1)); 

yy_0_7[2] = (((long )yy_0_7_2)); 

yy_0_7[3] = (((long )yy_0_7_3)); 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 

(*yyout_3) = yy_0_7; 


return (int )retValue_acc;
 

yyfl_22_8:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_StClass;



 yy yy_0_2;



 yy yyv_Qual;



 yy yy_0_3;



 yy yy_0_4;



 yy yyv_Sign;



 yy yy_0_4_1;



 yy yyv_Size;



 yy yy_0_4_2;



 yy yyv_Mode0;



 yy yy_0_4_3;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_0_7;



 yy yy_0_7_1;



 yy yy_0_7_2;



 yy yy_0_7_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Mode;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 67){
goto yyfl_22_9; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 71){
goto yyfl_22_9; }

yyv_StClass = yy_0_2; 

yyv_Qual = yy_0_3; 

if (yy_0_4[0] != 13){
goto yyfl_22_9; }

yy_0_4_1 = ((( yy )yy_0_4[1])); 

yy_0_4_2 = ((( yy )yy_0_4[2])); 

yy_0_4_3 = ((( yy )yy_0_4[3])); 

yyv_Sign = yy_0_4_1; 

yyv_Size = yy_0_4_2; 

yyv_Mode0 = yy_0_4_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 6; 

yy_1_2 = yyv_Mode0; 

update_mode(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Mode = yy_1_3; 

yy_0_5 = yyv_StClass; 

yy_0_6 = yyv_Qual; 

yy_0_7_1 = yyv_Sign; 

yy_0_7_2 = yyv_Size; 

yy_0_7_3 = yyv_Mode; 

yy_0_7 = yyb + 0; 

yy_0_7[0] = 13; 

yy_0_7[1] = (((long )yy_0_7_1)); 

yy_0_7[2] = (((long )yy_0_7_2)); 

yy_0_7[3] = (((long )yy_0_7_3)); 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 

(*yyout_3) = yy_0_7; 


return (int )retValue_acc;
 

yyfl_22_9:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_StClass;



 yy yy_0_2;



 yy yyv_Qual;



 yy yy_0_3;



 yy yy_0_4;



 yy yyv_Sign0;



 yy yy_0_4_1;



 yy yyv_Size;



 yy yy_0_4_2;



 yy yyv_Mode;



 yy yy_0_4_3;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_0_7;



 yy yy_0_7_1;



 yy yy_0_7_2;



 yy yy_0_7_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Sign;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 67){
goto yyfl_22_10; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 77){
goto yyfl_22_10; }

yyv_StClass = yy_0_2; 

yyv_Qual = yy_0_3; 

if (yy_0_4[0] != 13){
goto yyfl_22_10; }

yy_0_4_1 = ((( yy )yy_0_4[1])); 

yy_0_4_2 = ((( yy )yy_0_4[2])); 

yy_0_4_3 = ((( yy )yy_0_4[3])); 

yyv_Sign0 = yy_0_4_1; 

yyv_Size = yy_0_4_2; 

yyv_Mode = yy_0_4_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 2; 

yy_1_2 = yyv_Sign0; 

update_sign(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Sign = yy_1_3; 

yy_0_5 = yyv_StClass; 

yy_0_6 = yyv_Qual; 

yy_0_7_1 = yyv_Sign; 

yy_0_7_2 = yyv_Size; 

yy_0_7_3 = yyv_Mode; 

yy_0_7 = yyb + 0; 

yy_0_7[0] = 13; 

yy_0_7[1] = (((long )yy_0_7_1)); 

yy_0_7[2] = (((long )yy_0_7_2)); 

yy_0_7[3] = (((long )yy_0_7_3)); 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 

(*yyout_3) = yy_0_7; 


return (int )retValue_acc;
 

yyfl_22_10:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_StClass;



 yy yy_0_2;



 yy yyv_Qual;



 yy yy_0_3;



 yy yy_0_4;



 yy yyv_Sign0;



 yy yy_0_4_1;



 yy yyv_Size;



 yy yy_0_4_2;



 yy yyv_Mode;



 yy yy_0_4_3;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_0_7;



 yy yy_0_7_1;



 yy yy_0_7_2;



 yy yy_0_7_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Sign;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 67){
goto yyfl_22_11; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 79){
goto yyfl_22_11; }

yyv_StClass = yy_0_2; 

yyv_Qual = yy_0_3; 

if (yy_0_4[0] != 13){
goto yyfl_22_11; }

yy_0_4_1 = ((( yy )yy_0_4[1])); 

yy_0_4_2 = ((( yy )yy_0_4[2])); 

yy_0_4_3 = ((( yy )yy_0_4[3])); 

yyv_Sign0 = yy_0_4_1; 

yyv_Size = yy_0_4_2; 

yyv_Mode = yy_0_4_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 3; 

yy_1_2 = yyv_Sign0; 

update_sign(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Sign = yy_1_3; 

yy_0_5 = yyv_StClass; 

yy_0_6 = yyv_Qual; 

yy_0_7_1 = yyv_Sign; 

yy_0_7_2 = yyv_Size; 

yy_0_7_3 = yyv_Mode; 

yy_0_7 = yyb + 0; 

yy_0_7[0] = 13; 

yy_0_7[1] = (((long )yy_0_7_1)); 

yy_0_7[2] = (((long )yy_0_7_2)); 

yy_0_7[3] = (((long )yy_0_7_3)); 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 

(*yyout_3) = yy_0_7; 


return (int )retValue_acc;
 

yyfl_22_11:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_StClass;



 yy yy_0_2;



 yy yyv_Qual;



 yy yy_0_3;



 yy yy_0_4;



 yy yyv_Sign;



 yy yy_0_4_1;



 yy yyv_Size0;



 yy yy_0_4_2;



 yy yyv_Mode;



 yy yy_0_4_3;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_0_7;



 yy yy_0_7_1;



 yy yy_0_7_2;



 yy yy_0_7_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Size;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 67){
goto yyfl_22_12; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 70){
goto yyfl_22_12; }

yyv_StClass = yy_0_2; 

yyv_Qual = yy_0_3; 

if (yy_0_4[0] != 13){
goto yyfl_22_12; }

yy_0_4_1 = ((( yy )yy_0_4[1])); 

yy_0_4_2 = ((( yy )yy_0_4[2])); 

yy_0_4_3 = ((( yy )yy_0_4[3])); 

yyv_Sign = yy_0_4_1; 

yyv_Size0 = yy_0_4_2; 

yyv_Mode = yy_0_4_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 2; 

yy_1_2 = yyv_Size0; 

update_size(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Size = yy_1_3; 

yy_0_5 = yyv_StClass; 

yy_0_6 = yyv_Qual; 

yy_0_7_1 = yyv_Sign; 

yy_0_7_2 = yyv_Size; 

yy_0_7_3 = yyv_Mode; 

yy_0_7 = yyb + 0; 

yy_0_7[0] = 13; 

yy_0_7[1] = (((long )yy_0_7_1)); 

yy_0_7[2] = (((long )yy_0_7_2)); 

yy_0_7[3] = (((long )yy_0_7_3)); 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 

(*yyout_3) = yy_0_7; 


return (int )retValue_acc;
 

yyfl_22_12:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_StClass;



 yy yy_0_2;



 yy yyv_Qual;



 yy yy_0_3;



 yy yy_0_4;



 yy yyv_Sign;



 yy yy_0_4_1;



 yy yyv_Size0;



 yy yy_0_4_2;



 yy yyv_Mode;



 yy yy_0_4_3;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_0_7;



 yy yy_0_7_1;



 yy yy_0_7_2;



 yy yy_0_7_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Size;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 67){
goto yyfl_22_13; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 74){
goto yyfl_22_13; }

yyv_StClass = yy_0_2; 

yyv_Qual = yy_0_3; 

if (yy_0_4[0] != 13){
goto yyfl_22_13; }

yy_0_4_1 = ((( yy )yy_0_4[1])); 

yy_0_4_2 = ((( yy )yy_0_4[2])); 

yy_0_4_3 = ((( yy )yy_0_4[3])); 

yyv_Sign = yy_0_4_1; 

yyv_Size0 = yy_0_4_2; 

yyv_Mode = yy_0_4_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 3; 

yy_1_2 = yyv_Size0; 

update_size(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Size = yy_1_3; 

yy_0_5 = yyv_StClass; 

yy_0_6 = yyv_Qual; 

yy_0_7_1 = yyv_Sign; 

yy_0_7_2 = yyv_Size; 

yy_0_7_3 = yyv_Mode; 

yy_0_7 = yyb + 0; 

yy_0_7[0] = 13; 

yy_0_7[1] = (((long )yy_0_7_1)); 

yy_0_7[2] = (((long )yy_0_7_2)); 

yy_0_7[3] = (((long )yy_0_7_3)); 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 

(*yyout_3) = yy_0_7; 


return (int )retValue_acc;
 

yyfl_22_13:  ; } 

{ 



 yy yyb;



 yy yyv_D;



 yy yy_0_1;



 yy yyv_StClass;



 yy yy_0_2;



 yy yyv_Qual;



 yy yy_0_3;



 yy yyv_TpDescr;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_0_7;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_D = yy_0_1; 

yyv_StClass = yy_0_2; 

yyv_Qual = yy_0_3; 

yyv_TpDescr = yy_0_4; 

yy_1_1 = ((( yy )"illegal type specifier combination")); 

semantic_error(yy_1_1); 

yy_0_5 = yyv_StClass; 

yy_0_6 = yyv_Qual; 

yy_0_7 = yyv_TpDescr; 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 

(*yyout_3) = yy_0_7; 


return (int )retValue_acc;
 

yyfl_22_14:  ; } 

yyErr(2, 360); 

}

return (int )retValue_acc;


}
 

process_specifier_qualifier(yyin_1,yyin_2,yyin_3,yyout_1,yyout_2) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy *yyout_1; 

 yy *yyout_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Q;



 yy yy_0_1_1;



 yy yyv_Qual0;



 yy yy_0_2;



 yy yyv_Descr;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_1_1;



 yy yyv_Qual1;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_2;



 yy yyv_Qual;



 yy yy_2_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 87){
goto yyfl_23_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_Q = yy_0_1_1; 

yyv_Qual0 = yy_0_2; 

yyv_Descr = yy_0_3; 

yy_1_1 = yyv_Q; 

make_qual(yy_1_1, (&yy_1_2)); 

yyv_Qual1 = yy_1_2; 

yy_2_1 = yyv_Qual1; 

yy_2_2 = yyv_Qual0; 

update_qualifier(yy_2_1, yy_2_2, (&yy_2_3)); 

yyv_Qual = yy_2_3; 

yy_0_4 = yyv_Qual; 

yy_0_5 = yyv_Descr; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_23_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_Id;



 yy yy_0_1_1_1;



 yy yyv_Q0;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Tp;



 yy yy_1_2_1;



 yy yy_2;



 yy yy_2_1;



 yy yy_3_1;



 yy yyv_Descr;



 yy yy_3_2;



 yy yy_4_1;



 yy yy_4_2;



 yy yyv_Q;



 yy yy_4_3;



 yy yyv_Descr2;



 yy yy_4_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 67){
goto yyfl_23_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 86){
goto yyfl_23_2; }

yy_0_1_1_1 = ((( yy )yy_0_1_1[1])); 

yyv_Id = yy_0_1_1_1; 

yyv_Q0 = yy_0_2; 

if (yy_0_3[0] != 1){
goto yyfl_23_2; }

yyb = yyh; 

yyh += 2; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Id; 

ApplyIdent(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 5){
goto yyfl_23_2; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yyv_Tp = yy_1_2_1; 

yy_2_1 = yyv_Id; 

yy_2 = yyb + 0; 

yy_2[0] = 2; 

yy_2[1] = (((long )yy_2_1)); 

yyv_Tp[3] = ((long )yy_2); 

yy_3_1 = yyv_Tp; 

get_tp_descr(yy_3_1, (&yy_3_2)); 

yyv_Descr = yy_3_2; 

yy_4_1 = yyv_Descr; 

yy_4_2 = yyv_Q0; 

split_qualified_type(yy_4_1, yy_4_2, (&yy_4_3), (&yy_4_4)); 

yyv_Q = yy_4_3; 

yyv_Descr2 = yy_4_4; 

yy_0_4 = yyv_Q; 

yy_0_5 = yyv_Descr2; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_23_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_T;



 yy yy_0_1_1;



 yy yyv_Qual;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_1_1;



 yy yyv_Tp;



 yy yy_1_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 67){
goto yyfl_23_3; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_T = yy_0_1_1; 

yyv_Qual = yy_0_2; 

if (yy_0_3[0] != 1){
goto yyfl_23_3; }

yy_1_1 = yyv_T; 

make_triple_or_complex(yy_1_1, (&yy_1_2)); 

yyv_Tp = yy_1_2; 

yy_0_4 = yyv_Qual; 

yy_0_5 = yyv_Tp; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_23_3:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_Qual;



 yy yy_0_2;



 yy yy_0_3;



 yy yyv_Sign;



 yy yy_0_3_1;



 yy yyv_Size;



 yy yy_0_3_2;



 yy yyv_Mode0;



 yy yy_0_3_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;



 yy yy_0_5_2;



 yy yy_0_5_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Mode;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 67){
goto yyfl_23_4; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 68){
goto yyfl_23_4; }

yyv_Qual = yy_0_2; 

if (yy_0_3[0] != 13){
goto yyfl_23_4; }

yy_0_3_1 = ((( yy )yy_0_3[1])); 

yy_0_3_2 = ((( yy )yy_0_3[2])); 

yy_0_3_3 = ((( yy )yy_0_3[3])); 

yyv_Sign = yy_0_3_1; 

yyv_Size = yy_0_3_2; 

yyv_Mode0 = yy_0_3_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 2; 

yy_1_2 = yyv_Mode0; 

update_mode(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Mode = yy_1_3; 

yy_0_4 = yyv_Qual; 

yy_0_5_1 = yyv_Sign; 

yy_0_5_2 = yyv_Size; 

yy_0_5_3 = yyv_Mode; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 13; 

yy_0_5[1] = (((long )yy_0_5_1)); 

yy_0_5[2] = (((long )yy_0_5_2)); 

yy_0_5[3] = (((long )yy_0_5_3)); 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_23_4:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_Qual;



 yy yy_0_2;



 yy yy_0_3;



 yy yyv_Sign;



 yy yy_0_3_1;



 yy yyv_Size;



 yy yy_0_3_2;



 yy yyv_Mode0;



 yy yy_0_3_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;



 yy yy_0_5_2;



 yy yy_0_5_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Mode;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 67){
goto yyfl_23_5; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 69){
goto yyfl_23_5; }

yyv_Qual = yy_0_2; 

if (yy_0_3[0] != 13){
goto yyfl_23_5; }

yy_0_3_1 = ((( yy )yy_0_3[1])); 

yy_0_3_2 = ((( yy )yy_0_3[2])); 

yy_0_3_3 = ((( yy )yy_0_3[3])); 

yyv_Sign = yy_0_3_1; 

yyv_Size = yy_0_3_2; 

yyv_Mode0 = yy_0_3_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 3; 

yy_1_2 = yyv_Mode0; 

update_mode(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Mode = yy_1_3; 

yy_0_4 = yyv_Qual; 

yy_0_5_1 = yyv_Sign; 

yy_0_5_2 = yyv_Size; 

yy_0_5_3 = yyv_Mode; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 13; 

yy_0_5[1] = (((long )yy_0_5_1)); 

yy_0_5[2] = (((long )yy_0_5_2)); 

yy_0_5[3] = (((long )yy_0_5_3)); 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_23_5:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_Qual;



 yy yy_0_2;



 yy yy_0_3;



 yy yyv_Sign;



 yy yy_0_3_1;



 yy yyv_Size;



 yy yy_0_3_2;



 yy yyv_Mode0;



 yy yy_0_3_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;



 yy yy_0_5_2;



 yy yy_0_5_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Mode;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 67){
goto yyfl_23_6; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 75){
goto yyfl_23_6; }

yyv_Qual = yy_0_2; 

if (yy_0_3[0] != 13){
goto yyfl_23_6; }

yy_0_3_1 = ((( yy )yy_0_3[1])); 

yy_0_3_2 = ((( yy )yy_0_3[2])); 

yy_0_3_3 = ((( yy )yy_0_3[3])); 

yyv_Sign = yy_0_3_1; 

yyv_Size = yy_0_3_2; 

yyv_Mode0 = yy_0_3_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 4; 

yy_1_2 = yyv_Mode0; 

update_mode(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Mode = yy_1_3; 

yy_0_4 = yyv_Qual; 

yy_0_5_1 = yyv_Sign; 

yy_0_5_2 = yyv_Size; 

yy_0_5_3 = yyv_Mode; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 13; 

yy_0_5[1] = (((long )yy_0_5_1)); 

yy_0_5[2] = (((long )yy_0_5_2)); 

yy_0_5[3] = (((long )yy_0_5_3)); 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_23_6:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_Qual;



 yy yy_0_2;



 yy yy_0_3;



 yy yyv_Sign;



 yy yy_0_3_1;



 yy yyv_Size;



 yy yy_0_3_2;



 yy yyv_Mode0;



 yy yy_0_3_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;



 yy yy_0_5_2;



 yy yy_0_5_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Mode;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 67){
goto yyfl_23_7; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 76){
goto yyfl_23_7; }

yyv_Qual = yy_0_2; 

if (yy_0_3[0] != 13){
goto yyfl_23_7; }

yy_0_3_1 = ((( yy )yy_0_3[1])); 

yy_0_3_2 = ((( yy )yy_0_3[2])); 

yy_0_3_3 = ((( yy )yy_0_3[3])); 

yyv_Sign = yy_0_3_1; 

yyv_Size = yy_0_3_2; 

yyv_Mode0 = yy_0_3_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 5; 

yy_1_2 = yyv_Mode0; 

update_mode(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Mode = yy_1_3; 

yy_0_4 = yyv_Qual; 

yy_0_5_1 = yyv_Sign; 

yy_0_5_2 = yyv_Size; 

yy_0_5_3 = yyv_Mode; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 13; 

yy_0_5[1] = (((long )yy_0_5_1)); 

yy_0_5[2] = (((long )yy_0_5_2)); 

yy_0_5[3] = (((long )yy_0_5_3)); 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_23_7:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_Qual;



 yy yy_0_2;



 yy yy_0_3;



 yy yyv_Sign;



 yy yy_0_3_1;



 yy yyv_Size;



 yy yy_0_3_2;



 yy yyv_Mode0;



 yy yy_0_3_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;



 yy yy_0_5_2;



 yy yy_0_5_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Mode;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 67){
goto yyfl_23_8; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 71){
goto yyfl_23_8; }

yyv_Qual = yy_0_2; 

if (yy_0_3[0] != 13){
goto yyfl_23_8; }

yy_0_3_1 = ((( yy )yy_0_3[1])); 

yy_0_3_2 = ((( yy )yy_0_3[2])); 

yy_0_3_3 = ((( yy )yy_0_3[3])); 

yyv_Sign = yy_0_3_1; 

yyv_Size = yy_0_3_2; 

yyv_Mode0 = yy_0_3_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 6; 

yy_1_2 = yyv_Mode0; 

update_mode(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Mode = yy_1_3; 

yy_0_4 = yyv_Qual; 

yy_0_5_1 = yyv_Sign; 

yy_0_5_2 = yyv_Size; 

yy_0_5_3 = yyv_Mode; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 13; 

yy_0_5[1] = (((long )yy_0_5_1)); 

yy_0_5[2] = (((long )yy_0_5_2)); 

yy_0_5[3] = (((long )yy_0_5_3)); 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_23_8:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_Qual;



 yy yy_0_2;



 yy yy_0_3;



 yy yyv_Sign0;



 yy yy_0_3_1;



 yy yyv_Size;



 yy yy_0_3_2;



 yy yyv_Mode;



 yy yy_0_3_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;



 yy yy_0_5_2;



 yy yy_0_5_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Sign;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 67){
goto yyfl_23_9; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 77){
goto yyfl_23_9; }

yyv_Qual = yy_0_2; 

if (yy_0_3[0] != 13){
goto yyfl_23_9; }

yy_0_3_1 = ((( yy )yy_0_3[1])); 

yy_0_3_2 = ((( yy )yy_0_3[2])); 

yy_0_3_3 = ((( yy )yy_0_3[3])); 

yyv_Sign0 = yy_0_3_1; 

yyv_Size = yy_0_3_2; 

yyv_Mode = yy_0_3_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 2; 

yy_1_2 = yyv_Sign0; 

update_sign(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Sign = yy_1_3; 

yy_0_4 = yyv_Qual; 

yy_0_5_1 = yyv_Sign; 

yy_0_5_2 = yyv_Size; 

yy_0_5_3 = yyv_Mode; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 13; 

yy_0_5[1] = (((long )yy_0_5_1)); 

yy_0_5[2] = (((long )yy_0_5_2)); 

yy_0_5[3] = (((long )yy_0_5_3)); 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_23_9:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_Qual;



 yy yy_0_2;



 yy yy_0_3;



 yy yyv_Sign0;



 yy yy_0_3_1;



 yy yyv_Size;



 yy yy_0_3_2;



 yy yyv_Mode;



 yy yy_0_3_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;



 yy yy_0_5_2;



 yy yy_0_5_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Sign;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 67){
goto yyfl_23_10; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 79){
goto yyfl_23_10; }

yyv_Qual = yy_0_2; 

if (yy_0_3[0] != 13){
goto yyfl_23_10; }

yy_0_3_1 = ((( yy )yy_0_3[1])); 

yy_0_3_2 = ((( yy )yy_0_3[2])); 

yy_0_3_3 = ((( yy )yy_0_3[3])); 

yyv_Sign0 = yy_0_3_1; 

yyv_Size = yy_0_3_2; 

yyv_Mode = yy_0_3_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 3; 

yy_1_2 = yyv_Sign0; 

update_sign(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Sign = yy_1_3; 

yy_0_4 = yyv_Qual; 

yy_0_5_1 = yyv_Sign; 

yy_0_5_2 = yyv_Size; 

yy_0_5_3 = yyv_Mode; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 13; 

yy_0_5[1] = (((long )yy_0_5_1)); 

yy_0_5[2] = (((long )yy_0_5_2)); 

yy_0_5[3] = (((long )yy_0_5_3)); 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_23_10:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_Qual;



 yy yy_0_2;



 yy yy_0_3;



 yy yyv_Sign;



 yy yy_0_3_1;



 yy yyv_Size0;



 yy yy_0_3_2;



 yy yyv_Mode;



 yy yy_0_3_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;



 yy yy_0_5_2;



 yy yy_0_5_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Size;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 67){
goto yyfl_23_11; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 70){
goto yyfl_23_11; }

yyv_Qual = yy_0_2; 

if (yy_0_3[0] != 13){
goto yyfl_23_11; }

yy_0_3_1 = ((( yy )yy_0_3[1])); 

yy_0_3_2 = ((( yy )yy_0_3[2])); 

yy_0_3_3 = ((( yy )yy_0_3[3])); 

yyv_Sign = yy_0_3_1; 

yyv_Size0 = yy_0_3_2; 

yyv_Mode = yy_0_3_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 2; 

yy_1_2 = yyv_Size0; 

update_size(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Size = yy_1_3; 

yy_0_4 = yyv_Qual; 

yy_0_5_1 = yyv_Sign; 

yy_0_5_2 = yyv_Size; 

yy_0_5_3 = yyv_Mode; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 13; 

yy_0_5[1] = (((long )yy_0_5_1)); 

yy_0_5[2] = (((long )yy_0_5_2)); 

yy_0_5[3] = (((long )yy_0_5_3)); 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_23_11:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_Qual;



 yy yy_0_2;



 yy yy_0_3;



 yy yyv_Sign;



 yy yy_0_3_1;



 yy yyv_Size0;



 yy yy_0_3_2;



 yy yyv_Mode;



 yy yy_0_3_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;



 yy yy_0_5_2;



 yy yy_0_5_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Size;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 67){
goto yyfl_23_12; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

if (yy_0_1_1[0] != 74){
goto yyfl_23_12; }

yyv_Qual = yy_0_2; 

if (yy_0_3[0] != 13){
goto yyfl_23_12; }

yy_0_3_1 = ((( yy )yy_0_3[1])); 

yy_0_3_2 = ((( yy )yy_0_3[2])); 

yy_0_3_3 = ((( yy )yy_0_3[3])); 

yyv_Sign = yy_0_3_1; 

yyv_Size0 = yy_0_3_2; 

yyv_Mode = yy_0_3_3; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyb + 4; 

yy_1_1[0] = 3; 

yy_1_2 = yyv_Size0; 

update_size(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Size = yy_1_3; 

yy_0_4 = yyv_Qual; 

yy_0_5_1 = yyv_Sign; 

yy_0_5_2 = yyv_Size; 

yy_0_5_3 = yyv_Mode; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 13; 

yy_0_5[1] = (((long )yy_0_5_1)); 

yy_0_5[2] = (((long )yy_0_5_2)); 

yy_0_5[3] = (((long )yy_0_5_3)); 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_23_12:  ; } 

{ 



 yy yyb;



 yy yyv_D;



 yy yy_0_1;



 yy yyv_Qual;



 yy yy_0_2;



 yy yyv_Tpdescr;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yyv_D = yy_0_1; 

yyv_Qual = yy_0_2; 

yyv_Tpdescr = yy_0_3; 

yy_1_1 = ((( yy )"illegal type specifier combination")); 

semantic_error(yy_1_1); 

yy_0_4 = yyv_Qual; 

yy_0_5 = yyv_Tpdescr; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_23_13:  ; } 

yyErr(2, 449); 

}

return (int )retValue_acc;


}
 

process_specifier_qualifier_list(yyin_1,yyout_1,yyout_2) 

 yy yyin_1; 

 yy *yyout_1; 

 yy *yyout_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Spec;



 yy yy_0_1_1;



 yy yyv_List;



 yy yy_0_1_2;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yyv_Qualifier0;



 yy yy_1_2;



 yy yyv_Tpdescr0;



 yy yy_1_3;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yyv_Qualifier;



 yy yy_2_4;



 yy yyv_TpDescr;



 yy yy_2_5;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 130){
goto yyfl_24_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_Spec = yy_0_1_1; 

yyv_List = yy_0_1_2; 

yy_1_1 = yyv_List; 

process_specifier_qualifier_list(yy_1_1, (&yy_1_2), (&yy_1_3)); 

yyv_Qualifier0 = yy_1_2; 

yyv_Tpdescr0 = yy_1_3; 

yy_2_1 = yyv_Spec; 

yy_2_2 = yyv_Qualifier0; 

yy_2_3 = yyv_Tpdescr0; 

process_specifier_qualifier(yy_2_1, yy_2_2, yy_2_3, (&yy_2_4), (&yy_2_5)); 

yyv_Qualifier = yy_2_4; 

yyv_TpDescr = yy_2_5; 

yy_0_2 = yyv_Qualifier; 

yy_0_3 = yyv_TpDescr; 

(*yyout_1) = yy_0_2; 

(*yyout_2) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_24_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 131){
goto yyfl_24_2; }

yyb = yyh; 

yyh += 2; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 4; 

yy_0_3 = yyb + 1; 

yy_0_3[0] = 1; 

(*yyout_1) = yy_0_2; 

(*yyout_2) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_24_2:  ; } 

yyErr(2, 510); 

}

return (int )retValue_acc;


}
 

process_struct_declarator(yyin_1,yyin_2,yyin_3,yyin_4,yyout_1,yyout_2) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy yyin_4; 

 yy *yyout_1; 

 yy *yyout_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yyv_W;



 yy yy_0_1_2;



 yy yyv_Type;



 yy yy_0_2;



 yy yyv_OffNext;



 yy yy_0_3;



 yy yyv_Kind;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;



 yy yy_0_5_2;



 yy yy_0_5_3;



 yy yy_0_5_4;



 yy yy_0_6;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Name;



 yy yy_1_3;



 yy yyv_Type2;



 yy yy_1_4;



 yy yy_2_1;



 yy yyv_Value;



 yy yy_2_2;



 yy yy_3_1;



 yy yy_3_2;



 yy yy_3_3;



 yy yyv_Offset;



 yy yy_3_4;



 yy yyv_NewOffNext;



 yy yy_3_5;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 132){
goto yyfl_25_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_D = yy_0_1_1; 

yyv_W = yy_0_1_2; 

yyv_Type = yy_0_2; 

yyv_OffNext = yy_0_3; 

yyv_Kind = yy_0_4; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_D; 

yy_1_2 = yyv_Type; 

process_declarator(yy_1_1, yy_1_2, (&yy_1_3), (&yy_1_4)); 

yyv_Name = yy_1_3; 

yyv_Type2 = yy_1_4; 

yy_2_1 = yyv_W; 

compute_width(yy_2_1, (&yy_2_2)); 

yyv_Value = yy_2_2; 

yy_3_1 = yyv_Type2; 

yy_3_2 = yyv_OffNext; 

yy_3_3 = yyv_Kind; 

td_compute_next_offset_of_struct_or_union(yy_3_1, yy_3_2, yy_3_3, (&yy_3_4), (&yy_3_5)); 

yyv_Offset = yy_3_4; 

yyv_NewOffNext = yy_3_5; 

yy_0_5_1 = yyv_Name; 

yy_0_5_2 = yyv_Type2; 

yy_0_5_3 = yyv_Value; 

yy_0_5_4 = yyv_Offset; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 1; 

yy_0_5[1] = (((long )yy_0_5_1)); 

yy_0_5[2] = (((long )yy_0_5_2)); 

yy_0_5[3] = (((long )yy_0_5_3)); 

yy_0_5[4] = (((long )yy_0_5_4)); 

yy_0_6 = yyv_NewOffNext; 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_25_1:  ; } 

yyErr(2, 521); 

}

return (int )retValue_acc;


}
 

process_struct_declarator_list(yyin_1,yyin_2,yyin_3,yyin_4,yyin_5,yyout_1,yyout_2) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy yyin_4; 

 yy yyin_5; 

 yy *yyout_1; 

 yy *yyout_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_L;



 yy yy_0_1_1;



 yy yyv_D;



 yy yy_0_1_2;



 yy yyv_Type;



 yy yy_0_2;



 yy yyv_L1;



 yy yy_0_3;



 yy yyv_Offset1;



 yy yy_0_4;



 yy yyv_Kind;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_0_6_1;



 yy yy_0_6_2;



 yy yy_0_7;



 yy yy_1_1;



 yy yy_1_2;



 yy yy_1_3;



 yy yy_1_4;



 yy yy_1_5;



 yy yyv_L2;



 yy yy_1_6;



 yy yyv_Offset2;



 yy yy_1_7;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yy_2_4;



 yy yyv_Field;



 yy yy_2_5;



 yy yyv_Offset;



 yy yy_2_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yy_0_5 = yyin_5; 

if (yy_0_1[0] != 128){
goto yyfl_26_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_L = yy_0_1_1; 

yyv_D = yy_0_1_2; 

yyv_Type = yy_0_2; 

yyv_L1 = yy_0_3; 

yyv_Offset1 = yy_0_4; 

yyv_Kind = yy_0_5; 

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_L; 

yy_1_2 = yyv_Type; 

yy_1_3 = yyv_L1; 

yy_1_4 = yyv_Offset1; 

yy_1_5 = yyv_Kind; 

process_struct_declarator_list(yy_1_1, yy_1_2, yy_1_3, yy_1_4, yy_1_5, (&yy_1_6), (&yy_1_7)); 

yyv_L2 = yy_1_6; 

yyv_Offset2 = yy_1_7; 

yy_2_1 = yyv_D; 

yy_2_2 = yyv_Type; 

yy_2_3 = yyv_Offset2; 

yy_2_4 = yyv_Kind; 

process_struct_declarator(yy_2_1, yy_2_2, yy_2_3, yy_2_4, (&yy_2_5), (&yy_2_6)); 

yyv_Field = yy_2_5; 

yyv_Offset = yy_2_6; 

yy_0_6_1 = yyv_L2; 

yy_0_6_2 = yyv_Field; 

yy_0_6 = yyb + 0; 

yy_0_6[0] = 2; 

yy_0_6[1] = (((long )yy_0_6_1)); 

yy_0_6[2] = (((long )yy_0_6_2)); 

yy_0_7 = yyv_Offset; 

(*yyout_1) = yy_0_6; 

(*yyout_2) = yy_0_7; 


return (int )retValue_acc;
 

yyfl_26_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Type;



 yy yy_0_2;



 yy yyv_L1;



 yy yy_0_3;



 yy yyv_Off;



 yy yy_0_4;



 yy yyv_Kind;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_0_7;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yy_0_5 = yyin_5; 

if (yy_0_1[0] != 129){
goto yyfl_26_2; }

yyv_Type = yy_0_2; 

yyv_L1 = yy_0_3; 

yyv_Off = yy_0_4; 

yyv_Kind = yy_0_5; 

yy_0_6 = yyv_L1; 

yy_0_7 = yyv_Off; 

(*yyout_1) = yy_0_6; 

(*yyout_2) = yy_0_7; 


return (int )retValue_acc;
 

yyfl_26_2:  ; } 

yyErr(2, 535); 

}

return (int )retValue_acc;


}
 

process_struct_declaration(yyin_1,yyin_2,yyin_3,yyin_4,yyout_1,yyout_2) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy yyin_4; 

 yy *yyout_1; 

 yy *yyout_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_G;



 yy yy_0_1_1;



 yy yyv_D;



 yy yy_0_1_2;



 yy yyv_L1;



 yy yy_0_2;



 yy yyv_Offset1;



 yy yy_0_3;



 yy yyv_Kind;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_1_1;



 yy yy_1_2;



 yy yy_1_3;



 yy yy_1_4;



 yy yyv_L;



 yy yy_1_5;



 yy yyv_Offset;



 yy yy_1_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 125){
goto yyfl_27_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_G = yy_0_1_1; 

yyv_D = yy_0_1_2; 

yyv_L1 = yy_0_2; 

yyv_Offset1 = yy_0_3; 

yyv_Kind = yy_0_4; 

yy_1_1 = yyv_D; 

yy_1_2 = yyv_L1; 

yy_1_3 = yyv_Offset1; 

yy_1_4 = yyv_Kind; 

process_struct_declaration(yy_1_1, yy_1_2, yy_1_3, yy_1_4, (&yy_1_5), (&yy_1_6)); 

yyv_L = yy_1_5; 

yyv_Offset = yy_1_6; 

yy_0_5 = yyv_L; 

yy_0_6 = yyv_Offset; 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_27_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Specs;



 yy yy_0_1_1;



 yy yyv_List;



 yy yy_0_1_2;



 yy yyv_L1;



 yy yy_0_2;



 yy yyv_Offset1;



 yy yy_0_3;



 yy yyv_Kind;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;



 yy yy_1_1;



 yy yyv_Qualifier;



 yy yy_1_2;



 yy yyv_TpDescr;



 yy yy_1_3;



 yy yy_2_1;



 yy yy_2_2;



 yy yyv_Type;



 yy yy_2_3;



 yy yy_3_1;



 yy yy_3_2;



 yy yy_3_3;



 yy yy_3_4;



 yy yy_3_5;



 yy yyv_L;



 yy yy_3_6;



 yy yyv_Offset;



 yy yy_3_7;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

if (yy_0_1[0] != 126){
goto yyfl_27_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_Specs = yy_0_1_1; 

yyv_List = yy_0_1_2; 

yyv_L1 = yy_0_2; 

yyv_Offset1 = yy_0_3; 

yyv_Kind = yy_0_4; 

yy_1_1 = yyv_Specs; 

process_specifier_qualifier_list(yy_1_1, (&yy_1_2), (&yy_1_3)); 

yyv_Qualifier = yy_1_2; 

yyv_TpDescr = yy_1_3; 

yy_2_1 = yyv_Qualifier; 

yy_2_2 = yyv_TpDescr; 

compute_base_type(yy_2_1, yy_2_2, (&yy_2_3)); 

yyv_Type = yy_2_3; 

yy_3_1 = yyv_List; 

yy_3_2 = yyv_Type; 

yy_3_3 = yyv_L1; 

yy_3_4 = yyv_Offset1; 

yy_3_5 = yyv_Kind; 

process_struct_declarator_list(yy_3_1, yy_3_2, yy_3_3, yy_3_4, yy_3_5, (&yy_3_6), (&yy_3_7)); 

yyv_L = yy_3_6; 

yyv_Offset = yy_3_7; 

yy_0_5 = yyv_L; 

yy_0_6 = yyv_Offset; 

(*yyout_1) = yy_0_5; 

(*yyout_2) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_27_2:  ; } 

yyErr(2, 549); 

}

return (int )retValue_acc;


}
 

process_struct_declaration_list(yyin_1,yyin_2,yyin_3,yyout_1,yyout_2) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy *yyout_1; 

 yy *yyout_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_L;



 yy yy_0_1_1;



 yy yyv_D;



 yy yy_0_1_2;



 yy yyv_Offset1;



 yy yy_0_2;



 yy yyv_Kind;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_1_1;



 yy yy_1_2;



 yy yy_1_3;



 yy yyv_L1;



 yy yy_1_4;



 yy yyv_Offset2;



 yy yy_1_5;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yy_2_4;



 yy yyv_List;



 yy yy_2_5;



 yy yyv_Offset;



 yy yy_2_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 123){
goto yyfl_28_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_L = yy_0_1_1; 

yyv_D = yy_0_1_2; 

yyv_Offset1 = yy_0_2; 

yyv_Kind = yy_0_3; 

yy_1_1 = yyv_L; 

yy_1_2 = yyv_Offset1; 

yy_1_3 = yyv_Kind; 

process_struct_declaration_list(yy_1_1, yy_1_2, yy_1_3, (&yy_1_4), (&yy_1_5)); 

yyv_L1 = yy_1_4; 

yyv_Offset2 = yy_1_5; 

yy_2_1 = yyv_D; 

yy_2_2 = yyv_L1; 

yy_2_3 = yyv_Offset2; 

yy_2_4 = yyv_Kind; 

process_struct_declaration(yy_2_1, yy_2_2, yy_2_3, yy_2_4, (&yy_2_5), (&yy_2_6)); 

yyv_List = yy_2_5; 

yyv_Offset = yy_2_6; 

yy_0_4 = yyv_List; 

yy_0_5 = yyv_Offset; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_28_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_O;



 yy yy_0_2;



 yy yyv_Kind;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 124){
goto yyfl_28_2; }

yyv_O = yy_0_2; 

yyv_Kind = yy_0_3; 

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 1; 

yy_0_5 = yyv_O; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_28_2:  ; } 

yyErr(2, 564); 

}

return (int )retValue_acc;


}
 

process_init_declarator(yyin_1,yyin_2,yyin_3) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yyv_Type0;



 yy yy_0_2;



 yy yyv_StClass;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Name;



 yy yy_1_3;



 yy yyv_Type;



 yy yy_1_4;



 yy yyv_X;



 yy yy_2;



 yy yy_3_1;



 yy yy_3_2;



 yy yy_3_3;



 yy yy_3_4;



 yy yyv_Descr;



 yy yy_3_5;



 yy yy_4_1;



 yy yy_4_2;



 yy yy_4_3;



 yy yy_5_1;



 yy yy_5_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 26){
goto yyfl_29_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_D = yy_0_1_1; 

yyv_Type0 = yy_0_2; 

yyv_StClass = yy_0_3; 

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_D; 

yy_1_2 = yyv_Type0; 

process_declarator(yy_1_1, yy_1_2, (&yy_1_3), (&yy_1_4)); 

yyv_Name = yy_1_3; 

yyv_Type = yy_1_4; 

yy_2 = (( yy )yyv_Type[1]); 

if (yy_2 == (( yy )((-2147483647L)))){
yyErr(1, 583); }

yyv_X = yy_2; 

yy_3_1 = yyv_Name; 

yy_3_2 = yyv_Type; 

yy_3_3 = yyv_StClass; 

yy_3_4 = yyb + 0; 

yy_3_4[0] = 2; 

make_obj_descr(yy_3_1, yy_3_2, yy_3_3, yy_3_4, (&yy_3_5)); 

yyv_Descr = yy_3_5; 

yy_4_1 = yyv_Name; 

yy_4_2 = yyv_Type; 

yy_4_3 = yyv_Descr; 

test_no_double_declaration(yy_4_1, yy_4_2, yy_4_3); 

yy_5_1 = yyv_Name; 

yy_5_2 = yyv_Descr; 

declare_object(yy_5_1, yy_5_2); 


return (int )retValue_acc;
 

yyfl_29_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yyv_I;



 yy yy_0_1_2;



 yy yyv_Type0;



 yy yy_0_2;



 yy yyv_StClass;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Name;



 yy yy_1_3;



 yy yyv_Type;



 yy yy_1_4;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yy_2_4;



 yy yyv_Descr;



 yy yy_2_5;



 yy yy_3_1;



 yy yy_3_2;



 yy yy_3_3;



 yy yy_4_1;



 yy yy_4_2;



 yy yy_5_1_1_1;



 yy yy_5_1_1_2;



 yy yyv_X;



 yy yy_5_1_1_2_1;



 yy yy_5_1_2_1;



 yy yyv_Type_X;



 yy yy_5_1_2_2;



 yy yyv_Code_X;



 yy yy_5_1_2_3;



 yy yy_5_2_1_1;



 yy yy_5_2_1_2;



 yy yy_5_2_1_2_1;



 yy yy_5_3_1_1;



 yy yy_5_3_1_2;



 yy yy_5_3_1_2_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 20){
goto yyfl_29_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_D = yy_0_1_1; 

yyv_I = yy_0_1_2; 

yyv_Type0 = yy_0_2; 

yyv_StClass = yy_0_3; 

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_D; 

yy_1_2 = yyv_Type0; 

process_declarator(yy_1_1, yy_1_2, (&yy_1_3), (&yy_1_4)); 

yyv_Name = yy_1_3; 

yyv_Type = yy_1_4; 

yy_2_1 = yyv_Name; 

yy_2_2 = yyv_Type; 

yy_2_3 = yyv_StClass; 

yy_2_4 = yyb + 0; 

yy_2_4[0] = 2; 

make_obj_descr(yy_2_1, yy_2_2, yy_2_3, yy_2_4, (&yy_2_5)); 

yyv_Descr = yy_2_5; 

yy_3_1 = yyv_Name; 

yy_3_2 = yyv_Type; 

yy_3_3 = yyv_Descr; 

test_no_double_declaration(yy_3_1, yy_3_2, yy_3_3); 

yy_4_1 = yyv_Name; 

yy_4_2 = yyv_Descr; 

declare_object(yy_4_1, yy_4_2); 

{ 



 yy yysb = yyb;

yy_5_1_1_1 = yyv_I; 

yy_5_1_1_2 = yy_5_1_1_1; 

if (yy_5_1_1_2[0] != 98){
goto yyfl_29_2_5_1; }

yy_5_1_1_2_1 = ((( yy )yy_5_1_1_2[1])); 

yyv_X = yy_5_1_1_2_1; 

yy_5_1_2_1 = yyv_X; 

trafo_expr_rvalue(yy_5_1_2_1, (&yy_5_1_2_2), (&yy_5_1_2_3)); 

yyv_Type_X = yy_5_1_2_2; 

yyv_Code_X = yy_5_1_2_3; 

goto yysl_29_2_5; 

yyfl_29_2_5_1:  ; 

yy_5_2_1_1 = yyv_I; 

yy_5_2_1_2 = yy_5_2_1_1; 

if (yy_5_2_1_2[0] != 99){
goto yyfl_29_2_5_2; }

yy_5_2_1_2_1 = ((( yy )yy_5_2_1_2[1])); 

goto yysl_29_2_5; 

yyfl_29_2_5_2:  ; 

yy_5_3_1_1 = yyv_I; 

yy_5_3_1_2 = yy_5_3_1_1; 

if (yy_5_3_1_2[0] != 100){
goto yyfl_29_2_5_3; }

yy_5_3_1_2_1 = ((( yy )yy_5_3_1_2[1])); 

goto yysl_29_2_5; 

yyfl_29_2_5_3:  ; 

goto yyfl_29_2; 

yysl_29_2_5:  ; 

yyb = yysb; } 


return (int )retValue_acc;
 

yyfl_29_2:  ; } 

yyErr(2, 576); 

}

return (int )retValue_acc;


}
 

process_direct_declarator(yyin_1,yyin_2,yyout_1,yyout_2) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1; 

 yy *yyout_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Id;



 yy yy_0_1_1;



 yy yyv_G;



 yy yy_0_1_2;



 yy yyv_RawType;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 33){
goto yyfl_30_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_Id = yy_0_1_1; 

yyv_G = yy_0_1_2; 

yyv_RawType = yy_0_2; 

yy_0_3 = yyv_Id; 

yy_0_4 = yyv_RawType; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_30_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yyv_RawType;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Name;



 yy yy_1_3;



 yy yyv_Type;



 yy yy_1_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 34){
goto yyfl_30_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_D = yy_0_1_1; 

yyv_RawType = yy_0_2; 

yy_1_1 = yyv_D; 

yy_1_2 = yyv_RawType; 

process_declarator(yy_1_1, yy_1_2, (&yy_1_3), (&yy_1_4)); 

yyv_Name = yy_1_3; 

yyv_Type = yy_1_4; 

yy_0_3 = yyv_Name; 

yy_0_4 = yyv_Type; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_30_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yyv_Index;



 yy yy_0_1_2;



 yy yyv_RawType;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yyv_Value;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_1_1;



 yy yy_2_1_2;



 yy yyv_Tp;



 yy yy_2_2;



 yy yy_3_1;



 yy yy_3_2;



 yy yyv_Name;



 yy yy_3_3;



 yy yyv_Type;



 yy yy_3_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 35){
goto yyfl_30_3; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_D = yy_0_1_1; 

yyv_Index = yy_0_1_2; 

yyv_RawType = yy_0_2; 

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Index; 

compute_index(yy_1_1, (&yy_1_2)); 

yyv_Value = yy_1_2; 

yy_2_1_1 = yyv_Value; 

yy_2_1_2 = yyv_RawType; 

yy_2_1 = yyb + 0; 

yy_2_1[0] = 2; 

yy_2_1[1] = (((long )yy_2_1_1)); 

yy_2_1[2] = (((long )yy_2_1_2)); 

make_type_and_size(yy_2_1, (&yy_2_2)); 

yyv_Tp = yy_2_2; 

yy_3_1 = yyv_D; 

yy_3_2 = yyv_Tp; 

process_direct_declarator(yy_3_1, yy_3_2, (&yy_3_3), (&yy_3_4)); 

yyv_Name = yy_3_3; 

yyv_Type = yy_3_4; 

yy_0_3 = yyv_Name; 

yy_0_4 = yyv_Type; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_30_3:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yyv_P;



 yy yy_0_1_2;



 yy yyv_G;



 yy yy_0_1_3;



 yy yyv_RawType;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Params;



 yy yy_1_3;



 yy yyv_Tp;



 yy yy_2_1;



 yy yy_3_1;



 yy yy_3_2;



 yy yy_3_2_1;



 yy yy_3_2_2;



 yy yy_4_1;



 yy yy_4_2;



 yy yyv_Name;



 yy yy_4_3;



 yy yyv_Type;



 yy yy_4_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 36){
goto yyfl_30_4; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yyv_D = yy_0_1_1; 

yyv_P = yy_0_1_2; 

yyv_G = yy_0_1_3; 

yyv_RawType = yy_0_2; 

yyb = yyh; 

yyh += 4; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_P; 

yy_1_2 = yyb + 0; 

yy_1_2[0] = 1; 

process_parameter_type_list(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Params = yy_1_3; 

make_tp((&yy_2_1)); 

yyv_Tp = yy_2_1; 

yy_3_1 = yyv_Tp; 

yy_3_2_1 = yyv_Params; 

yy_3_2_2 = yyv_RawType; 

yy_3_2 = yyb + 1; 

yy_3_2[0] = 3; 

yy_3_2[1] = (((long )yy_3_2_1)); 

yy_3_2[2] = (((long )yy_3_2_2)); 

put_tp_descr(yy_3_1, yy_3_2); 

yy_4_1 = yyv_D; 

yy_4_2 = yyv_Tp; 

process_direct_declarator(yy_4_1, yy_4_2, (&yy_4_3), (&yy_4_4)); 

yyv_Name = yy_4_3; 

yyv_Type = yy_4_4; 

yy_0_3 = yyv_Name; 

yy_0_4 = yyv_Type; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_30_4:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yyv_I;



 yy yy_0_1_2;



 yy yyv_RawType;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yyv_Tp;



 yy yy_1_1;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_2_1;



 yy yy_2_2_2;



 yy yy_3_1;



 yy yy_3_2;



 yy yyv_Name;



 yy yy_3_3;



 yy yyv_Type;



 yy yy_3_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 37){
goto yyfl_30_5; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_D = yy_0_1_1; 

yyv_I = yy_0_1_2; 

yyv_RawType = yy_0_2; 

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

make_tp((&yy_1_1)); 

yyv_Tp = yy_1_1; 

yy_2_1 = yyv_Tp; 

yy_2_2_1 = yyv_I; 

yy_2_2_2 = yyv_RawType; 

yy_2_2 = yyb + 0; 

yy_2_2[0] = 4; 

yy_2_2[1] = (((long )yy_2_2_1)); 

yy_2_2[2] = (((long )yy_2_2_2)); 

put_tp_descr(yy_2_1, yy_2_2); 

yy_3_1 = yyv_D; 

yy_3_2 = yyv_Tp; 

process_direct_declarator(yy_3_1, yy_3_2, (&yy_3_3), (&yy_3_4)); 

yyv_Name = yy_3_3; 

yyv_Type = yy_3_4; 

yy_0_3 = yyv_Name; 

yy_0_4 = yyv_Type; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_30_5:  ; } 

yyErr(2, 606); 

}

return (int )retValue_acc;


}
 

process_pointer(yyin_1,yyin_2,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Type0;



 yy yy_0_2;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 31){
goto yyfl_31_1; }

yyv_Type0 = yy_0_2; 

yy_0_3 = yyv_Type0; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_31_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Q;



 yy yy_0_1_1;



 yy yyv_P;



 yy yy_0_1_2;



 yy yyv_Type0;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Type;



 yy yy_1_3;



 yy yy_2_1;



 yy yyv_Qual;



 yy yy_2_2;



 yy yy_3_1;



 yy yy_3_1_1;



 yy yy_3_1_2;



 yy yyv_Tp;



 yy yy_3_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 32){
goto yyfl_31_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_Q = yy_0_1_1; 

yyv_P = yy_0_1_2; 

yyv_Type0 = yy_0_2; 

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_P; 

yy_1_2 = yyv_Type0; 

process_pointer(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Type = yy_1_3; 

yy_2_1 = yyv_Q; 

process_type_qualifier_list(yy_2_1, (&yy_2_2)); 

yyv_Qual = yy_2_2; 

yy_3_1_1 = yyv_Qual; 

yy_3_1_2 = yyv_Type; 

yy_3_1 = yyb + 0; 

yy_3_1[0] = 5; 

yy_3_1[1] = (((long )yy_3_1_1)); 

yy_3_1[2] = (((long )yy_3_1_2)); 

make_type_and_size(yy_3_1, (&yy_3_2)); 

yyv_Tp = yy_3_2; 

yy_0_3 = yyv_Tp; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_31_2:  ; } 

yyErr(2, 642); 

}

return (int )retValue_acc;


}
 

process_type_qualifier_list(yyin_1,yyout_1) 

 yy yyin_1; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_L;



 yy yy_0_1_1;



 yy yyv_Q;



 yy yy_0_1_2;



 yy yy_0_2;



 yy yy_1_1;



 yy yyv_Q1;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_2;



 yy yyv_Qual;



 yy yy_2_3;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 133){
goto yyfl_32_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_L = yy_0_1_1; 

yyv_Q = yy_0_1_2; 

yy_1_1 = yyv_L; 

process_type_qualifier_list(yy_1_1, (&yy_1_2)); 

yyv_Q1 = yy_1_2; 

yy_2_1 = yyv_Q; 

yy_2_2 = yyv_Q1; 

process_qualifier(yy_2_1, yy_2_2, (&yy_2_3)); 

yyv_Qual = yy_2_3; 

yy_0_2 = yyv_Qual; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_32_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 134){
goto yyfl_32_2; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 4; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_32_2:  ; } 

yyErr(2, 654); 

}

return (int )retValue_acc;


}
 

process_qualifier(yyin_1,yyin_2,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Q;



 yy yy_0_1_1;



 yy yyv_Qual0;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yyv_Qual1;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_2;



 yy yyv_Qual;



 yy yy_2_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 87){
goto yyfl_33_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_Q = yy_0_1_1; 

yyv_Qual0 = yy_0_2; 

yy_1_1 = yyv_Q; 

make_qual(yy_1_1, (&yy_1_2)); 

yyv_Qual1 = yy_1_2; 

yy_2_1 = yyv_Qual1; 

yy_2_2 = yyv_Qual0; 

update_qualifier(yy_2_1, yy_2_2, (&yy_2_3)); 

yyv_Qual = yy_2_3; 

yy_0_3 = yyv_Qual; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_33_1:  ; } 

yyErr(2, 665); 

}

return (int )retValue_acc;


}
 

process_parameter_type_list(yyin_1,yyin_2,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_L;



 yy yy_0_2;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 103){
goto yyfl_34_1; }

yyv_L = yy_0_2; 

yy_0_3 = yyv_L; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_34_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_L;



 yy yy_0_1_1;



 yy yy_0_1_2;



 yy yyv_PL;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Params;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 104){
goto yyfl_34_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_L = yy_0_1_1; 

if (yy_0_1_2[0] != 107){
goto yyfl_34_2; }

yyv_PL = yy_0_2; 

yy_1_1 = yyv_L; 

yy_1_2 = yyv_PL; 

process_parameter_list(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Params = yy_1_3; 

yy_0_3 = yyv_Params; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_34_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_L;



 yy yy_0_1_1;



 yy yy_0_1_2;



 yy yyv_PL;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yy_1_2_1;



 yy yy_1_2_2;



 yy yyv_Params;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 104){
goto yyfl_34_3; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_L = yy_0_1_1; 

if (yy_0_1_2[0] != 108){
goto yyfl_34_3; }

yyv_PL = yy_0_2; 

yyb = yyh; 

yyh += 4; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_L; 

yy_1_2_1 = yyb + 3; 

yy_1_2_1[0] = 1; 

yy_1_2_2 = yyv_PL; 

yy_1_2 = yyb + 0; 

yy_1_2[0] = 2; 

yy_1_2[1] = (((long )yy_1_2_1)); 

yy_1_2[2] = (((long )yy_1_2_2)); 

process_parameter_list(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Params = yy_1_3; 

yy_0_3 = yyv_Params; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_34_3:  ; } 

yyErr(2, 674); 

}

return (int )retValue_acc;


}
 

process_parameter_list(yyin_1,yyin_2,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_PL;



 yy yy_0_2;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 106){
goto yyfl_35_1; }

yyv_PL = yy_0_2; 

yy_0_3 = yyv_PL; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_35_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_L;



 yy yy_0_1_1;



 yy yyv_D;



 yy yy_0_1_2;



 yy yyv_PL;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yyv_ParamType;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_2_1;



 yy yy_2_2_2;



 yy yyv_Params;



 yy yy_2_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 105){
goto yyfl_35_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_L = yy_0_1_1; 

yyv_D = yy_0_1_2; 

yyv_PL = yy_0_2; 

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_D; 

process_parameter_declaration(yy_1_1, (&yy_1_2)); 

yyv_ParamType = yy_1_2; 

yy_2_1 = yyv_L; 

yy_2_2_1 = yyv_ParamType; 

yy_2_2_2 = yyv_PL; 

yy_2_2 = yyb + 0; 

yy_2_2[0] = 2; 

yy_2_2[1] = (((long )yy_2_2_1)); 

yy_2_2[2] = (((long )yy_2_2_2)); 

process_parameter_list(yy_2_1, yy_2_2, (&yy_2_3)); 

yyv_Params = yy_2_3; 

yy_0_3 = yyv_Params; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_35_2:  ; } 

yyErr(2, 690); 

}

return (int )retValue_acc;


}
 

process_parameter_declaration(yyin_1,yyout_1) 

 yy yyin_1; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_S;



 yy yy_0_1_1;



 yy yyv_D;



 yy yy_0_1_2;



 yy yy_0_2;



 yy yy_0_2_1;



 yy yy_0_2_1_1;



 yy yy_0_2_2;



 yy yy_0_2_3;



 yy yy_1_1;



 yy yyv_StClass;



 yy yy_1_2;



 yy yyv_Qualifier;



 yy yy_1_3;



 yy yyv_Type0;



 yy yy_1_4;



 yy yy_2_1;



 yy yy_2_2;



 yy yyv_Type;



 yy yy_2_3;



 yy yy_3_1;



 yy yy_3_2;



 yy yyv_Name;



 yy yy_3_3;



 yy yyv_Type2;



 yy yy_3_4;



 yy yy_4_1;



 yy yyv_Type1;



 yy yy_4_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 109){
goto yyfl_36_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_S = yy_0_1_1; 

yyv_D = yy_0_1_2; 

yyb = yyh; 

yyh += 6; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_S; 

process_declaration_specifiers(yy_1_1, (&yy_1_2), (&yy_1_3), (&yy_1_4)); 

yyv_StClass = yy_1_2; 

yyv_Qualifier = yy_1_3; 

yyv_Type0 = yy_1_4; 

yy_2_1 = yyv_Qualifier; 

yy_2_2 = yyv_Type0; 

compute_base_type(yy_2_1, yy_2_2, (&yy_2_3)); 

yyv_Type = yy_2_3; 

yy_3_1 = yyv_D; 

yy_3_2 = yyv_Type; 

process_declarator(yy_3_1, yy_3_2, (&yy_3_3), (&yy_3_4)); 

yyv_Name = yy_3_3; 

yyv_Type2 = yy_3_4; 

yy_4_1 = yyv_Type2; 

adjust_param_type(yy_4_1, (&yy_4_2)); 

yyv_Type1 = yy_4_2; 

yy_0_2_1_1 = yyv_Name; 

yy_0_2_1 = yyb + 4; 

yy_0_2_1[0] = 1; 

yy_0_2_1[1] = (((long )yy_0_2_1_1)); 

yy_0_2_2 = yyv_Type1; 

yy_0_2_3 = yyv_StClass; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 2; 

yy_0_2[1] = (((long )yy_0_2_1)); 

yy_0_2[2] = (((long )yy_0_2_2)); 

yy_0_2[3] = (((long )yy_0_2_3)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_36_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_S;



 yy yy_0_1_1;



 yy yyv_D;



 yy yy_0_1_2;



 yy yy_0_2;



 yy yy_0_2_1;



 yy yy_0_2_2;



 yy yy_0_2_3;



 yy yy_1_1;



 yy yyv_C;



 yy yy_1_2;



 yy yyv_Qualifier;



 yy yy_1_3;



 yy yyv_Type0;



 yy yy_1_4;



 yy yy_2_1;



 yy yy_2_2;



 yy yyv_Type;



 yy yy_2_3;



 yy yy_3_1;



 yy yy_3_2;



 yy yyv_Name;



 yy yy_3_3;



 yy yyv_Type2;



 yy yy_3_4;



 yy yy_4_1;



 yy yyv_Type1;



 yy yy_4_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 110){
goto yyfl_36_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_S = yy_0_1_1; 

yyv_D = yy_0_1_2; 

yyb = yyh; 

yyh += 4; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_S; 

process_declaration_specifiers(yy_1_1, (&yy_1_2), (&yy_1_3), (&yy_1_4)); 

yyv_C = yy_1_2; 

yyv_Qualifier = yy_1_3; 

yyv_Type0 = yy_1_4; 

yy_2_1 = yyv_Qualifier; 

yy_2_2 = yyv_Type0; 

compute_base_type(yy_2_1, yy_2_2, (&yy_2_3)); 

yyv_Type = yy_2_3; 

yy_3_1 = yyv_D; 

yy_3_2 = yyv_Type; 

process_abstract_declarator(yy_3_1, yy_3_2, (&yy_3_3), (&yy_3_4)); 

yyv_Name = yy_3_3; 

yyv_Type2 = yy_3_4; 

yy_4_1 = yyv_Type2; 

adjust_param_type(yy_4_1, (&yy_4_2)); 

yyv_Type1 = yy_4_2; 

yy_0_2_1 = yyv_Name; 

yy_0_2_2 = yyv_Type1; 

yy_0_2_3 = yyv_C; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 2; 

yy_0_2[1] = (((long )yy_0_2_1)); 

yy_0_2[2] = (((long )yy_0_2_2)); 

yy_0_2[3] = (((long )yy_0_2_3)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_36_2:  ; } 

yyErr(2, 703); 

}

return (int )retValue_acc;


}
 

process_abstract_declarator(yyin_1,yyin_2,yyout_1,yyout_2) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1; 

 yy *yyout_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Type;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 112){
goto yyfl_37_1; }

yyv_Type = yy_0_2; 

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_3 = yyb + 0; 

yy_0_3[0] = 2; 

yy_0_4 = yyv_Type; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_37_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_P;



 yy yy_0_1_1;



 yy yyv_D;



 yy yy_0_1_2;



 yy yyv_Type1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_RawType;



 yy yy_1_3;



 yy yy_2_1;



 yy yy_2_2;



 yy yyv_Name;



 yy yy_2_3;



 yy yyv_Type;



 yy yy_2_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 111){
goto yyfl_37_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_P = yy_0_1_1; 

yyv_D = yy_0_1_2; 

yyv_Type1 = yy_0_2; 

yy_1_1 = yyv_P; 

yy_1_2 = yyv_Type1; 

process_pointer(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_RawType = yy_1_3; 

yy_2_1 = yyv_D; 

yy_2_2 = yyv_RawType; 

process_direct_abstract_declarator(yy_2_1, yy_2_2, (&yy_2_3), (&yy_2_4)); 

yyv_Name = yy_2_3; 

yyv_Type = yy_2_4; 

yy_0_3 = yyv_Name; 

yy_0_4 = yyv_Type; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_37_2:  ; } 

yyErr(2, 721); 

}

return (int )retValue_acc;


}
 

process_direct_abstract_declarator(yyin_1,yyin_2,yyout_1,yyout_2) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1; 

 yy *yyout_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Type;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 113){
goto yyfl_38_1; }

yyv_Type = yy_0_2; 

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_3 = yyb + 0; 

yy_0_3[0] = 2; 

yy_0_4 = yyv_Type; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_38_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yyv_RawType;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Name;



 yy yy_1_3;



 yy yyv_Type;



 yy yy_1_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 114){
goto yyfl_38_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_D = yy_0_1_1; 

yyv_RawType = yy_0_2; 

yy_1_1 = yyv_D; 

yy_1_2 = yyv_RawType; 

process_abstract_declarator(yy_1_1, yy_1_2, (&yy_1_3), (&yy_1_4)); 

yyv_Name = yy_1_3; 

yyv_Type = yy_1_4; 

yy_0_3 = yyv_Name; 

yy_0_4 = yyv_Type; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_38_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yyv_Index;



 yy yy_0_1_2;



 yy yyv_RawType;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yyv_Value;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_1_1;



 yy yy_2_1_2;



 yy yyv_Tp;



 yy yy_2_2;



 yy yy_3_1;



 yy yy_3_2;



 yy yyv_Name;



 yy yy_3_3;



 yy yyv_Type;



 yy yy_3_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 115){
goto yyfl_38_3; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_D = yy_0_1_1; 

yyv_Index = yy_0_1_2; 

yyv_RawType = yy_0_2; 

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Index; 

compute_index(yy_1_1, (&yy_1_2)); 

yyv_Value = yy_1_2; 

yy_2_1_1 = yyv_Value; 

yy_2_1_2 = yyv_RawType; 

yy_2_1 = yyb + 0; 

yy_2_1[0] = 2; 

yy_2_1[1] = (((long )yy_2_1_1)); 

yy_2_1[2] = (((long )yy_2_1_2)); 

make_type_and_size(yy_2_1, (&yy_2_2)); 

yyv_Tp = yy_2_2; 

yy_3_1 = yyv_D; 

yy_3_2 = yyv_Tp; 

process_direct_abstract_declarator(yy_3_1, yy_3_2, (&yy_3_3), (&yy_3_4)); 

yyv_Name = yy_3_3; 

yyv_Type = yy_3_4; 

yy_0_3 = yyv_Name; 

yy_0_4 = yyv_Type; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_38_3:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yyv_P;



 yy yy_0_1_2;



 yy yyv_RawType;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Params;



 yy yy_1_3;



 yy yyv_Tp;



 yy yy_2_1;



 yy yy_3_1;



 yy yy_3_2;



 yy yy_3_2_1;



 yy yy_3_2_2;



 yy yy_4_1;



 yy yy_4_2;



 yy yyv_Name;



 yy yy_4_3;



 yy yyv_Type;



 yy yy_4_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 116){
goto yyfl_38_4; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_D = yy_0_1_1; 

yyv_P = yy_0_1_2; 

yyv_RawType = yy_0_2; 

yyb = yyh; 

yyh += 4; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_P; 

yy_1_2 = yyb + 0; 

yy_1_2[0] = 1; 

process_parameter_type_list(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Params = yy_1_3; 

make_tp((&yy_2_1)); 

yyv_Tp = yy_2_1; 

yy_3_1 = yyv_Tp; 

yy_3_2_1 = yyv_Params; 

yy_3_2_2 = yyv_RawType; 

yy_3_2 = yyb + 1; 

yy_3_2[0] = 3; 

yy_3_2[1] = (((long )yy_3_2_1)); 

yy_3_2[2] = (((long )yy_3_2_2)); 

put_tp_descr(yy_3_1, yy_3_2); 

yy_4_1 = yyv_D; 

yy_4_2 = yyv_Tp; 

process_direct_abstract_declarator(yy_4_1, yy_4_2, (&yy_4_3), (&yy_4_4)); 

yyv_Name = yy_4_3; 

yyv_Type = yy_4_4; 

yy_0_3 = yyv_Name; 

yy_0_4 = yyv_Type; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_38_4:  ; } 

yyErr(2, 732); 

}

return (int )retValue_acc;


}
 

process_enumerator_list(yyin_1,yyin_2,yyout_1,yyout_2) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1; 

 yy *yyout_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Ic;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 141){
goto yyfl_39_1; }

yyv_Ic = yy_0_2; 

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_3 = yyb + 0; 

yy_0_3[0] = 11; 

yy_0_4 = yyv_Ic; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_39_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_L;



 yy yy_0_1_1;



 yy yyv_E;



 yy yy_0_1_2;



 yy yyv_OldIc1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_AMode1;



 yy yy_1_3;



 yy yyv_OldIc;



 yy yy_1_4;



 yy yy_2_1;



 yy yy_2_2;



 yy yyv_AMode2;



 yy yy_2_3;



 yy yyv_Ic;



 yy yy_2_4;



 yy yy_3_1;



 yy yy_3_2;



 yy yyv_AMode;



 yy yy_3_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 140){
goto yyfl_39_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_L = yy_0_1_1; 

yyv_E = yy_0_1_2; 

yyv_OldIc1 = yy_0_2; 

yy_1_1 = yyv_L; 

yy_1_2 = yyv_OldIc1; 

process_enumerator_list(yy_1_1, yy_1_2, (&yy_1_3), (&yy_1_4)); 

yyv_AMode1 = yy_1_3; 

yyv_OldIc = yy_1_4; 

yy_2_1 = yyv_E; 

yy_2_2 = yyv_OldIc; 

process_enumerator(yy_2_1, yy_2_2, (&yy_2_3), (&yy_2_4)); 

yyv_AMode2 = yy_2_3; 

yyv_Ic = yy_2_4; 

yy_3_1 = yyv_AMode1; 

yy_3_2 = yyv_AMode2; 

td_max_amode(yy_3_1, yy_3_2, (&yy_3_3)); 

yyv_AMode = yy_3_3; 

yy_0_3 = yyv_AMode; 

yy_0_4 = yyv_Ic; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_39_2:  ; } 

yyErr(2, 757); 

}

return (int )retValue_acc;


}
 

process_enumerator(yyin_1,yyin_2,yyout_1,yyout_2) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1; 

 yy *yyout_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Id;



 yy yy_0_1_1;



 yy yyv_E;



 yy yy_0_1_2;



 yy yyv_IcOld;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_M;



 yy yy_1_2_1;



 yy yyv_Ic;



 yy yy_1_2_2;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_2_1;



 yy yy_3_1;



 yy yy_3_2;



 yy yyv_NewIc;



 yy yy_3_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 143){
goto yyfl_40_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_Id = yy_0_1_1; 

yyv_E = yy_0_1_2; 

yyv_IcOld = yy_0_2; 

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_E; 

trafo_expr_const(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 21){
goto yyfl_40_1; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yyv_M = yy_1_2_1; 

yyv_Ic = yy_1_2_2; 

yy_2_1 = yyv_Id; 

yy_2_2_1 = yyv_Ic; 

yy_2_2 = yyb + 1; 

yy_2_2[0] = 6; 

yy_2_2[1] = (((long )yy_2_2_1)); 

declare_object(yy_2_1, yy_2_2); 

yy_3_1 = yyv_Ic; 

yy_3_2 = ((( yy )1)); 

c_plus(yy_3_1, yy_3_2, (&yy_3_3)); 

yyv_NewIc = yy_3_3; 

yy_0_3 = yyb + 0; 

yy_0_3[0] = 5; 

yy_0_4 = yyv_NewIc; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_40_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Id;



 yy yy_0_1_1;



 yy yyv_IcOld;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Ic;



 yy yy_1_3;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_2_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 142){
goto yyfl_40_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_Id = yy_0_1_1; 

yyv_IcOld = yy_0_2; 

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_IcOld; 

yy_1_2 = ((( yy )1)); 

c_plus(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Ic = yy_1_3; 

yy_2_1 = yyv_Id; 

yy_2_2_1 = yyv_IcOld; 

yy_2_2 = yyb + 1; 

yy_2_2[0] = 6; 

yy_2_2[1] = (((long )yy_2_2_1)); 

declare_object(yy_2_1, yy_2_2); 

yy_0_3 = yyb + 0; 

yy_0_3[0] = 5; 

yy_0_4 = yyv_Ic; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_40_2:  ; } 

yyErr(2, 771); 

}

return (int )retValue_acc;


}
 

update_sign(yyin_1,yyin_2,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Sign;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Sign = yy_0_1; 

if (yy_0_2[0] != 1){
goto yyfl_41_1; }

yy_0_3 = yyv_Sign; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_41_1:  ; } 

{ 



 yy yyb;



 yy yyv_Sign0;



 yy yy_0_1;



 yy yyv_Sign1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Sign0 = yy_0_1; 

yyv_Sign1 = yy_0_2; 

yy_1_1 = ((( yy )"illegal type specifier combination, for signed or unsigned")); 

semantic_error(yy_1_1); 

yy_0_3 = yyv_Sign1; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_41_2:  ; } 

yyErr(2, 791); 

}

return (int )retValue_acc;


}
 

update_size(yyin_1,yyin_2,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Size;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Size = yy_0_1; 

if (yy_0_2[0] != 1){
goto yyfl_42_1; }

yy_0_3 = yyv_Size; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_42_1:  ; } 

{ 



 yy yyb;



 yy yyv_Size0;



 yy yy_0_1;



 yy yyv_Size1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Size0 = yy_0_1; 

yyv_Size1 = yy_0_2; 

yy_1_1 = ((( yy )"illegal type specifier combination, for long or short")); 

semantic_error(yy_1_1); 

yy_0_3 = yyv_Size0; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_42_2:  ; } 

yyErr(2, 799); 

}

return (int )retValue_acc;


}
 

update_mode(yyin_1,yyin_2,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Mode;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Mode = yy_0_1; 

if (yy_0_2[0] != 1){
goto yyfl_43_1; }

yy_0_3 = yyv_Mode; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_43_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Mode;



 yy yy_0_2;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 1){
goto yyfl_43_2; }

yyv_Mode = yy_0_2; 

yy_0_3 = yyv_Mode; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_43_2:  ; } 

{ 



 yy yyb;



 yy yyv_Mode0;



 yy yy_0_1;



 yy yyv_Mode1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Mode0 = yy_0_1; 

yyv_Mode1 = yy_0_2; 

yy_1_1 = ((( yy )"illegal type specifier combination, too many modes specified")); 

semantic_error(yy_1_1); 

yy_0_3 = yyv_Mode0; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_43_3:  ; } 

yyErr(2, 807); 

}

return (int )retValue_acc;


}
 

update_storage_class(yyin_1,yyin_2,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_C;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yyv_Class;



 yy yy_1_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_C = yy_0_1; 

if (yy_0_2[0] != 6){
goto yyfl_44_1; }

yy_1_1 = yyv_C; 

make_stclass(yy_1_1, (&yy_1_2)); 

yyv_Class = yy_1_2; 

yy_0_3 = yyv_Class; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_44_1:  ; } 

{ 



 yy yyb;



 yy yyv_C;



 yy yy_0_1;



 yy yyv_C1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_C = yy_0_1; 

yyv_C1 = yy_0_2; 

yy_1_1 = ((( yy )"illegal storage class combination")); 

semantic_error(yy_1_1); 

yy_0_3 = yyv_C1; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_44_2:  ; } 

yyErr(2, 817); 

}

return (int )retValue_acc;


}
 

update_qualifier(yyin_1,yyin_2,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Q;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Q = yy_0_1; 

if (yy_0_2[0] != 4){
goto yyfl_45_1; }

yy_0_3 = yyv_Q; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_45_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Q;



 yy yy_0_2;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 4){
goto yyfl_45_2; }

yyv_Q = yy_0_2; 

yy_0_3 = yyv_Q; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_45_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 3){
goto yyfl_45_3; }

if (yy_0_2[0] != 2){
goto yyfl_45_3; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_3 = yyb + 0; 

yy_0_3[0] = 1; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_45_3:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 2){
goto yyfl_45_4; }

if (yy_0_2[0] != 3){
goto yyfl_45_4; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_3 = yyb + 0; 

yy_0_3[0] = 1; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_45_4:  ; } 

{ 



 yy yyb;



 yy yyv_Q;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Q = yy_0_1; 

yyv_Tp = yy_0_2; 

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = ((( yy )"illegal type qualifier combination")); 

semantic_error(yy_1_1); 

yy_0_3 = yyb + 0; 

yy_0_3[0] = 4; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_45_5:  ; } 

yyErr(2, 827); 

}

return (int )retValue_acc;


}
 

make_stclass(yyin_1,yyout_1) 

 yy yyin_1; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 41){
goto yyfl_46_1; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 1; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_46_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 42){
goto yyfl_46_2; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 2; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_46_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 43){
goto yyfl_46_3; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 4; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_46_3:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 44){
goto yyfl_46_4; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 3; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_46_4:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 45){
goto yyfl_46_5; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 5; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_46_5:  ; } 

yyErr(2, 841); 

}

return (int )retValue_acc;


}
 

make_qual(yyin_1,yyout_1) 

 yy yyin_1; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 93){
goto yyfl_47_1; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 2; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_47_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 92){
goto yyfl_47_2; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 3; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_47_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 97){
goto yyfl_47_3; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 3; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_47_3:  ; } 

yyErr(2, 857); 

}

return (int )retValue_acc;


}
 

make_obj_descr(yyin_1,yyin_2,yyin_3,yyin_4,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy yyin_4; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Ident;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_2;



 yy yyv_StClass;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;



 yy yy_0_5_2;



 yy yy_0_5_3;



 yy yy_1_1;



 yy yyv_NStClass;



 yy yy_1_2;



 yy yy_2_1;



 yy yyv_Descr;



 yy yy_2_2;



 yy yy_3_1;



 yy yyv_Size;



 yy yy_3_2;



 yy yyv_LOff;



 yy yy_3_3;



 yy yy_4_1;



 yy yy_4_2;



 yy yy_4_3;



 yy yyv_ObjNr;



 yy yy_4_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_Ident = yy_0_1; 

yyv_Tp = yy_0_2; 

yyv_StClass = yy_0_3; 

if (yy_0_4[0] != 1){
goto yyfl_48_1; }

yyb = yyh; 

yyh += 4; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_StClass; 

normalize_storage_class(yy_1_1, (&yy_1_2)); 

yyv_NStClass = yy_1_2; 

yy_2_1 = yyv_Tp; 

get_tp_descr(yy_2_1, (&yy_2_2)); 

yyv_Descr = yy_2_2; 

yy_3_1 = yyv_Descr; 

td_map_to_param_size_and_local_offset(yy_3_1, (&yy_3_2), (&yy_3_3)); 

yyv_Size = yy_3_2; 

yyv_LOff = yy_3_3; 

yy_4_1 = yyv_Size; 

yy_4_2 = yyv_LOff; 

yy_4_3 = yyv_Ident; 

cg_new_param(yy_4_1, yy_4_2, yy_4_3, (&yy_4_4)); 

yyv_ObjNr = yy_4_4; 

yy_0_5_1 = yyv_Tp; 

yy_0_5_2 = yyv_NStClass; 

yy_0_5_3 = yyv_ObjNr; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 3; 

yy_0_5[1] = (((long )yy_0_5_1)); 

yy_0_5[2] = (((long )yy_0_5_2)); 

yy_0_5[3] = (((long )yy_0_5_3)); 

(*yyout_1) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_48_1:  ; } 

{ 



 yy yyb;



 yy yyv_Ident;



 yy yy_0_1;



 yy yyv_Type;



 yy yy_0_2;



 yy yy_0_3;



 yy yyv_P;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_Ident = yy_0_1; 

yyv_Type = yy_0_2; 

if (yy_0_3[0] != 5){
goto yyfl_48_2; }

yyv_P = yy_0_4; 

yyb = yyh; 

yyh += 2; 

if (yyh > yyhx){
yyExtend(); }

yy_0_5_1 = yyv_Type; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 5; 

yy_0_5[1] = (((long )yy_0_5_1)); 

(*yyout_1) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_48_2:  ; } 

{ 



 yy yyb;



 yy yyv_Ident;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_2;



 yy yyv_StClass;



 yy yy_0_3;



 yy yyv_P;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;



 yy yy_0_5_2;



 yy yy_0_5_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_D;



 yy yy_1_2_1;



 yy yyv_Tp1;



 yy yy_1_2_2;



 yy yy_2_1;



 yy yyv_Linkage;



 yy yy_2_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_Ident = yy_0_1; 

yyv_Tp = yy_0_2; 

yyv_StClass = yy_0_3; 

yyv_P = yy_0_4; 

yyb = yyh; 

yyh += 4; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tp; 

get_tp_descr(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 3){
goto yyfl_48_3; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yyv_D = yy_1_2_1; 

yyv_Tp1 = yy_1_2_2; 

yy_2_1 = yyv_StClass; 

compute_linkage(yy_2_1, (&yy_2_2)); 

yyv_Linkage = yy_2_2; 

yy_0_5_1 = yyv_Tp; 

yy_0_5_2 = yyv_Linkage; 

yy_0_5_3 = yyv_Ident; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 4; 

yy_0_5[1] = (((long )yy_0_5_1)); 

yy_0_5[2] = (((long )yy_0_5_2)); 

yy_0_5[3] = (((long )yy_0_5_3)); 

(*yyout_1) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_48_3:  ; } 

{ 



 yy yyb;



 yy yyv_Ident;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_2;



 yy yyv_StClass;



 yy yy_0_3;



 yy yyv_P;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;



 yy yy_0_5_2;



 yy yy_0_5_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_L;



 yy yy_1_2_1;



 yy yyv_Tp1;



 yy yy_1_2_2;



 yy yy_2_1;



 yy yyv_Linkage;



 yy yy_2_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_Ident = yy_0_1; 

yyv_Tp = yy_0_2; 

yyv_StClass = yy_0_3; 

yyv_P = yy_0_4; 

yyb = yyh; 

yyh += 4; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tp; 

get_tp_descr(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 4){
goto yyfl_48_4; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yyv_L = yy_1_2_1; 

yyv_Tp1 = yy_1_2_2; 

yy_2_1 = yyv_StClass; 

compute_linkage(yy_2_1, (&yy_2_2)); 

yyv_Linkage = yy_2_2; 

yy_0_5_1 = yyv_Tp; 

yy_0_5_2 = yyv_Linkage; 

yy_0_5_3 = yyv_Ident; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 4; 

yy_0_5[1] = (((long )yy_0_5_1)); 

yy_0_5[2] = (((long )yy_0_5_2)); 

yy_0_5[3] = (((long )yy_0_5_3)); 

(*yyout_1) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_48_4:  ; } 

{ 



 yy yyb;



 yy yyv_Ident;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_2;



 yy yyv_StClass;



 yy yy_0_3;



 yy yyv_P;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_1_1;



 yy yyv_Linkage;



 yy yy_1_2;



 yy yy_2_1;



 yy yyv_NStClass;



 yy yy_2_2;



 yy yy_3_1;



 yy yy_3_2;



 yy yy_3_3;



 yy yy_3_4;



 yy yyv_Descr;



 yy yy_3_5;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_Ident = yy_0_1; 

yyv_Tp = yy_0_2; 

yyv_StClass = yy_0_3; 

yyv_P = yy_0_4; 

yy_1_1 = yyv_StClass; 

compute_linkage(yy_1_1, (&yy_1_2)); 

yyv_Linkage = yy_1_2; 

yy_2_1 = yyv_StClass; 

normalize_storage_class(yy_2_1, (&yy_2_2)); 

yyv_NStClass = yy_2_2; 

yy_3_1 = yyv_Ident; 

yy_3_2 = yyv_Tp; 

yy_3_3 = yyv_NStClass; 

yy_3_4 = yyv_Linkage; 

compute_var_descr(yy_3_1, yy_3_2, yy_3_3, yy_3_4, (&yy_3_5)); 

yyv_Descr = yy_3_5; 

yy_0_5 = yyv_Descr; 

(*yyout_1) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_48_5:  ; } 

yyErr(2, 868); 

}

return (int )retValue_acc;


}
 

make_triple_or_complex(yyin_1,yyout_1) 

 yy yyin_1; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yy_0_1_2;



 yy yyv_Tag;



 yy yy_0_1_3;



 yy yyv_L;



 yy yy_0_1_4;



 yy yy_0_2;



 yy yy_0_2_1;



 yy yy_0_2_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yyv_L2;



 yy yy_2_4;



 yy yyv_Offset;



 yy yy_2_5;



 yy yy_3_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 117){
goto yyfl_49_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yy_0_1_4 = ((( yy )yy_0_1[4])); 

yyv_D = yy_0_1_1; 

if (yy_0_1_2[0] != 119){
goto yyfl_49_1; }

yyv_Tag = yy_0_1_3; 

yyv_L = yy_0_1_4; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tag; 

yy_1_2 = yyb + 3; 

yy_1_2[0] = 1; 

handle_start_of_complete_tagged_type(yy_1_1, yy_1_2); 

yy_2_1 = yyv_L; 

yy_2_2 = ((( yy )0)); 

yy_2_3 = yyb + 4; 

yy_2_3[0] = 1; 

process_struct_declaration_list(yy_2_1, yy_2_2, yy_2_3, (&yy_2_4), (&yy_2_5)); 

yyv_L2 = yy_2_4; 

yyv_Offset = yy_2_5; 

yy_3_1 = yyv_L2; 

check_for_duplicate_fieldnames(yy_3_1); 

yy_0_2_1 = yyv_Tag; 

yy_0_2_2 = yyv_L2; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 9; 

yy_0_2[1] = (((long )yy_0_2_1)); 

yy_0_2[2] = (((long )yy_0_2_2)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_49_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yy_0_1_2;



 yy yyv_Tag;



 yy yy_0_1_3;



 yy yyv_L;



 yy yy_0_1_4;



 yy yy_0_2;



 yy yy_0_2_1;



 yy yy_0_2_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yyv_L2;



 yy yy_2_4;



 yy yyv_Offset;



 yy yy_2_5;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 117){
goto yyfl_49_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yy_0_1_4 = ((( yy )yy_0_1[4])); 

yyv_D = yy_0_1_1; 

if (yy_0_1_2[0] != 120){
goto yyfl_49_2; }

yyv_Tag = yy_0_1_3; 

yyv_L = yy_0_1_4; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tag; 

yy_1_2 = yyb + 3; 

yy_1_2[0] = 2; 

handle_start_of_complete_tagged_type(yy_1_1, yy_1_2); 

yy_2_1 = yyv_L; 

yy_2_2 = ((( yy )0)); 

yy_2_3 = yyb + 4; 

yy_2_3[0] = 2; 

process_struct_declaration_list(yy_2_1, yy_2_2, yy_2_3, (&yy_2_4), (&yy_2_5)); 

yyv_L2 = yy_2_4; 

yyv_Offset = yy_2_5; 

yy_0_2_1 = yyv_Tag; 

yy_0_2_2 = yyv_L2; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 8; 

yy_0_2[1] = (((long )yy_0_2_1)); 

yy_0_2[2] = (((long )yy_0_2_2)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_49_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tag;



 yy yy_0_1_1;



 yy yyv_List;



 yy yy_0_1_2;



 yy yy_0_2;



 yy yy_0_2_1;



 yy yy_0_2_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_2;



 yy yyv_AMode;



 yy yy_2_3;



 yy yyv_C;



 yy yy_2_4;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 135){
goto yyfl_49_3; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_Tag = yy_0_1_1; 

yyv_List = yy_0_1_2; 

yyb = yyh; 

yyh += 4; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tag; 

yy_1_2 = yyb + 3; 

yy_1_2[0] = 3; 

handle_start_of_complete_tagged_type(yy_1_1, yy_1_2); 

yy_2_1 = yyv_List; 

yy_2_2 = ((( yy )0)); 

process_enumerator_list(yy_2_1, yy_2_2, (&yy_2_3), (&yy_2_4)); 

yyv_AMode = yy_2_3; 

yyv_C = yy_2_4; 

yy_0_2_1 = yyv_Tag; 

yy_0_2_2 = yyv_AMode; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 10; 

yy_0_2[1] = (((long )yy_0_2_1)); 

yy_0_2[2] = (((long )yy_0_2_2)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_49_3:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yy_0_1_2;



 yy yyv_Tag;



 yy yy_0_1_3;



 yy yy_0_2;



 yy yy_0_2_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 118){
goto yyfl_49_4; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yyv_D = yy_0_1_1; 

if (yy_0_1_2[0] != 119){
goto yyfl_49_4; }

yyv_Tag = yy_0_1_3; 

yyb = yyh; 

yyh += 2; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2_1 = yyv_Tag; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 7; 

yy_0_2[1] = (((long )yy_0_2_1)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_49_4:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yy_0_1_2;



 yy yyv_Tag;



 yy yy_0_1_3;



 yy yy_0_2;



 yy yy_0_2_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 118){
goto yyfl_49_5; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yyv_D = yy_0_1_1; 

if (yy_0_1_2[0] != 120){
goto yyfl_49_5; }

yyv_Tag = yy_0_1_3; 

yyb = yyh; 

yyh += 2; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2_1 = yyv_Tag; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 6; 

yy_0_2[1] = (((long )yy_0_2_1)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_49_5:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tag;



 yy yy_0_1_1;



 yy yy_0_2;



 yy yy_0_2_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 136){
goto yyfl_49_6; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_Tag = yy_0_1_1; 

yyb = yyh; 

yyh += 2; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2_1 = yyv_Tag; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 11; 

yy_0_2[1] = (((long )yy_0_2_1)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_49_6:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_2_1;



 yy yy_0_2_2;



 yy yy_0_2_3;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 68){
goto yyfl_49_7; }

yyb = yyh; 

yyh += 7; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2_1 = yyb + 4; 

yy_0_2_1[0] = 1; 

yy_0_2_2 = yyb + 5; 

yy_0_2_2[0] = 1; 

yy_0_2_3 = yyb + 6; 

yy_0_2_3[0] = 2; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 13; 

yy_0_2[1] = (((long )yy_0_2_1)); 

yy_0_2[2] = (((long )yy_0_2_2)); 

yy_0_2[3] = (((long )yy_0_2_3)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_49_7:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_2_1;



 yy yy_0_2_2;



 yy yy_0_2_3;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 69){
goto yyfl_49_8; }

yyb = yyh; 

yyh += 7; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2_1 = yyb + 4; 

yy_0_2_1[0] = 1; 

yy_0_2_2 = yyb + 5; 

yy_0_2_2[0] = 1; 

yy_0_2_3 = yyb + 6; 

yy_0_2_3[0] = 3; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 13; 

yy_0_2[1] = (((long )yy_0_2_1)); 

yy_0_2[2] = (((long )yy_0_2_2)); 

yy_0_2[3] = (((long )yy_0_2_3)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_49_8:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_2_1;



 yy yy_0_2_2;



 yy yy_0_2_3;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 70){
goto yyfl_49_9; }

yyb = yyh; 

yyh += 7; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2_1 = yyb + 4; 

yy_0_2_1[0] = 1; 

yy_0_2_2 = yyb + 5; 

yy_0_2_2[0] = 2; 

yy_0_2_3 = yyb + 6; 

yy_0_2_3[0] = 1; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 13; 

yy_0_2[1] = (((long )yy_0_2_1)); 

yy_0_2[2] = (((long )yy_0_2_2)); 

yy_0_2[3] = (((long )yy_0_2_3)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_49_9:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_2_1;



 yy yy_0_2_2;



 yy yy_0_2_3;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 71){
goto yyfl_49_10; }

yyb = yyh; 

yyh += 7; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2_1 = yyb + 4; 

yy_0_2_1[0] = 1; 

yy_0_2_2 = yyb + 5; 

yy_0_2_2[0] = 1; 

yy_0_2_3 = yyb + 6; 

yy_0_2_3[0] = 6; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 13; 

yy_0_2[1] = (((long )yy_0_2_1)); 

yy_0_2[2] = (((long )yy_0_2_2)); 

yy_0_2[3] = (((long )yy_0_2_3)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_49_10:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_2_1;



 yy yy_0_2_2;



 yy yy_0_2_3;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 74){
goto yyfl_49_11; }

yyb = yyh; 

yyh += 7; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2_1 = yyb + 4; 

yy_0_2_1[0] = 1; 

yy_0_2_2 = yyb + 5; 

yy_0_2_2[0] = 3; 

yy_0_2_3 = yyb + 6; 

yy_0_2_3[0] = 1; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 13; 

yy_0_2[1] = (((long )yy_0_2_1)); 

yy_0_2[2] = (((long )yy_0_2_2)); 

yy_0_2[3] = (((long )yy_0_2_3)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_49_11:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_2_1;



 yy yy_0_2_2;



 yy yy_0_2_3;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 75){
goto yyfl_49_12; }

yyb = yyh; 

yyh += 7; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2_1 = yyb + 4; 

yy_0_2_1[0] = 1; 

yy_0_2_2 = yyb + 5; 

yy_0_2_2[0] = 1; 

yy_0_2_3 = yyb + 6; 

yy_0_2_3[0] = 4; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 13; 

yy_0_2[1] = (((long )yy_0_2_1)); 

yy_0_2[2] = (((long )yy_0_2_2)); 

yy_0_2[3] = (((long )yy_0_2_3)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_49_12:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_2_1;



 yy yy_0_2_2;



 yy yy_0_2_3;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 76){
goto yyfl_49_13; }

yyb = yyh; 

yyh += 7; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2_1 = yyb + 4; 

yy_0_2_1[0] = 1; 

yy_0_2_2 = yyb + 5; 

yy_0_2_2[0] = 1; 

yy_0_2_3 = yyb + 6; 

yy_0_2_3[0] = 5; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 13; 

yy_0_2[1] = (((long )yy_0_2_1)); 

yy_0_2[2] = (((long )yy_0_2_2)); 

yy_0_2[3] = (((long )yy_0_2_3)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_49_13:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_2_1;



 yy yy_0_2_2;



 yy yy_0_2_3;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 77){
goto yyfl_49_14; }

yyb = yyh; 

yyh += 7; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2_1 = yyb + 4; 

yy_0_2_1[0] = 2; 

yy_0_2_2 = yyb + 5; 

yy_0_2_2[0] = 1; 

yy_0_2_3 = yyb + 6; 

yy_0_2_3[0] = 1; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 13; 

yy_0_2[1] = (((long )yy_0_2_1)); 

yy_0_2[2] = (((long )yy_0_2_2)); 

yy_0_2[3] = (((long )yy_0_2_3)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_49_14:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_2_1;



 yy yy_0_2_2;



 yy yy_0_2_3;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 79){
goto yyfl_49_15; }

yyb = yyh; 

yyh += 7; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2_1 = yyb + 4; 

yy_0_2_1[0] = 3; 

yy_0_2_2 = yyb + 5; 

yy_0_2_2[0] = 1; 

yy_0_2_3 = yyb + 6; 

yy_0_2_3[0] = 1; 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 13; 

yy_0_2[1] = (((long )yy_0_2_1)); 

yy_0_2[2] = (((long )yy_0_2_2)); 

yy_0_2[3] = (((long )yy_0_2_3)); 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_49_15:  ; } 

{ 



 yy yyb;



 yy yyv_T;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yyv_T = yy_0_1; 

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = ((( yy )"in make-triple-or-complex")); 

compiler_error(yy_1_1); 

yy_0_2 = yyb + 0; 

yy_0_2[0] = 1; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_49_16:  ; } 

yyErr(2, 898); 

}

return (int )retValue_acc;


}
 

split_qualified_type(yyin_1,yyin_2,yyout_1,yyout_2) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1; 

 yy *yyout_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Q1;



 yy yy_0_1_1;



 yy yyv_Tp;



 yy yy_0_1_2;



 yy yyv_Q2;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_4_1;



 yy yy_0_4_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Qual;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 5){
goto yyfl_50_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_Q1 = yy_0_1_1; 

yyv_Tp = yy_0_1_2; 

yyv_Q2 = yy_0_2; 

yyb = yyh; 

yyh += 4; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Q1; 

yy_1_2 = yyv_Q2; 

update_qualifier(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Qual = yy_1_3; 

yy_0_3 = yyb + 0; 

yy_0_3[0] = 4; 

yy_0_4_1 = yyv_Qual; 

yy_0_4_2 = yyv_Tp; 

yy_0_4 = yyb + 1; 

yy_0_4[0] = 5; 

yy_0_4[1] = (((long )yy_0_4_1)); 

yy_0_4[2] = (((long )yy_0_4_2)); 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_50_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Q1;



 yy yy_0_1_1;



 yy yyv_Tp;



 yy yy_0_1_2;



 yy yyv_Q2;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Qual;



 yy yy_1_3;



 yy yy_2_1;



 yy yyv_TpDescr;



 yy yy_2_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 12){
goto yyfl_50_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_Q1 = yy_0_1_1; 

yyv_Tp = yy_0_1_2; 

yyv_Q2 = yy_0_2; 

yy_1_1 = yyv_Q1; 

yy_1_2 = yyv_Q2; 

update_qualifier(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Qual = yy_1_3; 

yy_2_1 = yyv_Tp; 

get_tp_descr(yy_2_1, (&yy_2_2)); 

yyv_TpDescr = yy_2_2; 

yy_0_3 = yyv_Qual; 

yy_0_4 = yyv_TpDescr; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_50_2:  ; } 

{ 



 yy yyb;



 yy yyv_TpDescr;



 yy yy_0_1;



 yy yyv_Q;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_TpDescr = yy_0_1; 

yyv_Q = yy_0_2; 

yy_0_3 = yyv_Q; 

yy_0_4 = yyv_TpDescr; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_50_3:  ; } 

yyErr(2, 947); 

}

return (int )retValue_acc;


}
 

make_param_type_list(yyin_1,yyin_2,yyin_3,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yyv_Ident;



 yy yy_0_1_2;



 yy yyv_TypedNameList;



 yy yy_0_2;



 yy yyv_OldParamTypes;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Tp;



 yy yy_1_3;



 yy yyv_StC;



 yy yy_1_4;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yy_2_3_1;



 yy yy_2_3_1_1;



 yy yy_2_3_1_1_1;



 yy yy_2_3_1_2;



 yy yy_2_3_1_3;



 yy yy_2_3_2;



 yy yyv_ParamTypes;



 yy yy_2_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 27){
goto yyfl_51_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_D = yy_0_1_1; 

yyv_Ident = yy_0_1_2; 

yyv_TypedNameList = yy_0_2; 

yyv_OldParamTypes = yy_0_3; 

yyb = yyh; 

yyh += 9; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Ident; 

yy_1_2 = yyv_TypedNameList; 

if ((!lookup_param_type(yy_1_1, yy_1_2, (&yy_1_3), (&yy_1_4)))){
goto yyfl_51_1; }

yyv_Tp = yy_1_3; 

yyv_StC = yy_1_4; 

yy_2_1 = yyv_D; 

yy_2_2 = yyv_TypedNameList; 

yy_2_3_1_1_1 = yyv_Ident; 

yy_2_3_1_1 = yyb + 7; 

yy_2_3_1_1[0] = 1; 

yy_2_3_1_1[1] = (((long )yy_2_3_1_1_1)); 

yy_2_3_1_2 = yyv_Tp; 

yy_2_3_1_3 = yyv_StC; 

yy_2_3_1 = yyb + 3; 

yy_2_3_1[0] = 2; 

yy_2_3_1[1] = (((long )yy_2_3_1_1)); 

yy_2_3_1[2] = (((long )yy_2_3_1_2)); 

yy_2_3_1[3] = (((long )yy_2_3_1_3)); 

yy_2_3_2 = yyv_OldParamTypes; 

yy_2_3 = yyb + 0; 

yy_2_3[0] = 2; 

yy_2_3[1] = (((long )yy_2_3_1)); 

yy_2_3[2] = (((long )yy_2_3_2)); 

make_param_type_list(yy_2_1, yy_2_2, yy_2_3, (&yy_2_4)); 

yyv_ParamTypes = yy_2_4; 

yy_0_4 = yyv_ParamTypes; 

(*yyout_1) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_51_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_D;



 yy yy_0_1_1;



 yy yyv_Ident;



 yy yy_0_1_2;



 yy yyv_TypedNameList;



 yy yy_0_2;



 yy yyv_OldParamTypes;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_1_1;



 yy yy_1_1_2;



 yy yy_1_1_3;



 yy yyv_Tp1;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_1_1;



 yy yy_2_1_2;



 yy yyv_Tp2;



 yy yy_2_2;



 yy yy_3_1;



 yy yy_3_2;



 yy yy_3_3;



 yy yy_3_3_1;



 yy yy_3_3_1_1;



 yy yy_3_3_1_1_1;



 yy yy_3_3_1_2;



 yy yy_3_3_1_3;



 yy yy_3_3_2;



 yy yyv_ParamTypes;



 yy yy_3_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 27){
goto yyfl_51_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_D = yy_0_1_1; 

yyv_Ident = yy_0_1_2; 

yyv_TypedNameList = yy_0_2; 

yyv_OldParamTypes = yy_0_3; 

yyb = yyh; 

yyh += 21; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1_1 = yyb + 4; 

yy_1_1_1[0] = 2; 

yy_1_1_2 = yyb + 5; 

yy_1_1_2[0] = 1; 

yy_1_1_3 = yyb + 6; 

yy_1_1_3[0] = 6; 

yy_1_1 = yyb + 0; 

yy_1_1[0] = 13; 

yy_1_1[1] = (((long )yy_1_1_1)); 

yy_1_1[2] = (((long )yy_1_1_2)); 

yy_1_1[3] = (((long )yy_1_1_3)); 

make_type_and_size(yy_1_1, (&yy_1_2)); 

yyv_Tp1 = yy_1_2; 

yy_2_1_1 = yyb + 10; 

yy_2_1_1[0] = 4; 

yy_2_1_2 = yyv_Tp1; 

yy_2_1 = yyb + 7; 

yy_2_1[0] = 12; 

yy_2_1[1] = (((long )yy_2_1_1)); 

yy_2_1[2] = (((long )yy_2_1_2)); 

make_type_and_size(yy_2_1, (&yy_2_2)); 

yyv_Tp2 = yy_2_2; 

yy_3_1 = yyv_D; 

yy_3_2 = yyv_TypedNameList; 

yy_3_3_1_1_1 = yyv_Ident; 

yy_3_3_1_1 = yyb + 18; 

yy_3_3_1_1[0] = 1; 

yy_3_3_1_1[1] = (((long )yy_3_3_1_1_1)); 

yy_3_3_1_2 = yyv_Tp2; 

yy_3_3_1_3 = yyb + 20; 

yy_3_3_1_3[0] = 6; 

yy_3_3_1 = yyb + 14; 

yy_3_3_1[0] = 2; 

yy_3_3_1[1] = (((long )yy_3_3_1_1)); 

yy_3_3_1[2] = (((long )yy_3_3_1_2)); 

yy_3_3_1[3] = (((long )yy_3_3_1_3)); 

yy_3_3_2 = yyv_OldParamTypes; 

yy_3_3 = yyb + 11; 

yy_3_3[0] = 2; 

yy_3_3[1] = (((long )yy_3_3_1)); 

yy_3_3[2] = (((long )yy_3_3_2)); 

make_param_type_list(yy_3_1, yy_3_2, yy_3_3, (&yy_3_4)); 

yyv_ParamTypes = yy_3_4; 

yy_0_4 = yyv_ParamTypes; 

(*yyout_1) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_51_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_TypedNameList;



 yy yy_0_2;



 yy yyv_PT;



 yy yy_0_3;



 yy yy_0_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 28){
goto yyfl_51_3; }

yyv_TypedNameList = yy_0_2; 

yyv_PT = yy_0_3; 

yy_0_4 = yyv_PT; 

(*yyout_1) = yy_0_4; 


return (int )retValue_acc;
 

yyfl_51_3:  ; } 

yyErr(2, 966); 

}

return (int )retValue_acc;


}
 

int test_and_handle_vacous_tagged_type(yyin_1,yyin_2,yyin_3,yyin_4) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy yyin_4;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_C;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yyv_Tag;



 yy yy_0_3_1;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_C = yy_0_1; 

if (yy_0_2[0] != 4){
goto yyfl_52_1; }

if (yy_0_3[0] != 7){
goto yyfl_52_1; }

yy_0_3_1 = ((( yy )yy_0_3[1])); 

yyv_Tag = yy_0_3_1; 

if (yy_0_4[0] != 19){
goto yyfl_52_1; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tag; 

yy_1_2 = yyb + 0; 

yy_1_2[0] = 1; 

make_tag_meaning_if_not_declared_in_same_scope(yy_1_1, yy_1_2); 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_52_1:  ; } 

{ 



 yy yyb;



 yy yyv_C;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yyv_Tag;



 yy yy_0_3_1;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_C = yy_0_1; 

if (yy_0_2[0] != 4){
goto yyfl_52_2; }

if (yy_0_3[0] != 6){
goto yyfl_52_2; }

yy_0_3_1 = ((( yy )yy_0_3[1])); 

yyv_Tag = yy_0_3_1; 

if (yy_0_4[0] != 19){
goto yyfl_52_2; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tag; 

yy_1_2 = yyb + 0; 

yy_1_2[0] = 2; 

make_tag_meaning_if_not_declared_in_same_scope(yy_1_1, yy_1_2); 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_52_2:  ; } 

{ 



 yy yyb;



 yy yyv_StorageClass;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yyv_Tag;



 yy yy_0_3_1;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_StorageClass = yy_0_1; 

if (yy_0_2[0] != 4){
goto yyfl_52_3; }

if (yy_0_3[0] != 11){
goto yyfl_52_3; }

yy_0_3_1 = ((( yy )yy_0_3[1])); 

yyv_Tag = yy_0_3_1; 

if (yy_0_4[0] != 19){
goto yyfl_52_3; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tag; 

yy_1_2 = yyb + 0; 

yy_1_2[0] = 3; 

make_tag_meaning_if_not_declared_in_same_scope(yy_1_1, yy_1_2); 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_52_3:  ; } 


retValue_acc = 0;
return (int )retValue_acc;
 

}

return (int )retValue_acc;


}
 

declare_forward_if_not_current_nest(yyin_1,yyin_2,yyin_3,yyin_4) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy yyin_4;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Objdescr;



 yy yy_0_1;



 yy yyv_Tag;



 yy yy_0_2;



 yy yyv_Kind;



 yy yy_0_3;



 yy yyv_Nest;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_2_1;



 yy yy_2_2;



 yy yyv_Tp;



 yy yy_2_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_Objdescr = yy_0_1; 

yyv_Tag = yy_0_2; 

yyv_Kind = yy_0_3; 

yyv_Nest = yy_0_4; 

yy_1_1 = yyv_Nest; 

if ((!test_not_current_nest(yy_1_1))){
goto yyfl_53_1; }

yy_2_1 = yyv_Tag; 

yy_2_2 = yyv_Kind; 

declare_forward_tagged_type(yy_2_1, yy_2_2, (&yy_2_3)); 

yyv_Tp = yy_2_3; 


return (int )retValue_acc;
 

yyfl_53_1:  ; } 

{ 



 yy yyb;



 yy yyv_Objdescr;



 yy yy_0_1;



 yy yyv_Tag;



 yy yy_0_2;



 yy yyv_Kind;



 yy yy_0_3;



 yy yyv_Nest;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_Objdescr = yy_0_1; 

yyv_Tag = yy_0_2; 

yyv_Kind = yy_0_3; 

yyv_Nest = yy_0_4; 

yy_1_1 = yyv_Objdescr; 

yy_1_2 = yyv_Kind; 

test_equal_tag_kind(yy_1_1, yy_1_2); 


return (int )retValue_acc;
 

yyfl_53_2:  ; } 

yyErr(2, 1002); 

}

return (int )retValue_acc;


}
 

get_type_of_tagged_object(yyin_1,yyout_1) 

 yy yyin_1; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_1_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 9){
goto yyfl_54_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_Tp = yy_0_1_1; 

yy_0_2 = yyv_Tp; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_54_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_1_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 8){
goto yyfl_54_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_Tp = yy_0_1_1; 

yy_0_2 = yyv_Tp; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_54_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_1_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 7){
goto yyfl_54_3; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_Tp = yy_0_1_1; 

yy_0_2 = yyv_Tp; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_54_3:  ; } 

yyErr(2, 1018); 

}

return (int )retValue_acc;


}
 

make_forward_declaration_if_necessary(yyin_1,yyin_2,yyin_3,yyin_4) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy yyin_4;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Objdescr;



 yy yy_0_1;



 yy yyv_Tag;



 yy yy_0_2;



 yy yyv_Kind;



 yy yy_0_3;



 yy yyv_NestLevel;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_2_1;



 yy yy_2_2;



 yy yyv_Tp;



 yy yy_2_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_Objdescr = yy_0_1; 

yyv_Tag = yy_0_2; 

yyv_Kind = yy_0_3; 

yyv_NestLevel = yy_0_4; 

yy_1_1 = yyv_NestLevel; 

if ((!test_not_current_nest(yy_1_1))){
goto yyfl_55_1; }

yy_2_1 = yyv_Tag; 

yy_2_2 = yyv_Kind; 

declare_forward_tagged_type(yy_2_1, yy_2_2, (&yy_2_3)); 

yyv_Tp = yy_2_3; 


return (int )retValue_acc;
 

yyfl_55_1:  ; } 

{ 



 yy yyb;



 yy yyv_Objdescr;



 yy yy_0_1;



 yy yyv_Tag;



 yy yy_0_2;



 yy yyv_Kind;



 yy yy_0_3;



 yy yyv_NestLevel;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;



 yy yy_2_1;



 yy yyv_Tp;



 yy yy_2_2;



 yy yy_3_1;



 yy yyv_Tpdescr;



 yy yy_3_2;



 yy yy_4_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_Objdescr = yy_0_1; 

yyv_Tag = yy_0_2; 

yyv_Kind = yy_0_3; 

yyv_NestLevel = yy_0_4; 

yy_1_1 = yyv_Objdescr; 

yy_1_2 = yyv_Kind; 

test_equal_tag_kind(yy_1_1, yy_1_2); 

yy_2_1 = yyv_Objdescr; 

get_type_of_tagged_object(yy_2_1, (&yy_2_2)); 

yyv_Tp = yy_2_2; 

yy_3_1 = yyv_Tp; 

get_tp_descr(yy_3_1, (&yy_3_2)); 

yyv_Tpdescr = yy_3_2; 

yy_4_1 = yyv_Tpdescr; 

test_already_completely_declared(yy_4_1); 


return (int )retValue_acc;
 

yyfl_55_2:  ; } 

yyErr(2, 1028); 

}

return (int )retValue_acc;


}
 

test_already_completely_declared(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_I;



 yy yy_0_1_1;



 yy yyv_T;



 yy yy_0_1_2;



 yy yy_1_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 10){
goto yyfl_56_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_I = yy_0_1_1; 

yyv_T = yy_0_1_2; 

yy_1_1 = ((( yy )"redefinition of complete enum type in same scope not allowed")); 

semantic_error(yy_1_1); 


return (int )retValue_acc;
 

yyfl_56_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_I;



 yy yy_0_1_1;



 yy yyv_F;



 yy yy_0_1_2;



 yy yy_1_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 9){
goto yyfl_56_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_I = yy_0_1_1; 

yyv_F = yy_0_1_2; 

yy_1_1 = ((( yy )"redefinition of complete structure type in same scope not allowed")); 

semantic_error(yy_1_1); 


return (int )retValue_acc;
 

yyfl_56_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_I;



 yy yy_0_1_1;



 yy yyv_F;



 yy yy_0_1_2;



 yy yy_1_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 8){
goto yyfl_56_3; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_I = yy_0_1_1; 

yyv_F = yy_0_1_2; 

yy_1_1 = ((( yy )"redefinition of complete union type in same scope not allowed")); 

semantic_error(yy_1_1); 


return (int )retValue_acc;
 

yyfl_56_3:  ; } 

{ 



 yy yyb;



 yy yyv_Tpdescr;



 yy yy_0_1;

yy_0_1 = yyin_1; 

yyv_Tpdescr = yy_0_1; 


return (int )retValue_acc;
 

yyfl_56_4:  ; } 

yyErr(2, 1051); 

}

return (int )retValue_acc;


}
 

make_tag_meaning_if_not_declared_in_same_scope(yyin_1,yyin_2) 

 yy yyin_1; 

 yy yyin_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Tag;



 yy yy_0_1;



 yy yyv_Kind;



 yy yy_0_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_2;



 yy yyv_Tp;



 yy yy_2_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Tag = yy_0_1; 

yyv_Kind = yy_0_2; 

yy_1_1 = yyv_Tag; 

GetTagMeaning0(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 1){
goto yyfl_57_1; }

yy_2_1 = yyv_Tag; 

yy_2_2 = yyv_Kind; 

declare_forward_tagged_type(yy_2_1, yy_2_2, (&yy_2_3)); 

yyv_Tp = yy_2_3; 


return (int )retValue_acc;
 

yyfl_57_1:  ; } 

{ 



 yy yyb;



 yy yyv_Tag;



 yy yy_0_1;



 yy yyv_Kind;



 yy yy_0_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_T;



 yy yy_1_2_1;



 yy yyv_Nest;



 yy yy_1_2_2;



 yy yyv_Objdescr;



 yy yy_1_2_3;



 yy yyv_O;



 yy yy_1_2_4;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yy_2_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Tag = yy_0_1; 

yyv_Kind = yy_0_2; 

yy_1_1 = yyv_Tag; 

GetTagMeaning0(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 2){
goto yyfl_57_2; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yy_1_2_3 = ((( yy )yy_1_2[3])); 

yy_1_2_4 = ((( yy )yy_1_2[4])); 

yyv_T = yy_1_2_1; 

yyv_Nest = yy_1_2_2; 

yyv_Objdescr = yy_1_2_3; 

yyv_O = yy_1_2_4; 

yy_2_1 = yyv_Objdescr; 

yy_2_2 = yyv_Tag; 

yy_2_3 = yyv_Kind; 

yy_2_4 = yyv_Nest; 

declare_forward_if_not_current_nest(yy_2_1, yy_2_2, yy_2_3, yy_2_4); 


return (int )retValue_acc;
 

yyfl_57_2:  ; } 

yyErr(2, 1070); 

}

return (int )retValue_acc;


}
 

make_tag_meaning_if_not_existent(yyin_1,yyin_2,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Tag;



 yy yy_0_1;



 yy yyv_Kind;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_T;



 yy yy_1_2_1;



 yy yyv_Nest;



 yy yy_1_2_2;



 yy yyv_Objdescr;



 yy yy_1_2_3;



 yy yyv_O;



 yy yy_1_2_4;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_3_1;



 yy yyv_Tp;



 yy yy_3_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Tag = yy_0_1; 

yyv_Kind = yy_0_2; 

yy_1_1 = yyv_Tag; 

if ((!GetTagMeaning(yy_1_1, (&yy_1_2)))){
goto yyfl_58_1; }

if (yy_1_2[0] != 2){
goto yyfl_58_1; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yy_1_2_3 = ((( yy )yy_1_2[3])); 

yy_1_2_4 = ((( yy )yy_1_2[4])); 

yyv_T = yy_1_2_1; 

yyv_Nest = yy_1_2_2; 

yyv_Objdescr = yy_1_2_3; 

yyv_O = yy_1_2_4; 

yy_2_1 = yyv_Objdescr; 

yy_2_2 = yyv_Kind; 

test_equal_tag_kind(yy_2_1, yy_2_2); 

yy_3_1 = yyv_Objdescr; 

get_type_of_tagged_object(yy_3_1, (&yy_3_2)); 

yyv_Tp = yy_3_2; 

yy_0_3 = yyv_Tp; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_58_1:  ; } 

{ 



 yy yyb;



 yy yyv_Tag;



 yy yy_0_1;



 yy yyv_Kind;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Tp;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Tag = yy_0_1; 

yyv_Kind = yy_0_2; 

yy_1_1 = yyv_Tag; 

yy_1_2 = yyv_Kind; 

declare_forward_tagged_type(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Tp = yy_1_3; 

yy_0_3 = yyv_Tp; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_58_2:  ; } 

yyErr(2, 1085); 

}

return (int )retValue_acc;


}
 

test_and_handle_tag(yyin_1,yyin_2,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_TpDescr;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yyv_Tp;



 yy yy_1_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 2){
goto yyfl_59_1; }

yyv_TpDescr = yy_0_2; 

yy_1_1 = yyv_TpDescr; 

make_type_and_size(yy_1_1, (&yy_1_2)); 

yyv_Tp = yy_1_2; 

yy_0_3 = yyv_Tp; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_59_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Id;



 yy yy_0_1_1;



 yy yyv_TpDescr;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yyv_Tp;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_3_1;



 yy yyv_TpSize;



 yy yy_3_2;



 yy yy_4_1;



 yy yy_4_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 1){
goto yyfl_59_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_Id = yy_0_1_1; 

yyv_TpDescr = yy_0_2; 

yy_1_1 = yyv_Id; 

apply_tag_and_return_typekey(yy_1_1, (&yy_1_2)); 

yyv_Tp = yy_1_2; 

yy_2_1 = yyv_Tp; 

yy_2_2 = yyv_TpDescr; 

put_tp_descr(yy_2_1, yy_2_2); 

yy_3_1 = yyv_TpDescr; 

td_map_to_size(yy_3_1, (&yy_3_2)); 

yyv_TpSize = yy_3_2; 

yy_4_1 = yyv_Tp; 

yy_4_2 = yyv_TpSize; 

put_tp_size(yy_4_1, yy_4_2); 

yy_0_3 = yyv_Tp; 

(*yyout_1) = yy_0_3; 


return (int )retValue_acc;
 

yyfl_59_2:  ; } 

yyErr(2, 1101); 

}

return (int )retValue_acc;


}
 

test_equal_tag_kind(yyin_1,yyin_2) 

 yy yyin_1; 

 yy yyin_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_1_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 7){
goto yyfl_60_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_Tp = yy_0_1_1; 

if (yy_0_2[0] != 3){
goto yyfl_60_1; }


return (int )retValue_acc;
 

yyfl_60_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_1_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 8){
goto yyfl_60_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_Tp = yy_0_1_1; 

if (yy_0_2[0] != 1){
goto yyfl_60_2; }


return (int )retValue_acc;
 

yyfl_60_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_1_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 9){
goto yyfl_60_3; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_Tp = yy_0_1_1; 

if (yy_0_2[0] != 2){
goto yyfl_60_3; }


return (int )retValue_acc;
 

yyfl_60_3:  ; } 

{ 



 yy yyb;



 yy yyv_O;



 yy yy_0_1;



 yy yyv_Kind;



 yy yy_0_2;



 yy yy_1_1;



 yy yyv_Tp;



 yy yy_2_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_O = yy_0_1; 

yyv_Kind = yy_0_2; 

yy_1_1 = ((( yy )"equal tags for different tagged types not allowed in same scope")); 

semantic_error(yy_1_1); 

make_tp((&yy_2_1)); 

yyv_Tp = yy_2_1; 


return (int )retValue_acc;
 

yyfl_60_4:  ; } 

yyErr(2, 1119); 

}

return (int )retValue_acc;


}
 

handle_start_of_complete_tagged_type(yyin_1,yyin_2) 

 yy yyin_1; 

 yy yyin_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Kind;



 yy yy_0_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 2){
goto yyfl_61_1; }

yyv_Kind = yy_0_2; 


return (int )retValue_acc;
 

yyfl_61_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tag;



 yy yy_0_1_1;



 yy yyv_Kind;



 yy yy_0_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_T;



 yy yy_1_2_1;



 yy yyv_Nest;



 yy yy_1_2_2;



 yy yyv_Objdescr;



 yy yy_1_2_3;



 yy yyv_O;



 yy yy_1_2_4;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;



 yy yy_2_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 1){
goto yyfl_61_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_Tag = yy_0_1_1; 

yyv_Kind = yy_0_2; 

yy_1_1 = yyv_Tag; 

if ((!GetTagMeaning(yy_1_1, (&yy_1_2)))){
goto yyfl_61_2; }

if (yy_1_2[0] != 2){
goto yyfl_61_2; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yy_1_2_3 = ((( yy )yy_1_2[3])); 

yy_1_2_4 = ((( yy )yy_1_2[4])); 

yyv_T = yy_1_2_1; 

yyv_Nest = yy_1_2_2; 

yyv_Objdescr = yy_1_2_3; 

yyv_O = yy_1_2_4; 

yy_2_1 = yyv_Objdescr; 

yy_2_2 = yyv_Tag; 

yy_2_3 = yyv_Kind; 

yy_2_4 = yyv_Nest; 

make_forward_declaration_if_necessary(yy_2_1, yy_2_2, yy_2_3, yy_2_4); 


return (int )retValue_acc;
 

yyfl_61_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tag;



 yy yy_0_1_1;



 yy yyv_Kind;



 yy yy_0_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Tp;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 1){
goto yyfl_61_3; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_Tag = yy_0_1_1; 

yyv_Kind = yy_0_2; 

yy_1_1 = yyv_Tag; 

yy_1_2 = yyv_Kind; 

declare_forward_tagged_type(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Tp = yy_1_3; 


return (int )retValue_acc;
 

yyfl_61_3:  ; } 

yyErr(2, 1136); 

}

return (int )retValue_acc;


}
 

int test_complete_tagged_type(yyin_1,yyin_2,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_I;



 yy yy_0_2_1;



 yy yyv_T;



 yy yy_0_2_2;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 4){
goto yyfl_62_1; }

if (yy_0_2[0] != 10){
goto yyfl_62_1; }

yy_0_2_1 = ((( yy )yy_0_2[1])); 

yy_0_2_2 = ((( yy )yy_0_2[2])); 

yyv_I = yy_0_2_1; 

yyv_T = yy_0_2_2; 

yy_0_3 = yyv_I; 

(*yyout_1) = yy_0_3; 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_62_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_T;



 yy yy_0_2_1;



 yy yyv_L;



 yy yy_0_2_2;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 4){
goto yyfl_62_2; }

if (yy_0_2[0] != 9){
goto yyfl_62_2; }

yy_0_2_1 = ((( yy )yy_0_2[1])); 

yy_0_2_2 = ((( yy )yy_0_2[2])); 

yyv_T = yy_0_2_1; 

yyv_L = yy_0_2_2; 

yy_0_3 = yyv_T; 

(*yyout_1) = yy_0_3; 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_62_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_T;



 yy yy_0_2_1;



 yy yyv_L;



 yy yy_0_2_2;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 4){
goto yyfl_62_3; }

if (yy_0_2[0] != 8){
goto yyfl_62_3; }

yy_0_2_1 = ((( yy )yy_0_2[1])); 

yy_0_2_2 = ((( yy )yy_0_2[2])); 

yyv_T = yy_0_2_1; 

yyv_L = yy_0_2_2; 

yy_0_3 = yyv_T; 

(*yyout_1) = yy_0_3; 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_62_3:  ; } 


retValue_acc = 0;
return (int )retValue_acc;
 

}

return (int )retValue_acc;


}
 

int test_and_handle_incomplete_tagged_type(yyin_1,yyin_2,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_Tag;



 yy yy_0_2_1;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Tp;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 4){
goto yyfl_63_1; }

if (yy_0_2[0] != 7){
goto yyfl_63_1; }

yy_0_2_1 = ((( yy )yy_0_2[1])); 

yyv_Tag = yy_0_2_1; 

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tag; 

yy_1_2 = yyb + 0; 

yy_1_2[0] = 1; 

make_tag_meaning_if_not_existent(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Tp = yy_1_3; 

yy_0_3 = yyv_Tp; 

(*yyout_1) = yy_0_3; 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_63_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_Tag;



 yy yy_0_2_1;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Tp;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 4){
goto yyfl_63_2; }

if (yy_0_2[0] != 6){
goto yyfl_63_2; }

yy_0_2_1 = ((( yy )yy_0_2[1])); 

yyv_Tag = yy_0_2_1; 

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tag; 

yy_1_2 = yyb + 0; 

yy_1_2[0] = 2; 

make_tag_meaning_if_not_existent(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Tp = yy_1_3; 

yy_0_3 = yyv_Tp; 

(*yyout_1) = yy_0_3; 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_63_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_Tag;



 yy yy_0_2_1;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Tp;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 4){
goto yyfl_63_3; }

if (yy_0_2[0] != 11){
goto yyfl_63_3; }

yy_0_2_1 = ((( yy )yy_0_2[1])); 

yyv_Tag = yy_0_2_1; 

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tag; 

yy_1_2 = yyb + 0; 

yy_1_2[0] = 3; 

make_tag_meaning_if_not_existent(yy_1_1, yy_1_2, (&yy_1_3)); 

yyv_Tp = yy_1_3; 

yy_0_3 = yyv_Tp; 

(*yyout_1) = yy_0_3; 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_63_3:  ; } 


retValue_acc = 0;
return (int )retValue_acc;
 

}

return (int )retValue_acc;


}
 

int test_not_simple_type(yyin_1,yyin_2) 

 yy yyin_1; 

 yy yyin_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_E;



 yy yy_0_2_1;



 yy yyv_Tp;



 yy yy_0_2_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 4){
goto yyfl_64_1; }

if (yy_0_2[0] != 2){
goto yyfl_64_1; }

yy_0_2_1 = ((( yy )yy_0_2[1])); 

yy_0_2_2 = ((( yy )yy_0_2[2])); 

yyv_E = yy_0_2_1; 

yyv_Tp = yy_0_2_2; 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_64_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_I;



 yy yy_0_2_1;



 yy yyv_Tp;



 yy yy_0_2_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 4){
goto yyfl_64_2; }

if (yy_0_2[0] != 4){
goto yyfl_64_2; }

yy_0_2_1 = ((( yy )yy_0_2[1])); 

yy_0_2_2 = ((( yy )yy_0_2[2])); 

yyv_I = yy_0_2_1; 

yyv_Tp = yy_0_2_2; 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_64_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_Tpdescr;



 yy yy_0_2_1;



 yy yyv_Tp;



 yy yy_0_2_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 4){
goto yyfl_64_3; }

if (yy_0_2[0] != 5){
goto yyfl_64_3; }

yy_0_2_1 = ((( yy )yy_0_2[1])); 

yy_0_2_2 = ((( yy )yy_0_2[2])); 

yyv_Tpdescr = yy_0_2_1; 

yyv_Tp = yy_0_2_2; 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_64_3:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_D;



 yy yy_0_2_1;



 yy yyv_Tp;



 yy yy_0_2_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 4){
goto yyfl_64_4; }

if (yy_0_2[0] != 3){
goto yyfl_64_4; }

yy_0_2_1 = ((( yy )yy_0_2[1])); 

yy_0_2_2 = ((( yy )yy_0_2[2])); 

yyv_D = yy_0_2_1; 

yyv_Tp = yy_0_2_2; 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_64_4:  ; } 


retValue_acc = 0;
return (int )retValue_acc;
 

}

return (int )retValue_acc;


}
 

int test_old_function(yyin_1,yyout_1) 

 yy yyin_1; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Tp;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_IdentList;



 yy yy_1_2_1;



 yy yyv_Tp1;



 yy yy_1_2_2;

yy_0_1 = yyin_1; 

yyv_Tp = yy_0_1; 

yy_1_1 = yyv_Tp; 

get_tp_descr(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 4){
goto yyfl_65_1; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yyv_IdentList = yy_1_2_1; 

yyv_Tp1 = yy_1_2_2; 

yy_0_2 = yyv_IdentList; 

(*yyout_1) = yy_0_2; 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_65_1:  ; } 


retValue_acc = 0;
return (int )retValue_acc;
 

}

return (int )retValue_acc;


}
 

int test_new_function(yyin_1,yyout_1) 

 yy yyin_1; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Tp;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_ParamTypes;



 yy yy_1_2_1;



 yy yyv_Tp1;



 yy yy_1_2_2;

yy_0_1 = yyin_1; 

yyv_Tp = yy_0_1; 

yy_1_1 = yyv_Tp; 

get_tp_descr(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 3){
goto yyfl_66_1; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yyv_ParamTypes = yy_1_2_1; 

yyv_Tp1 = yy_1_2_2; 

yy_0_2 = yyv_ParamTypes; 

(*yyout_1) = yy_0_2; 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_66_1:  ; } 


retValue_acc = 0;
return (int )retValue_acc;
 

}

return (int )retValue_acc;


}
 

int lookup_param_type(yyin_1,yyin_2,yyout_1,yyout_2) 

 yy yyin_1; 

 yy yyin_2; 

 yy *yyout_1; 

 yy *yyout_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Ident;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_L;



 yy yy_0_2_1;



 yy yyv_Id;



 yy yy_0_2_2;



 yy yyv_Tp;



 yy yy_0_2_3;



 yy yyv_StC;



 yy yy_0_2_4;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Ident = yy_0_1; 

if (yy_0_2[0] != 1){
goto yyfl_67_1; }

yy_0_2_1 = ((( yy )yy_0_2[1])); 

yy_0_2_2 = ((( yy )yy_0_2[2])); 

yy_0_2_3 = ((( yy )yy_0_2[3])); 

yy_0_2_4 = ((( yy )yy_0_2[4])); 

yyv_L = yy_0_2_1; 

yyv_Id = yy_0_2_2; 

yyv_Tp = yy_0_2_3; 

yyv_StC = yy_0_2_4; 

yy_1_1 = yyv_Ident; 

yy_1_2 = yyv_Id; 

if ((!equal_Ident(yy_1_1, yy_1_2))){
goto yyfl_67_1; }

yy_0_3 = yyv_Tp; 

yy_0_4 = yyv_StC; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_67_1:  ; } 

{ 



 yy yyb;



 yy yyv_Ident;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_L;



 yy yy_0_2_1;



 yy yyv_Id;



 yy yy_0_2_2;



 yy yyv_Tp1;



 yy yy_0_2_3;



 yy yyv_StC1;



 yy yy_0_2_4;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Tp;



 yy yy_1_3;



 yy yyv_StC;



 yy yy_1_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Ident = yy_0_1; 

if (yy_0_2[0] != 1){
goto yyfl_67_2; }

yy_0_2_1 = ((( yy )yy_0_2[1])); 

yy_0_2_2 = ((( yy )yy_0_2[2])); 

yy_0_2_3 = ((( yy )yy_0_2[3])); 

yy_0_2_4 = ((( yy )yy_0_2[4])); 

yyv_L = yy_0_2_1; 

yyv_Id = yy_0_2_2; 

yyv_Tp1 = yy_0_2_3; 

yyv_StC1 = yy_0_2_4; 

yy_1_1 = yyv_Ident; 

yy_1_2 = yyv_L; 

if ((!lookup_param_type(yy_1_1, yy_1_2, (&yy_1_3), (&yy_1_4)))){
goto yyfl_67_2; }

yyv_Tp = yy_1_3; 

yyv_StC = yy_1_4; 

yy_0_3 = yyv_Tp; 

yy_0_4 = yyv_StC; 

(*yyout_1) = yy_0_3; 

(*yyout_2) = yy_0_4; 


retValue_acc = 1;
return (int )retValue_acc;
 

yyfl_67_2:  ; } 


retValue_acc = 0;
return (int )retValue_acc;
 

}

return (int )retValue_acc;


}
 

adjust_param_type(yyin_1,yyout_1) 

 yy yyin_1; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Tp;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_L;



 yy yy_1_2_1;



 yy yyv_Tp1;



 yy yy_1_2_2;



 yy yy_2_1;



 yy yy_2_1_1;



 yy yy_2_1_2;



 yy yyv_Tp2;



 yy yy_2_2;

yy_0_1 = yyin_1; 

yyv_Tp = yy_0_1; 

yyb = yyh; 

yyh += 4; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tp; 

get_tp_descr(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 4){
goto yyfl_68_1; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yyv_L = yy_1_2_1; 

yyv_Tp1 = yy_1_2_2; 

yy_2_1_1 = yyb + 3; 

yy_2_1_1[0] = 4; 

yy_2_1_2 = yyv_Tp; 

yy_2_1 = yyb + 0; 

yy_2_1[0] = 5; 

yy_2_1[1] = (((long )yy_2_1_1)); 

yy_2_1[2] = (((long )yy_2_1_2)); 

make_type_and_size(yy_2_1, (&yy_2_2)); 

yyv_Tp2 = yy_2_2; 

yy_0_2 = yyv_Tp2; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_68_1:  ; } 

{ 



 yy yyb;



 yy yyv_Tp;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_P;



 yy yy_1_2_1;



 yy yyv_Tp1;



 yy yy_1_2_2;



 yy yy_2_1;



 yy yy_2_1_1;



 yy yy_2_1_2;



 yy yyv_Tp2;



 yy yy_2_2;

yy_0_1 = yyin_1; 

yyv_Tp = yy_0_1; 

yyb = yyh; 

yyh += 4; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tp; 

get_tp_descr(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 3){
goto yyfl_68_2; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yyv_P = yy_1_2_1; 

yyv_Tp1 = yy_1_2_2; 

yy_2_1_1 = yyb + 3; 

yy_2_1_1[0] = 4; 

yy_2_1_2 = yyv_Tp; 

yy_2_1 = yyb + 0; 

yy_2_1[0] = 5; 

yy_2_1[1] = (((long )yy_2_1_1)); 

yy_2_1[2] = (((long )yy_2_1_2)); 

make_type_and_size(yy_2_1, (&yy_2_2)); 

yyv_Tp2 = yy_2_2; 

yy_0_2 = yyv_Tp2; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_68_2:  ; } 

{ 



 yy yyb;



 yy yyv_Tp;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_C;



 yy yy_1_2_1;



 yy yyv_Tp1;



 yy yy_1_2_2;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_2_1;



 yy yy_2_2_2;



 yy yy_3_1;



 yy yy_3_1_1;



 yy yy_3_1_2;



 yy yyv_Size;



 yy yy_3_2;



 yy yy_4_1;



 yy yy_4_2;

yy_0_1 = yyin_1; 

yyv_Tp = yy_0_1; 

yyb = yyh; 

yyh += 8; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tp; 

get_tp_descr(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 2){
goto yyfl_68_3; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yyv_C = yy_1_2_1; 

yyv_Tp1 = yy_1_2_2; 

yy_2_1 = yyv_Tp; 

yy_2_2_1 = yyb + 3; 

yy_2_2_1[0] = 4; 

yy_2_2_2 = yyv_Tp1; 

yy_2_2 = yyb + 0; 

yy_2_2[0] = 5; 

yy_2_2[1] = (((long )yy_2_2_1)); 

yy_2_2[2] = (((long )yy_2_2_2)); 

put_tp_descr(yy_2_1, yy_2_2); 

yy_3_1_1 = yyb + 7; 

yy_3_1_1[0] = 4; 

yy_3_1_2 = yyv_Tp1; 

yy_3_1 = yyb + 4; 

yy_3_1[0] = 5; 

yy_3_1[1] = (((long )yy_3_1_1)); 

yy_3_1[2] = (((long )yy_3_1_2)); 

td_map_to_size(yy_3_1, (&yy_3_2)); 

yyv_Size = yy_3_2; 

yy_4_1 = yyv_Tp; 

yy_4_2 = yyv_Size; 

put_tp_size(yy_4_1, yy_4_2); 

yy_0_2 = yyv_Tp; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_68_3:  ; } 

{ 



 yy yyb;



 yy yyv_Tp;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

yyv_Tp = yy_0_1; 

yy_0_2 = yyv_Tp; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_68_4:  ; } 

yyErr(2, 1233); 

}

return (int )retValue_acc;


}
 

compute_var_descr(yyin_1,yyin_2,yyin_3,yyin_4,yyout_1) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy yyin_4; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Ident;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_2;



 yy yyv_Class;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;



 yy yy_0_5_2;



 yy yy_0_5_3;



 yy yy_1_1;



 yy yyv_D;



 yy yy_1_2;



 yy yy_2_1;



 yy yyv_Size;



 yy yy_2_2;



 yy yy_3_1;



 yy yy_3_2;



 yy yyv_Align;



 yy yy_3_3;



 yy yy_4_1;



 yy yy_4_2;



 yy yy_4_3;



 yy yyv_ObjNr;



 yy yy_4_4;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_Ident = yy_0_1; 

yyv_Tp = yy_0_2; 

yyv_Class = yy_0_3; 

if (yy_0_4[0] != 3){
goto yyfl_69_1; }

yyb = yyh; 

yyh += 4; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tp; 

get_tp_descr(yy_1_1, (&yy_1_2)); 

yyv_D = yy_1_2; 

yy_2_1 = yyv_D; 

td_map_to_size(yy_2_1, (&yy_2_2)); 

yyv_Size = yy_2_2; 

yy_3_1 = yyv_D; 

yy_3_2 = yyv_Size; 

get_align(yy_3_1, yy_3_2, (&yy_3_3)); 

yyv_Align = yy_3_3; 

yy_4_1 = yyv_Align; 

yy_4_2 = yyv_Size; 

yy_4_3 = yyv_Ident; 

cg_new_auto_var(yy_4_1, yy_4_2, yy_4_3, (&yy_4_4)); 

yyv_ObjNr = yy_4_4; 

yy_0_5_1 = yyv_Tp; 

yy_0_5_2 = yyv_Class; 

yy_0_5_3 = yyv_ObjNr; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 2; 

yy_0_5[1] = (((long )yy_0_5_1)); 

yy_0_5[2] = (((long )yy_0_5_2)); 

yy_0_5[3] = (((long )yy_0_5_3)); 

(*yyout_1) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_69_1:  ; } 

{ 



 yy yyb;



 yy yyv_Ident;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_2;



 yy yyv_Cl;



 yy yy_0_3;



 yy yyv_Link;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_5_1;



 yy yy_0_5_2;



 yy yy_0_5_3;



 yy yy_0_5_4;



 yy yy_1_1;



 yy yyv_D;



 yy yy_1_2;



 yy yy_2_1;



 yy yyv_Size;



 yy yy_2_2;



 yy yy_3_1;



 yy yy_3_2;



 yy yy_3_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yy_0_4 = yyin_4; 

yyv_Ident = yy_0_1; 

yyv_Tp = yy_0_2; 

yyv_Cl = yy_0_3; 

yyv_Link = yy_0_4; 

yyb = yyh; 

yyh += 5; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Tp; 

get_tp_descr(yy_1_1, (&yy_1_2)); 

yyv_D = yy_1_2; 

yy_2_1 = yyv_D; 

td_map_to_size(yy_2_1, (&yy_2_2)); 

yyv_Size = yy_2_2; 

yy_3_1 = yyv_Link; 

yy_3_2 = yyv_Size; 

yy_3_3 = yyv_Ident; 

cg_new_static_var(yy_3_1, yy_3_2, yy_3_3); 

yy_0_5_1 = yyv_Tp; 

yy_0_5_2 = yyv_Cl; 

yy_0_5_3 = yyv_Link; 

yy_0_5_4 = yyv_Ident; 

yy_0_5 = yyb + 0; 

yy_0_5[0] = 1; 

yy_0_5[1] = (((long )yy_0_5_1)); 

yy_0_5[2] = (((long )yy_0_5_2)); 

yy_0_5[3] = (((long )yy_0_5_3)); 

yy_0_5[4] = (((long )yy_0_5_4)); 

(*yyout_1) = yy_0_5; 


return (int )retValue_acc;
 

yyfl_69_2:  ; } 

yyErr(2, 1258); 

}

return (int )retValue_acc;


}
 

get_normalized_storage_class(yyin_1,yyout_1) 

 yy yyin_1; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_1_1;



 yy yyv_NStClass;



 yy yy_0_1_2;



 yy yyv_Linkage;



 yy yy_0_1_3;



 yy yyv_O;



 yy yy_0_1_4;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 1){
goto yyfl_70_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yy_0_1_4 = ((( yy )yy_0_1[4])); 

yyv_Tp = yy_0_1_1; 

yyv_NStClass = yy_0_1_2; 

yyv_Linkage = yy_0_1_3; 

yyv_O = yy_0_1_4; 

yy_0_2 = yyv_NStClass; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_70_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_1_1;



 yy yyv_NStClass;



 yy yy_0_1_2;



 yy yyv_O;



 yy yy_0_1_3;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 2){
goto yyfl_70_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yyv_Tp = yy_0_1_1; 

yyv_NStClass = yy_0_1_2; 

yyv_O = yy_0_1_3; 

yy_0_2 = yyv_NStClass; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_70_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_1_1;



 yy yyv_NStClass;



 yy yy_0_1_2;



 yy yyv_O;



 yy yy_0_1_3;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 3){
goto yyfl_70_3; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yyv_Tp = yy_0_1_1; 

yyv_NStClass = yy_0_1_2; 

yyv_O = yy_0_1_3; 

yy_0_2 = yyv_NStClass; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_70_3:  ; } 

yyErr(2, 1278); 

}

return (int )retValue_acc;


}
 

normalize_storage_class(yyin_1,yyout_1) 

 yy yyin_1; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 1){
goto yyfl_71_1; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 1; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_71_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 2){
goto yyfl_71_2; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 2; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_71_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 3){
goto yyfl_71_3; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 3; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_71_3:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 4){
goto yyfl_71_4; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 3; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_71_4:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 6){
goto yyfl_71_5; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

if ((!current_nest_level_equal_zero())){
goto yyfl_71_5; }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 3; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_71_5:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 6){
goto yyfl_71_6; }

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_0_2 = yyb + 0; 

yy_0_2[0] = 1; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_71_6:  ; } 

yyErr(2, 1289); 

}

return (int )retValue_acc;


}
 

test_valid_combination_and_normalize(yyin_1,yyin_2,yyin_3,yyout_1,yyout_2,yyout_3) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3; 

 yy *yyout_1; 

 yy *yyout_2; 

 yy *yyout_3;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 1){
goto yyfl_72_1; }

if (yy_0_2[0] != 1){
goto yyfl_72_1; }

if (yy_0_3[0] != 4){
goto yyfl_72_1; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 1; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 1; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 4; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 1){
goto yyfl_72_2; }

if (yy_0_2[0] != 1){
goto yyfl_72_2; }

if (yy_0_3[0] != 5){
goto yyfl_72_2; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 1; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 1; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 5; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 1){
goto yyfl_72_3; }

if (yy_0_2[0] != 3){
goto yyfl_72_3; }

if (yy_0_3[0] != 5){
goto yyfl_72_3; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 1; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 3; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 5; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_3:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 3){
goto yyfl_72_4; }

if (yy_0_2[0] != 1){
goto yyfl_72_4; }

if (yy_0_3[0] != 6){
goto yyfl_72_4; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 3; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 1; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_4:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 2){
goto yyfl_72_5; }

if (yy_0_2[0] != 1){
goto yyfl_72_5; }

if (yy_0_3[0] != 6){
goto yyfl_72_5; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 2; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 1; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_5:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 2){
goto yyfl_72_6; }

if (yy_0_2[0] != 2){
goto yyfl_72_6; }

if (yy_0_3[0] != 6){
goto yyfl_72_6; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 2; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 2; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_6:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 2){
goto yyfl_72_7; }

if (yy_0_2[0] != 3){
goto yyfl_72_7; }

if (yy_0_3[0] != 6){
goto yyfl_72_7; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 2; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 3; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_7:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 3){
goto yyfl_72_8; }

if (yy_0_2[0] != 3){
goto yyfl_72_8; }

if (yy_0_3[0] != 6){
goto yyfl_72_8; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 3; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 3; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_8:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 3){
goto yyfl_72_9; }

if (yy_0_2[0] != 2){
goto yyfl_72_9; }

if (yy_0_3[0] != 6){
goto yyfl_72_9; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 3; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 2; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_9:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 3){
goto yyfl_72_10; }

if (yy_0_2[0] != 1){
goto yyfl_72_10; }

if (yy_0_3[0] != 3){
goto yyfl_72_10; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 3; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 1; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 3; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_10:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 2){
goto yyfl_72_11; }

if (yy_0_2[0] != 1){
goto yyfl_72_11; }

if (yy_0_3[0] != 3){
goto yyfl_72_11; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 2; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 1; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 3; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_11:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 1){
goto yyfl_72_12; }

if (yy_0_2[0] != 1){
goto yyfl_72_12; }

if (yy_0_3[0] != 3){
goto yyfl_72_12; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 1; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 1; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 3; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_12:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 1){
goto yyfl_72_13; }

if (yy_0_2[0] != 1){
goto yyfl_72_13; }

if (yy_0_3[0] != 2){
goto yyfl_72_13; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 1; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 1; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 2; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_13:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 1){
goto yyfl_72_14; }

if (yy_0_2[0] != 2){
goto yyfl_72_14; }

if (yy_0_3[0] != 6){
goto yyfl_72_14; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 2; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 2; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_14:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 1){
goto yyfl_72_15; }

if (yy_0_2[0] != 3){
goto yyfl_72_15; }

if (yy_0_3[0] != 6){
goto yyfl_72_15; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 2; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 3; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_15:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 2){
goto yyfl_72_16; }

if (yy_0_2[0] != 3){
goto yyfl_72_16; }

if (yy_0_3[0] != 1){
goto yyfl_72_16; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 2; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 3; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_16:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 3){
goto yyfl_72_17; }

if (yy_0_2[0] != 3){
goto yyfl_72_17; }

if (yy_0_3[0] != 1){
goto yyfl_72_17; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 3; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 3; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_17:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 2){
goto yyfl_72_18; }

if (yy_0_2[0] != 2){
goto yyfl_72_18; }

if (yy_0_3[0] != 1){
goto yyfl_72_18; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 2; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 2; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_18:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 3){
goto yyfl_72_19; }

if (yy_0_2[0] != 2){
goto yyfl_72_19; }

if (yy_0_3[0] != 1){
goto yyfl_72_19; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 3; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 2; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_19:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 3){
goto yyfl_72_20; }

if (yy_0_2[0] != 1){
goto yyfl_72_20; }

if (yy_0_3[0] != 1){
goto yyfl_72_20; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 3; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 1; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_20:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 2){
goto yyfl_72_21; }

if (yy_0_2[0] != 1){
goto yyfl_72_21; }

if (yy_0_3[0] != 1){
goto yyfl_72_21; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 2; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 1; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_21:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 1){
goto yyfl_72_22; }

if (yy_0_2[0] != 3){
goto yyfl_72_22; }

if (yy_0_3[0] != 1){
goto yyfl_72_22; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 2; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 3; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_22:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 1){
goto yyfl_72_23; }

if (yy_0_2[0] != 2){
goto yyfl_72_23; }

if (yy_0_3[0] != 1){
goto yyfl_72_23; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 2; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 2; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_23:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 1){
goto yyfl_72_24; }

if (yy_0_2[0] != 1){
goto yyfl_72_24; }

if (yy_0_3[0] != 6){
goto yyfl_72_24; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 2; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 1; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_24:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_0_4;



 yy yy_0_5;



 yy yy_0_6;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

if (yy_0_1[0] != 1){
goto yyfl_72_25; }

if (yy_0_2[0] != 1){
goto yyfl_72_25; }

if (yy_0_3[0] != 1){
goto yyfl_72_25; }

yyb = yyh; 

yyh += 3; 

if (yyh > yyhx){
yyExtend(); }

yy_0_4 = yyb + 0; 

yy_0_4[0] = 2; 

yy_0_5 = yyb + 1; 

yy_0_5[0] = 1; 

yy_0_6 = yyb + 2; 

yy_0_6[0] = 6; 

(*yyout_1) = yy_0_4; 

(*yyout_2) = yy_0_5; 

(*yyout_3) = yy_0_6; 


return (int )retValue_acc;
 

yyfl_72_25:  ; } 

yyErr(2, 1308); 

}

return (int )retValue_acc;


}
 

compute_width(yyin_1,yyout_1) 

 yy yyin_1; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_C;



 yy yy_1_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 26){
goto yyfl_73_1; }

get_UNDEF_int((&yy_1_1)); 

yyv_C = yy_1_1; 

yy_0_2 = yyv_C; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_73_1:  ; } 

{ 



 yy yyb;



 yy yyv_E;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_M;



 yy yy_1_2_1;



 yy yyv_C;



 yy yy_1_2_2;

yy_0_1 = yyin_1; 

yyv_E = yy_0_1; 

yy_1_1 = yyv_E; 

trafo_expr_const(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 21){
goto yyfl_73_2; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yyv_M = yy_1_2_1; 

yyv_C = yy_1_2_2; 

yy_0_2 = yyv_C; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_73_2:  ; } 

yyErr(2, 1364); 

}

return (int )retValue_acc;


}
 

compute_index(yyin_1,yyout_1) 

 yy yyin_1; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_C;



 yy yy_1_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 13){
goto yyfl_74_1; }

get_UNDEF_int((&yy_1_1)); 

yyv_C = yy_1_1; 

yy_0_2 = yyv_C; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_74_1:  ; } 

{ 



 yy yyb;



 yy yyv_E;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_M;



 yy yy_1_2_1;



 yy yyv_C;



 yy yy_1_2_2;

yy_0_1 = yyin_1; 

yyv_E = yy_0_1; 

yy_1_1 = yyv_E; 

trafo_expr_const(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 21){
goto yyfl_74_2; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yyv_M = yy_1_2_1; 

yyv_C = yy_1_2_2; 

yy_0_2 = yyv_C; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_74_2:  ; } 

yyErr(2, 1378); 

}

return (int )retValue_acc;


}
 

test_legal_parameter_storage_class(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 2){
goto yyfl_75_1; }


return (int )retValue_acc;
 

yyfl_75_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 6){
goto yyfl_75_2; }


return (int )retValue_acc;
 

yyfl_75_2:  ; } 

{ 



 yy yyb;



 yy yyv_C;



 yy yy_0_1;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yyv_C = yy_0_1; 

yy_1_1 = ((( yy )"illegal parameter storage class")); 

semantic_error(yy_1_1); 


return (int )retValue_acc;
 

yyfl_75_3:  ; } 

yyErr(2, 1392); 

}

return (int )retValue_acc;


}
 

test_type_names_in_param_list(yyin_1,yyin_2) 

 yy yyin_1; 

 yy yyin_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_PL;



 yy yy_0_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 2){
goto yyfl_76_1; }

yyv_PL = yy_0_2; 


return (int )retValue_acc;
 

yyfl_76_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_L;



 yy yy_0_1_1;



 yy yyv_Ident;



 yy yy_0_1_2;



 yy yyv_Tp;



 yy yy_0_1_3;



 yy yyv_C;



 yy yy_0_1_4;



 yy yyv_PL;



 yy yy_0_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

if (yy_0_1[0] != 1){
goto yyfl_76_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yy_0_1_4 = ((( yy )yy_0_1[4])); 

yyv_L = yy_0_1_1; 

yyv_Ident = yy_0_1_2; 

yyv_Tp = yy_0_1_3; 

yyv_C = yy_0_1_4; 

yyv_PL = yy_0_2; 

yy_1_1 = yyv_Ident; 

yy_1_2 = yyv_PL; 

test_param_in_identifier_list(yy_1_1, yy_1_2); 

yy_2_1 = yyv_L; 

yy_2_2 = yyv_PL; 

test_type_names_in_param_list(yy_2_1, yy_2_2); 


return (int )retValue_acc;
 

yyfl_76_2:  ; } 

yyErr(2, 1404); 

}

return (int )retValue_acc;


}
 

test_param_in_identifier_list(yyin_1,yyin_2) 

 yy yyin_1; 

 yy yyin_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Name;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_L;



 yy yy_0_2_1;



 yy yyv_Ident;



 yy yy_0_2_2;



 yy yy_1_1;



 yy yy_1_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Name = yy_0_1; 

if (yy_0_2[0] != 27){
goto yyfl_77_1; }

yy_0_2_1 = ((( yy )yy_0_2[1])); 

yy_0_2_2 = ((( yy )yy_0_2[2])); 

yyv_L = yy_0_2_1; 

yyv_Ident = yy_0_2_2; 

yy_1_1 = yyv_Name; 

yy_1_2 = yyv_Ident; 

if ((!equal_Ident(yy_1_1, yy_1_2))){
goto yyfl_77_1; }


return (int )retValue_acc;
 

yyfl_77_1:  ; } 

{ 



 yy yyb;



 yy yyv_Name;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_L;



 yy yy_0_2_1;



 yy yyv_Ident;



 yy yy_0_2_2;



 yy yy_1_1;



 yy yy_1_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Name = yy_0_1; 

if (yy_0_2[0] != 27){
goto yyfl_77_2; }

yy_0_2_1 = ((( yy )yy_0_2[1])); 

yy_0_2_2 = ((( yy )yy_0_2[2])); 

yyv_L = yy_0_2_1; 

yyv_Ident = yy_0_2_2; 

yy_1_1 = yyv_Name; 

yy_1_2 = yyv_L; 

test_param_in_identifier_list(yy_1_1, yy_1_2); 


return (int )retValue_acc;
 

yyfl_77_2:  ; } 

{ 



 yy yyb;



 yy yyv_Name;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Name = yy_0_1; 

if (yy_0_2[0] != 28){
goto yyfl_77_3; }

yy_1_1 = ((( yy )"has not been inside parentheses")); 

semantic_error(yy_1_1); 


return (int )retValue_acc;
 

yyfl_77_3:  ; } 

yyErr(2, 1416); 

}

return (int )retValue_acc;


}
 

test_empty_declaration_list(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 14){
goto yyfl_78_1; }


return (int )retValue_acc;
 

yyfl_78_1:  ; } 

{ 



 yy yyb;



 yy yyv_L;



 yy yy_0_1;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yyv_L = yy_0_1; 

yy_1_1 = ((( yy )"no declaration list allowed in new style function")); 

semantic_error(yy_1_1); 


return (int )retValue_acc;
 

yyfl_78_2:  ; } 

yyErr(2, 1433); 

}

return (int )retValue_acc;


}
 

test_static_or_error(yyin_1,yyin_2) 

 yy yyin_1; 

 yy yyin_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Nest;



 yy yy_0_1;



 yy yyv_Name;



 yy yy_0_2;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Nest = yy_0_1; 

yyv_Name = yy_0_2; 

yy_1_1 = yyv_Nest; 

if ((!is_nest_level_zero(yy_1_1))){
goto yyfl_79_1; }


return (int )retValue_acc;
 

yyfl_79_1:  ; } 

{ 



 yy yyb;



 yy yyv_Nest;



 yy yy_0_1;



 yy yyv_Name;



 yy yy_0_2;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Nest = yy_0_1; 

yyv_Name = yy_0_2; 

yy_1_1 = ((( yy )"illegal redeclaration")); 

semantic_error(yy_1_1); 


return (int )retValue_acc;
 

yyfl_79_2:  ; } 

yyErr(2, 1443); 

}

return (int )retValue_acc;


}
 

test_no_redeclaration(yyin_1,yyin_2,yyin_3) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Name;



 yy yy_0_1;



 yy yyv_Type;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Ident;



 yy yy_1_2_1;



 yy yyv_Nest;



 yy yy_1_2_2;



 yy yyv_ObjDescr;



 yy yy_1_2_3;



 yy yyv_Object;



 yy yy_1_2_4;



 yy yy_2_1;



 yy yy_3_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yyv_Name = yy_0_1; 

yyv_Type = yy_0_2; 

if (yy_0_3[0] != 1){
goto yyfl_80_1; }

yy_1_1 = yyv_Name; 

GetMeaning0(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 2){
goto yyfl_80_1; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yy_1_2_3 = ((( yy )yy_1_2[3])); 

yy_1_2_4 = ((( yy )yy_1_2[4])); 

yyv_Ident = yy_1_2_1; 

yyv_Nest = yy_1_2_2; 

yyv_ObjDescr = yy_1_2_3; 

yyv_Object = yy_1_2_4; 

yy_2_1 = yyv_Nest; 

if ((!is_current_nest(yy_2_1))){
goto yyfl_80_1; }

yy_3_1 = ((( yy )"illegal redeclaration")); 

semantic_error(yy_3_1); 


return (int )retValue_acc;
 

yyfl_80_1:  ; } 

{ 



 yy yyb;



 yy yyv_Name;



 yy yy_0_1;



 yy yyv_Type;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Ident;



 yy yy_1_2_1;



 yy yyv_Nest;



 yy yy_1_2_2;



 yy yyv_ObjDescr;



 yy yy_1_2_3;



 yy yyv_Object;



 yy yy_1_2_4;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_3_1;



 yy yyv_Tp1;



 yy yy_3_2;



 yy yy_4_1;



 yy yy_4_2;



 yy yy_4_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yyv_Name = yy_0_1; 

yyv_Type = yy_0_2; 

if (yy_0_3[0] != 3){
goto yyfl_80_2; }

yy_1_1 = yyv_Name; 

GetMeaning0(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 2){
goto yyfl_80_2; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yy_1_2_3 = ((( yy )yy_1_2[3])); 

yy_1_2_4 = ((( yy )yy_1_2[4])); 

yyv_Ident = yy_1_2_1; 

yyv_Nest = yy_1_2_2; 

yyv_ObjDescr = yy_1_2_3; 

yyv_Object = yy_1_2_4; 

yy_2_1 = yyv_Nest; 

yy_2_2 = yyv_Name; 

test_static_or_error(yy_2_1, yy_2_2); 

yy_3_1 = yyv_ObjDescr; 

get_type_of_objdescr(yy_3_1, (&yy_3_2)); 

yyv_Tp1 = yy_3_2; 

yy_4_1 = yyv_Tp1; 

yy_4_2 = yyv_Type; 

yy_4_3 = yyv_Name; 

error_if_not_equal_types(yy_4_1, yy_4_2, yy_4_3); 


return (int )retValue_acc;
 

yyfl_80_2:  ; } 

{ 



 yy yyb;



 yy yyv_Name;



 yy yy_0_1;



 yy yyv_Type;



 yy yy_0_2;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Ident;



 yy yy_1_2_1;



 yy yyv_Nest;



 yy yy_1_2_2;



 yy yyv_ObjDescr;



 yy yy_1_2_3;



 yy yyv_Object;



 yy yy_1_2_4;



 yy yy_2_1;



 yy yy_3_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yyv_Name = yy_0_1; 

yyv_Type = yy_0_2; 

if (yy_0_3[0] != 2){
goto yyfl_80_3; }

yy_1_1 = yyv_Name; 

GetMeaning0(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 2){
goto yyfl_80_3; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yy_1_2_3 = ((( yy )yy_1_2[3])); 

yy_1_2_4 = ((( yy )yy_1_2[4])); 

yyv_Ident = yy_1_2_1; 

yyv_Nest = yy_1_2_2; 

yyv_ObjDescr = yy_1_2_3; 

yyv_Object = yy_1_2_4; 

yy_2_1 = yyv_Nest; 

if ((!is_current_nest(yy_2_1))){
goto yyfl_80_3; }

yy_3_1 = ((( yy )"illegal redeclaration")); 

semantic_error(yy_3_1); 


return (int )retValue_acc;
 

yyfl_80_3:  ; } 

{ 



 yy yyb;



 yy yyv_Name;



 yy yy_0_1;



 yy yyv_Type;



 yy yy_0_2;



 yy yyv_NStClass;



 yy yy_0_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yyv_Name = yy_0_1; 

yyv_Type = yy_0_2; 

yyv_NStClass = yy_0_3; 


return (int )retValue_acc;
 

yyfl_80_4:  ; } 

yyErr(2, 1455); 

}

return (int )retValue_acc;


}
 

test_no_double_declaration(yyin_1,yyin_2,yyin_3) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Name;



 yy yy_0_1;



 yy yyv_Type;



 yy yy_0_2;



 yy yy_0_3;



 yy yyv_Tp;



 yy yy_0_3_1;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Ident;



 yy yy_1_2_1;



 yy yyv_Nest;



 yy yy_1_2_2;



 yy yyv_ObjDescr;



 yy yy_1_2_3;



 yy yyv_Object;



 yy yy_1_2_4;



 yy yy_2_1;



 yy yy_3_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yyv_Name = yy_0_1; 

yyv_Type = yy_0_2; 

if (yy_0_3[0] != 5){
goto yyfl_81_1; }

yy_0_3_1 = ((( yy )yy_0_3[1])); 

yyv_Tp = yy_0_3_1; 

yy_1_1 = yyv_Name; 

GetMeaning0(yy_1_1, (&yy_1_2)); 

if (yy_1_2[0] != 2){
goto yyfl_81_1; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yy_1_2_3 = ((( yy )yy_1_2[3])); 

yy_1_2_4 = ((( yy )yy_1_2[4])); 

yyv_Ident = yy_1_2_1; 

yyv_Nest = yy_1_2_2; 

yyv_ObjDescr = yy_1_2_3; 

yyv_Object = yy_1_2_4; 

yy_2_1 = yyv_Nest; 

if ((!is_current_nest(yy_2_1))){
goto yyfl_81_1; }

yy_3_1 = ((( yy )"illegal redeclaration")); 

semantic_error(yy_3_1); 


return (int )retValue_acc;
 

yyfl_81_1:  ; } 

{ 



 yy yyb;



 yy yyv_Name;



 yy yy_0_1;



 yy yyv_Type;



 yy yy_0_2;



 yy yy_0_3;



 yy yyv_Tp;



 yy yy_0_3_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yyv_Name = yy_0_1; 

yyv_Type = yy_0_2; 

if (yy_0_3[0] != 5){
goto yyfl_81_2; }

yy_0_3_1 = ((( yy )yy_0_3[1])); 

yyv_Tp = yy_0_3_1; 


return (int )retValue_acc;
 

yyfl_81_2:  ; } 

{ 



 yy yyb;



 yy yyv_Name;



 yy yy_0_1;



 yy yyv_Type;



 yy yy_0_2;



 yy yy_0_3;



 yy yyv_Tp;



 yy yy_0_3_1;



 yy yyv_L;



 yy yy_0_3_2;



 yy yyv_O;



 yy yy_0_3_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yy_1_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yyv_Name = yy_0_1; 

yyv_Type = yy_0_2; 

if (yy_0_3[0] != 4){
goto yyfl_81_3; }

yy_0_3_1 = ((( yy )yy_0_3[1])); 

yy_0_3_2 = ((( yy )yy_0_3[2])); 

yy_0_3_3 = ((( yy )yy_0_3[3])); 

yyv_Tp = yy_0_3_1; 

yyv_L = yy_0_3_2; 

yyv_O = yy_0_3_3; 

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Name; 

yy_1_2 = yyv_Type; 

yy_1_3 = yyb + 0; 

yy_1_3[0] = 3; 

test_no_redeclaration(yy_1_1, yy_1_2, yy_1_3); 


return (int )retValue_acc;
 

yyfl_81_3:  ; } 

{ 



 yy yyb;



 yy yyv_Name;



 yy yy_0_1;



 yy yyv_Type;



 yy yy_0_2;



 yy yyv_Descr;



 yy yy_0_3;



 yy yy_1_1;



 yy yyv_NStClass;



 yy yy_1_2;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_2_3;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yyv_Name = yy_0_1; 

yyv_Type = yy_0_2; 

yyv_Descr = yy_0_3; 

yy_1_1 = yyv_Descr; 

get_normalized_storage_class(yy_1_1, (&yy_1_2)); 

yyv_NStClass = yy_1_2; 

yy_2_1 = yyv_Name; 

yy_2_2 = yyv_Type; 

yy_2_3 = yyv_NStClass; 

test_no_redeclaration(yy_2_1, yy_2_2, yy_2_3); 


return (int )retValue_acc;
 

yyfl_81_4:  ; } 

yyErr(2, 1486); 

}

return (int )retValue_acc;


}
 

error_if_not_equal_types(yyin_1,yyin_2,yyin_3) 

 yy yyin_1; 

 yy yyin_2; 

 yy yyin_3;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Tp1;



 yy yy_0_1;



 yy yyv_Tp2;



 yy yy_0_2;



 yy yyv_Name;



 yy yy_0_3;



 yy yy_1_1;



 yy yy_1_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yyv_Tp1 = yy_0_1; 

yyv_Tp2 = yy_0_2; 

yyv_Name = yy_0_3; 

yy_1_1 = yyv_Tp1; 

yy_1_2 = yyv_Tp2; 

if ((!test_equal_types(yy_1_1, yy_1_2))){
goto yyfl_82_1; }


return (int )retValue_acc;
 

yyfl_82_1:  ; } 

{ 



 yy yyb;



 yy yyv_Tp1;



 yy yy_0_1;



 yy yyv_Tp2;



 yy yy_0_2;



 yy yyv_Name;



 yy yy_0_3;



 yy yy_1_1;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yy_0_3 = yyin_3; 

yyv_Tp1 = yy_0_1; 

yyv_Tp2 = yy_0_2; 

yyv_Name = yy_0_3; 

yy_1_1 = ((( yy )"illegal redeclaration")); 

semantic_error(yy_1_1); 


return (int )retValue_acc;
 

yyfl_82_2:  ; } 

yyErr(2, 1514); 

}

return (int )retValue_acc;


}
 

get_type_of_objdescr(yyin_1,yyout_1) 

 yy yyin_1; 

 yy *yyout_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_1_1;



 yy yyv_C;



 yy yy_0_1_2;



 yy yyv_Ident;



 yy yy_0_1_3;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 2){
goto yyfl_83_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yyv_Tp = yy_0_1_1; 

yyv_C = yy_0_1_2; 

yyv_Ident = yy_0_1_3; 

yy_0_2 = yyv_Tp; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_83_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_1_1;



 yy yyv_C;



 yy yy_0_1_2;



 yy yyv_L;



 yy yy_0_1_3;



 yy yyv_Ident;



 yy yy_0_1_4;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 1){
goto yyfl_83_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yy_0_1_4 = ((( yy )yy_0_1[4])); 

yyv_Tp = yy_0_1_1; 

yyv_C = yy_0_1_2; 

yyv_L = yy_0_1_3; 

yyv_Ident = yy_0_1_4; 

yy_0_2 = yyv_Tp; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_83_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_1_1;



 yy yyv_L;



 yy yy_0_1_2;



 yy yyv_Onr;



 yy yy_0_1_3;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 4){
goto yyfl_83_3; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yyv_Tp = yy_0_1_1; 

yyv_L = yy_0_1_2; 

yyv_Onr = yy_0_1_3; 

yy_0_2 = yyv_Tp; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_83_3:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_1_1;



 yy yyv_C;



 yy yy_0_1_2;



 yy yyv_Onr;



 yy yy_0_1_3;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 3){
goto yyfl_83_4; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

yyv_Tp = yy_0_1_1; 

yyv_C = yy_0_1_2; 

yyv_Onr = yy_0_1_3; 

yy_0_2 = yyv_Tp; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_83_4:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_Tp;



 yy yy_0_1_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 5){
goto yyfl_83_5; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yyv_Tp = yy_0_1_1; 

yy_0_2 = yyv_Tp; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_83_5:  ; } 

{ 



 yy yyb;



 yy yyv_Descr;



 yy yy_0_1;



 yy yy_0_2;



 yy yy_1_1;



 yy yyv_Tp;



 yy yy_2_1;

yy_0_1 = yyin_1; 

yyv_Descr = yy_0_1; 

yy_1_1 = ((( yy )"unexpected obect descriptor in get_type_of_objdescr")); 

compiler_error(yy_1_1); 

make_tp((&yy_2_1)); 

yyv_Tp = yy_2_1; 

yy_0_2 = yyv_Tp; 

(*yyout_1) = yy_0_2; 


return (int )retValue_acc;
 

yyfl_83_6:  ; } 

yyErr(2, 1526); 

}

return (int )retValue_acc;


}
 

declare_parameters(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 1){
goto yyfl_84_1; }


return (int )retValue_acc;
 

yyfl_84_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_T;



 yy yy_0_1_1;



 yy yyv_L;



 yy yy_0_1_2;



 yy yy_1_1;



 yy yy_2_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 2){
goto yyfl_84_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_T = yy_0_1_1; 

yyv_L = yy_0_1_2; 

yy_1_1 = yyv_T; 

declare_parameter(yy_1_1); 

yy_2_1 = yyv_L; 

declare_parameters(yy_2_1); 


return (int )retValue_acc;
 

yyfl_84_2:  ; } 

yyErr(2, 1546); 

}

return (int )retValue_acc;


}
 

declare_parameter(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_Ident;



 yy yy_0_1_1_1;



 yy yyv_Tp;



 yy yy_0_1_2;



 yy yyv_StorageClass;



 yy yy_0_1_3;



 yy yy_1_1;



 yy yy_1_2;



 yy yy_1_3;



 yy yy_1_4;



 yy yyv_ObjDescr;



 yy yy_1_5;



 yy yy_2_1;



 yy yy_3_1;



 yy yy_3_2;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 2){
goto yyfl_85_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

if (yy_0_1_1[0] != 1){
goto yyfl_85_1; }

yy_0_1_1_1 = ((( yy )yy_0_1_1[1])); 

yyv_Ident = yy_0_1_1_1; 

yyv_Tp = yy_0_1_2; 

yyv_StorageClass = yy_0_1_3; 

yyb = yyh; 

yyh += 1; 

if (yyh > yyhx){
yyExtend(); }

yy_1_1 = yyv_Ident; 

yy_1_2 = yyv_Tp; 

yy_1_3 = yyv_StorageClass; 

yy_1_4 = yyb + 0; 

yy_1_4[0] = 1; 

make_obj_descr(yy_1_1, yy_1_2, yy_1_3, yy_1_4, (&yy_1_5)); 

yyv_ObjDescr = yy_1_5; 

yy_2_1 = yyv_StorageClass; 

test_legal_parameter_storage_class(yy_2_1); 

yy_3_1 = yyv_Ident; 

yy_3_2 = yyv_ObjDescr; 

declare_object(yy_3_1, yy_3_2); 


return (int )retValue_acc;
 

yyfl_85_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;



 yy yy_0_1_1;



 yy yyv_Tp;



 yy yy_0_1_2;



 yy yyv_StorageClass;



 yy yy_0_1_3;



 yy yy_1_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 2){
goto yyfl_85_2; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yy_0_1_3 = ((( yy )yy_0_1[3])); 

if (yy_0_1_1[0] != 2){
goto yyfl_85_2; }

yyv_Tp = yy_0_1_2; 

yyv_StorageClass = yy_0_1_3; 

yy_1_1 = ((( yy )"name of parameter is missing")); 

semantic_error(yy_1_1); 


return (int )retValue_acc;
 

yyfl_85_2:  ; } 

{ 



 yy yyb;



 yy yy_0_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 1){
goto yyfl_85_3; }


return (int )retValue_acc;
 

yyfl_85_3:  ; } 

yyErr(2, 1557); 

}

return (int )retValue_acc;


}
 

check_for_duplicate_fieldnames(yyin_1) 

 yy yyin_1;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yy_0_1;



 yy yyv_ButLast;



 yy yy_0_1_1;



 yy yyv_Last;



 yy yy_0_1_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Id;



 yy yy_1_2_1;



 yy yy_1_2_2;



 yy yy_1_2_3;



 yy yy_1_2_4;



 yy yy_2_1;



 yy yy_2_2;



 yy yy_3_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 2){
goto yyfl_87_1; }

yy_0_1_1 = ((( yy )yy_0_1[1])); 

yy_0_1_2 = ((( yy )yy_0_1[2])); 

yyv_ButLast = yy_0_1_1; 

yyv_Last = yy_0_1_2; 

yy_1_1 = yyv_Last; 

yy_1_2 = yy_1_1; 

if (yy_1_2[0] != 1){
goto yyfl_87_1; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yy_1_2_3 = ((( yy )yy_1_2[3])); 

yy_1_2_4 = ((( yy )yy_1_2[4])); 

yyv_Id = yy_1_2_1; 

yy_2_1 = yyv_Id; 

yy_2_2 = yyv_ButLast; 

check_id_not_in_fields(yy_2_1, yy_2_2); 

yy_3_1 = yyv_ButLast; 

check_for_duplicate_fieldnames(yy_3_1); 


return (int )retValue_acc;
 

yyfl_87_1:  ; } 

{ 



 yy yyb;



 yy yy_0_1;

yy_0_1 = yyin_1; 

if (yy_0_1[0] != 1){
goto yyfl_87_2; }


return (int )retValue_acc;
 

yyfl_87_2:  ; } 

yyErr(2, 1577); 

}

return (int )retValue_acc;


}
 

check_id_not_in_fields(yyin_1,yyin_2) 

 yy yyin_1; 

 yy yyin_2;  
{
int retValue_acc;




{


{ 



 yy yyb;



 yy yyv_Id1;



 yy yy_0_1;



 yy yy_0_2;



 yy yyv_ButLast;



 yy yy_0_2_1;



 yy yyv_Last;



 yy yy_0_2_2;



 yy yy_1_1;



 yy yy_1_2;



 yy yyv_Id2;



 yy yy_1_2_1;



 yy yy_1_2_2;



 yy yy_1_2_3;



 yy yy_1_2_4;



 yy yy_2_1_1_1;



 yy yy_2_1_1_2;



 yy yy_2_1_2_1;



 yy yy_2_1_2_2;



 yy yy_2_1_2_3;



 yy yy_3_1;



 yy yy_3_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Id1 = yy_0_1; 

if (yy_0_2[0] != 2){
goto yyfl_88_1; }

yy_0_2_1 = ((( yy )yy_0_2[1])); 

yy_0_2_2 = ((( yy )yy_0_2[2])); 

yyv_ButLast = yy_0_2_1; 

yyv_Last = yy_0_2_2; 

yy_1_1 = yyv_Last; 

yy_1_2 = yy_1_1; 

if (yy_1_2[0] != 1){
goto yyfl_88_1; }

yy_1_2_1 = ((( yy )yy_1_2[1])); 

yy_1_2_2 = ((( yy )yy_1_2[2])); 

yy_1_2_3 = ((( yy )yy_1_2[3])); 

yy_1_2_4 = ((( yy )yy_1_2[4])); 

yyv_Id2 = yy_1_2_1; 

{ 



 yy yysb = yyb;

yy_2_1_1_1 = yyv_Id1; 

yy_2_1_1_2 = yyv_Id2; 

if ((!yyeq_Ident(yy_2_1_1_1, yy_2_1_1_2))){
goto yyfl_88_1_2_1; }

yy_2_1_2_1 = ((( yy )"duplicate member '")); 

yy_2_1_2_2 = yyv_Id1; 

yy_2_1_2_3 = ((( yy )"' in domain '")); 

semantic_error_i(yy_2_1_2_1, yy_2_1_2_2, yy_2_1_2_3); 

goto yysl_88_1_2; 

yyfl_88_1_2_1:  ; 

goto yysl_88_1_2; 

yysl_88_1_2:  ; 

yyb = yysb; } 

yy_3_1 = yyv_Id1; 

yy_3_2 = yyv_ButLast; 

check_id_not_in_fields(yy_3_1, yy_3_2); 


return (int )retValue_acc;
 

yyfl_88_1:  ; } 

{ 



 yy yyb;



 yy yyv_Id1;



 yy yy_0_1;



 yy yy_0_2;

yy_0_1 = yyin_1; 

yy_0_2 = yyin_2; 

yyv_Id1 = yy_0_1; 

if (yy_0_2[0] != 1){
goto yyfl_88_2; }


return (int )retValue_acc;
 

yyfl_88_2:  ; } 

yyErr(2, 1584); 

}

return (int )retValue_acc;


}
 
