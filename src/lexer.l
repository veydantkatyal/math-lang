%{
#include "parser.h"
#include "lexer.h"
%}

digit [0-9]
letter [a-zA-Z]

%%

"matrix" { return MATRIX; }
"solve" { return SOLVE; }
{digit}+ { yylval.num = atoi(yytext); return NUM; }
{letter}+ { yylval.var = strdup(yytext); return VAR; }

"+" { return PLUS; }
"*" { return MULT; }

[ \t\n]+ { /* Skip whitespaces */ }
. { return yytext[0]; }

%%

int yywrap() { return 1; }
