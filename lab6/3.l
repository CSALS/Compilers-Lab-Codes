%{
    #include <stdio.h>
    char buf[100];
    char *s;
%}
/* %s / START defines start state */
%x STRING
%%
"go" { BEGIN(STRING); s = buf; }
<STRING>"ok" *s++ = 'a';
<STRING>"yes" *s++ = 'b';
<STRING>"do" *s++ = 'c';
<STRING>"next" { BEGIN 0; printf("found '%s' \n", buf);}
<STRING>"big" {printf("invalid string"); exit(1);}
"good" {printf("goood");};
%%
