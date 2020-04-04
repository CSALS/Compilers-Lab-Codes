/* yywrap */

%option noyywrap
%%
[a-z]+ {printf("%s\n", yytext);}
%%
int main(int argc, char** argv) {
  if(argc < 2) {
    //read from stdin
    yylex();
    return 0;
  }
  //read from all "argc" files
  for(int i = 1; i < argc; ++i) {
    FILE *fp = fopen(argv[i], "r");
    if(!fp) {
      perror(argv[i]);
      return 0;
    }
    yyrestart(fp);
    yylex();
    fclose(fp);
  }
  return 0;
}
