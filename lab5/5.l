/* calculator to find out a+b / a-b / a*b / a/b */
%{
    char *first, *second;
    char op;
%}
%%
[0-9]+([.][0-9]+)? {
  if(first == NULL) {
    first = yytext;
  }
  else if(first != NULL) {
    second = yytext;
    float f_first = (float)atof(first);
    float f_second = (float)atof(second);
    first = NULL;
    second = NULL;
    if(op == '+') printf("%f", f_first+f_second);
    else if(op == '-') printf("%f", f_first-f_second);
    else if(op == '*') printf("%f", f_first*f_second);
    else if(op == '/')
    {
      if(f_second == 0) {
        printf("cant divide by zero");
      }
      else {
        printf("%f", f_first/f_second);
      }
    }
  }
}
[/+*-] {op=yytext[0];}
%%
