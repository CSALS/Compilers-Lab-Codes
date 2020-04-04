%{
    #include <stdio.h>
%}

%token nl eq semi ID NUM

%%
S : CHECK nl{return;}
CHECK : ID eq ID semi{printf("Valid assignment\n");}
      | ID eq NUM semi{printf("Valid assignment\n"); }
%%

void main() {
  printf("Enter the string: \n");
  yyparse();
  exit(0);
}

void yyerror() {
  printf("Invalid assignment\n");
  exit(0);
}
