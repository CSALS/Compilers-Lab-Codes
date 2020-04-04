/* [^A-Z] {printf("ok ");} */
/* [abj-oz] {printf("ok2 ");} */
%%
[a] {printf("X");}
