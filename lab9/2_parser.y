%{
    #include <stdio.h>
%}

%token nl IF THEN ELSE STMT

%%
S : CHECK nl {printf("Valid\n"); return;}
CHECK : IF '(' STMT ')' THEN STMT
      | IF '(' STMT ')' THEN STMT ELSE STMT
%%

void main() {
  printf("Enter the string: \n");
  yyparse();
  exit(0);
}

void yyerror() {
  printf("Invalid\n");
  exit(0);
}

/*
IF (hello) THEN world
IF (hello) THEN world ELSE 123HELLO
*/
