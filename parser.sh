#!/usr/bin/env bash
PARSER_FILE=${1?Specify parser file}
LEX_FILE=${2?Specify lexer file}
yacc -d $PARSER_FILE
lex $LEX_FILE
cc y.tab.c lex.yy.c -ll -ly
./a.out
