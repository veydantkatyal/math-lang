#include "ir.h"

Node* create_add_node(int left, int right) {
    Node* node = malloc(sizeof(Node));
    node->type = ADD;
    node->left = left;
    node->right = right;
    return node;
}

Node* create_mult_node(int left, int right) {
    Node* node = malloc(sizeof(Node));
    node->type = MULT;
    node->left = left;
    node->right = right;
    return node;
}

Node* create_num_node(int value) {
    Node* node = malloc(sizeof(Node));
    node->type = NUM;
    node->value = value;
    return node;
}
