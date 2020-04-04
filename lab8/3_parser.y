%{
  #include <stdio.h>
%}
%token a1 b1 err nl
%%
S : A nl {return;}
A : a1 A b1 | a1 b1
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
