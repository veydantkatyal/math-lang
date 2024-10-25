#ifndef LEXER_H
#define LEXER_H

#include <stdio.h>
#include <stdlib.h>

// Lexer function declarations
extern int yylex(void);
extern FILE *yyin;
extern char* yytext;
int yywrap(void);

#endif // LEXER_H
