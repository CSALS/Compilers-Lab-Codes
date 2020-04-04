%{
    #include "y.tab.h"
%}

%%
a {return a1;}
b {return b1;}
"\n" {return nl;}
[c-zA-Z0-9] {return err;}
%%
