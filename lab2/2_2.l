%{
  #include <stdio.h>
%}

%%
hyderabad fprintf(yyout, "%s", "Telangana");
bphc fprintf(yyout, "%d", 65);

%%
main() {
  yyin = fopen("input.txt", "r");
  yyout = fopen("output.txt", "w");
  yylex();
}
