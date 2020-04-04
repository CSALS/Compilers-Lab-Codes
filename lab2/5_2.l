/* input - from file
stdout - No of words, No of characters in each word, No of whitespaces, No of lines */
%{
  #include <stdio.h>
  int wordCount = 0, whitespaceCount = 0, lineCount = 0;
%}

%%
[a-z]+ {wordCount++; printf("No of characters in %s = %d\n",yytext, yyleng);}
\n lineCount++;
[ \t] whitespaceCount++;

%%
main() {
  yyin = fopen("input.txt", "r");
  yylex();
  printf("No of words = %d\n", wordCount);.
  printf("No of whitespaces = %d\n", whitespaceCount);
  printf("No of lines = %d\n", lineCount);
}
