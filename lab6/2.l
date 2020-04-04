%{
    #include <stdio.h>
%}
/* %s / START defines start state */
%s expect
%%
expect_float BEGIN(expect);
<expect>[0-9]+"."[0-9]+ {
    printf("found a float = %f \n", atof(yytext));}
[0-9]+ {printf("found an integer = %d\n", atoi(yytext));}
"." printf("found a dot\n");

%%
main() {yylex();}
