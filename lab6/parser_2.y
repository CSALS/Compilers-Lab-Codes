%{
  #include <stdio.h>
%}
%token NUM DOT
%%
s:NUM DOT NUM {return;}
%%

void main() {
  printf("enter the number:\n");
  yyparse();
  printf("Valid Float\n");
  exit(0);
}
void yyerror() {
  printf("Invalid Float\n");
  exit(0);
}
