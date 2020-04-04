/* unput('a') */

%%
"une" {printf("the unput char is = "); ECHO;printf("\nyytext = %s\n", yytext);}
[a-z]+ {printf("lower case token is = "); ECHO; unput('e');unput('n'); unput('u');
        printf("\nyytext = %s\n", yytext);
        printf("the token  after unput is = "); ECHO;}
[a-zA-Z]+ {printf("mixed token is = "); ECHO;}
%%
