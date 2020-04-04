%{
  #include <stdio.h>
%}
%token NUM WORD
%%
s:WORDS NUM {/**/}
WORDS:WORD WORDS | WORD {/**/}
%%

void main() {
  printf("enter the sentence:\n");
  yyparse();
  printf("Valid statement:\n");
  exit(0);
}
void yyerror() {
  printf("Invalid statement:\n");
  exit(0);
}
