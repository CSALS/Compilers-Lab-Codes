%{
    #include <stdio.h>
%}

/* %% */
/* . fprintf(yyout, "%s", yytext); */
/* If no rule is matched the default operation will be ECHO to yyout (default is stdout) */
%%
%%
main() {
  yyin = fopen("input.txt", "r");
  yyout = fopen("output.txt", "w");
  yylex();
}
