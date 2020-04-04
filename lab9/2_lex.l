%{
    #include "y.tab.h"
%}

%%
"IF" return IF;
"THEN" return THEN;
"ELSE" return ELSE;
[a-zA-Z0-9]+ return STMT;
"("|")" return *yytext;
"\n" return nl;
[ \t] {/**/}
