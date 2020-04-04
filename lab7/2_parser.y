%{
  #include <stdio.h>
%}
%token INTEGER
%%
sent : expr {$$ = $1; printf("%d\n", $$); return;}
expr : expr '+' num {$$ = $1 + $3;} | expr '-' num {$$ = $1 - $3;}
      | expr '*' num {$$ = $1 * $3;} | expr '/' num {$$ = $1 / $3;} | num {$$ = $1;}
num : '(' expr ')' {$$ = $2;} | INTEGER {$$ = $1;}
%%

void main() {
  printf("enter the sentence:\n");
  yyparse();
  printf("Valid statement\n");
  exit(0);
}
void yyerror() {
  printf("Invalid statement\n");
  exit(0);
}
