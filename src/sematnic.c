#include "semantic.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

Variable symbol_table[100];
int symbol_count = 0;

int get_var_value(char *var_name) {
    for (int i = 0; i < symbol_count; i++) {
        if (strcmp(symbol_table[i].var_name, var_name) == 0) {
            return symbol_table[i].value;
        }
    }
    fprintf(stderr, "Undefined variable: %s\n", var_name);
    exit(1);
}

void set_var_value(char *var_name, int value) {
    for (int i = 0; i < symbol_count; i++) {
        if (strcmp(symbol_table[i].var_name, var_name) == 0) {
            symbol_table[i].value = value;
            return;
        }
    }
    symbol_table[symbol_count].var_name = strdup(var_name);
    symbol_table[symbol_count].value = value;
    symbol_count++;
}
