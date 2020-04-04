/* yymore */
%%
hyper {yymore(); printf("x");}
text printf("token is %s\n", yytext);
%%
/* %%
hyper printf("token is %s\n", yytext);
text printf("token is %s\n", yytext);
%% */
