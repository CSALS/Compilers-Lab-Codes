%{
  #include <stdio.h>
%}
%token a1 b1 err nl
%%
S : X a1 b1  b1 nl{return;}
X : %empty | a1 X
X : %empty | b1 X
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
