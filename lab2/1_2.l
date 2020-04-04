%{
  #include <stdio.h>
%}
%%
STOP {return;}
START {return;}
%%
main() {
  yylex();
  printf("%s \n", yytext);
  printf("%d \n", yyleng);
}
