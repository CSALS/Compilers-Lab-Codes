%{
    #include "y.tab.h"
%}
%%
[0-9]+ return NUM;
"." return DOT;
%%
