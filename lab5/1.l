/* yyterminate */
%%
[a-z]+  {printf("lower case "); ECHO; printf(" begin yyterminate "); yyterminate(); printf("end of yyterminate");}
[a-zA-Z]+ {printf(" mixed case "); ECHO;}

%%
main() {yylex(); printf("\nend\n");}
