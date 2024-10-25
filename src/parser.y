%{
#include "semantic.h"
#include "ir.h"
#include <stdio.h>
void yyerror(const char *s);
%}

%union {
    int num;
    char *var;
}

%token MATRIX SOLVE NUM VAR
%left '+' '*'

%%

program:
    program statement ';' { /* Continue parsing */ }
    | /* Empty program */
    ;

statement:
    VAR '=' expression { set_var_value($1, $3); }
    | MATRIX '(' expression ')' { perform_matrix_op($3); }
    ;

expression:
    expression '+' expression { $$ = create_add_node($1, $3); }
    | expression '*' expression { $$ = create_mult_node($1, $3); }
    | NUM { $$ = create_num_node($1); }
    | VAR { $$ = get_var_value($1); }
    ;

%%

void yyerror(const char *s) {
    fprintf(stderr, "Error: %s\n", s);
}
