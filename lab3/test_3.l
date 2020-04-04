/* print no. of empty lines in the files and append line numbers */
%{
    #include <stdio.h>
    int emptyLineCount=0, lineCount=1;
%}
%%
.+ {fprintf(yyout,"%d. %s\n",lineCount, yytext);}
\n {lineCount++;}
\n\n {lineCount++; emptyLineCount++; fprintf(yyout,"%d.\n",lineCount++);}
%%
int main(){
  yyin = fopen("input.txt", "r");
  yyout = fopen("output.txt", "w");
  yylex();
  fprintf(yyout,"\nEmpty lines:- %d\n",emptyLineCount);
}
