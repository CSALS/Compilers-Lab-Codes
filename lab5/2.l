/* yyrestart */
%%
[a-zA-Z]+  {printf("lower case token = "); ECHO; printf("\n"); return;}

%%
main() {
  yylex();
  printf("\n");
  printf("end of first yylex");
  printf("\n");
  FILE *fp;
  fp = fopen("input.txt", "r+");
  yyrestart(fp);
  yylex();
  printf("\n");
  printf("end of 2nd lex");
}
