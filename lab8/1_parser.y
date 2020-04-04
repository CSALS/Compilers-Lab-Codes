%{
  #include <stdio.h>
  #include<stdlib.h>
  #include<string.h>
  void yyerror();
  int yylex();
%}
%token a1 b1 err nl
%%
S : A1 B1
  ;
A1 : a1 A1 | %empty
   ;
B1 : b1 B1 | %empty
   ;
%%

void main() {
  printf("enter the string:\n");
  yyparse();
  printf("Valid string\n");
  exit(0);
}
void yyerror() {
  printf("Invalid string\n");
  exit(0);
}
