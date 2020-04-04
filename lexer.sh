#!/usr/bin/env bash
FILE_NAME=${1?No file specified}

lex $FILE_NAME
cc lex.yy.c -ll
./a.out
