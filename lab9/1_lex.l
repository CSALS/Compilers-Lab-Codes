%{
  #include "y.tab.h"
%}

%%
[0-9]+ {yylval.ival = atoi(yytext); return INTEGER;}
"=" return eq;
[a-z]+ {
  yylval.sval = (char*)malloc(sizeof(char)*yyleng);
  strcpy(yylval.sval, yytext);
  return STRING;}
"\n" return nl;
%%
