%{
    #include "y.tab.h"
%}

%%
[0-9]+ {
  yylval = atoi(yytext);
  return INTEGER;
}
"+" return yytext[0];
"-" return *yytext;
"*" return *yytext;
"/" return *yytext;
"(" return *yytext;
")" return *yytext;
"\n" return;
%%
