%{
  #include "y.tab.h"
%}

%%
[1-9]+"."[0-9]+ {yylval.dval = atof(yytext); return NUM;}
[0-9]+ {yylval.ival = atoi(yytext); return INTEGER;}
"+" return *yytext;
"\n" return nl;
