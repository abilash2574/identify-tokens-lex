
/*Lex code to count total number of tokens */
  
%{
int n = 0 ;   
%}
  
%option noyywrap

%%  
  /* count number of keywords */

"while"|"if"|"else" {n++;printf("\t keywords : %s \n", yytext);}   
  
    /* count number of keywords */
"int"|"float"|"string" {n++;printf("\t keywords : %s\n", yytext);}    
  
    /* count number of identifiers */ 
[a-zA-Z_][a-zA-Z0-9_]* {n++;printf("\t identifier : %s\n", yytext);}  
  
    /* count number of operators */
"<="|"=="|"="|"++"|"-"|"*"|"+" {n++;printf("\t operator : %s \n", yytext);} 
  
    /* count number of separators */
[(){}|,;]    {n++;printf("\t separator : %s\n", yytext);}  
  
    /* count number of floats */
[0-9]*"."[0-9]+ {n++;printf("\t float : %s\n", yytext);}   
  
        /* count number of integers  */
[0-9]+ {n++;printf("\t integer : %s\n", yytext);}    

"\n"  {printf("\n total no. of token = %d  \n",n); n = 0;}
  
.    ; 
%%  
   
   
int main()  
  
{  
      
    yylex();   
    
       
}  
