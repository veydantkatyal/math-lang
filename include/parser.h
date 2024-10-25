#ifndef PARSER_H
#define PARSER_H

#include <stdio.h>

// Parser function declarations
int yyparse(void);
void yyerror(const char *s);

#endif // PARSER_H
