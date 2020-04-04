/* implement caesar cipher */
%{
  #include <stdio.h>
%}
%%
[a-z] {printf("%c", 'a' + (yytext[0] - 'a' + 3) % 26);}
