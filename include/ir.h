#ifndef IR_H
#define IR_H

// Define the types of operations supported
typedef enum { ADD, MULT, NUM } NodeType;

// Struct representing a node in the IR
typedef struct Node {
    NodeType type;
    int value;
    struct Node *left;
    struct Node *right;
} Node;

// Functions for IR generation
Node* create_add_node(int left, int right);
Node* create_mult_node(int left, int right);
Node* create_num_node(int value);

#endif // IR_H
