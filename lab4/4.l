/* lex program that identifies various parts of speech */

%{
    #include <stdio.h>
    void scan();
    char verbs[10000][10000];
    int verb_size = 0;
    int verb_scan = 0;
    char nouns[10000][10000];
    int noun_size = 0;
    int noun_scan = 0;
%}

%%
[a-zA-Z]+ {scan();}
\n {
  if(verb_scan) verb_scan = 0;
  else if(noun_scan) { noun_scan = 0;}
  else {return;}
}
%%

int main() {
  yylex();
}

void scan() {
  if(!strcmp(yytext, "verb")) {verb_scan = 1;}
  else if(verb_scan) {
    strcpy(verbs[verb_size++], yytext);
  }
  else if(!strcmp(yytext, "noun")) {noun_scan = 1;}
  else if(noun_scan) {
    strcpy(nouns[noun_size++], yytext);
  }
  else if(noun_scan == 0 && verb_scan == 0) {
    printf("\n");
    for(int i = 0; i < verb_size; ++i) {
      if(!strcmp(yytext, verbs[i])) {
        printf("%s is a verb\n", yytext);
        return;
      }
    }
    for(int i = 0; i < noun_size; ++i) {
      if(!strcmp(yytext, nouns[i])) {
        printf("%s is a noun\n", yytext);
        return;
      }
    }
    printf("%s is a unrecognized\n", yytext);
  }
}
