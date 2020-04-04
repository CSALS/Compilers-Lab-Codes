/* write lex program that prints ongest string from input file and also its length
string is anything other than space, tab space, newline, ., ^ */
%{
    #include <stdio.h>
    #include <stdlib.h>
    #include <string.h>
    int max_len = 0;
    char max_string[100000];
%}
%%
[^ \t\n\^\.]+ {if(max_len < yyleng) {max_len = yyleng; strcpy(max_string, yytext);}}
%%
int main() {
  yyin = fopen("input.txt", "r");
  yylex();
  printf("%d %s\n", max_len, max_string);
}
