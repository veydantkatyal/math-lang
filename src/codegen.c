#include "codegen.h"
#include <stdio.h>

void generate_code(Node* node) {
    if (node->type == ADD) {
        printf("add %d, %d\n", node->left->value, node->right->value);
    } else if (node->type == MULT) {
        printf("mult %d, %d\n", node->left->value, node->right->value);
    } else if (node->type == NUM) {
        printf("load %d\n", node->value);
    }
}
