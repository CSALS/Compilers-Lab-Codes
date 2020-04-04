%{
  #include <stdio.h>
  #include <string.h>
%}
%union {int ival; char *sval}
%token <ival> INTEGER
%token <sval> STRING
%token nl eq
%%
S : CHECK nl{return;}
CHECK : INTEGER eq INTEGER  { if($1 == $3) {printf("Equal integers\n");} else {printf("Not equal integers\n");}}
      | STRING eq STRING  {
         if(strcmp($1, $3)==0) {printf("Equal strings\n");} else {printf("Not equal strings\n");}
      }
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
