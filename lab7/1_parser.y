%{
  #include <stdio.h>
%}
%token INTEGER new_line
%%
s: INTEGER '+' INTEGER {$$ = $1 + $3; printf("%d\n", $$);} 
%%

void main() {
  printf("enter the sentence:\n");
  yyparse();
  printf("Valid statement\n");
  exit(0);
}
void yyerror() {
  printf("Invalid statement\n");
  exit(0);
}
