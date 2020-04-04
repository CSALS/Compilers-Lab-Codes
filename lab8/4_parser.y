%{
  #include <stdio.h>
  #include<stdlib.h>
  #include<string.h>
  void yyerror();

  int yylex();
%}
%union {int ival; double dval;}
%token <ival> INTEGER
%token <dval> NUM
%type <dval> SUM
%token nl
%%
SUM : INTEGER '+' INTEGER nl { $$ = (double) ($1 + $3); printf("%lf\n", $$);}
      | NUM '+' NUM nl { $$ = $1 + $3; printf("%lf\n", $$); }
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
