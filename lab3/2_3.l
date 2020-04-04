%%
begin |
beginning {ECHO; REJECT;}
. printf("xx%c", *yytext);
%%
