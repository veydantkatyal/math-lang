#include <stdio.h>
#include "lexer.h"
#include "parser.h"

int main(int argc, char** argv) {
    if (argc > 1) {
        FILE* file = fopen(argv[1], "r");
        if (!file) {
            perror(argv[1]);
            return 1;
        }
        yyin = file;
        yyparse();
        fclose(file);
    } else {
        yyparse();
    }
    return 0;
}
