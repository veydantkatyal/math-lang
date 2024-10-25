#ifndef SEMANTIC_H
#define SEMANTIC_H

#include <stdlib.h>
#include <string.h>

// Struct representing variables
typedef struct {
    char *var_name;
    int value;
} Variable;

// Functions for semantic analysis
void set_var_value(char *var_name, int value);
int get_var_value(char *var_name);

#endif // SEMANTIC_H
