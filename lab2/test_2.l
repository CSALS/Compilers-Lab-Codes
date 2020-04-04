/* identify float or integer */
%{
    #include <stdio.h>
%}

%%
[0-9]+[.][0-9]+ {printf("%s is float\n", yytext);}
[1-9][0-9]*|0 {printf("%s is integer\n", yytext);}

%%
main() {
  yyin = fopen("input.txt", "r");
  yylex();
}
