%{
    #include "y.tab.h"
%}

%%
[a-zA-Z_][0-9a-zA-Z_]* return ID;
[0-9]+ return NUM;
"=" return eq;
";" return semi;
"\n" return nl;
