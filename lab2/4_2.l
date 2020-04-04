%{
    #include <stdio.h>
    int wordCount = 0, numCount = 0;
%}

%%
[a-zA-Z]+ wordCount++;
[0-9]+ numCount++;

%%
main() {
  yyin = fopen("input.txt", "r");
  yyout = fopen("output.txt", "w");
  yylex();
  fprintf(yyout, "Word count = %d, Number count = %d\n", wordCount, numCount);
}
