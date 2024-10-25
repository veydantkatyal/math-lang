#ifndef OPTIMIZER_H
#define OPTIMIZER_H

#include "ir.h"

// Functions for optimizations
int optimize_constant_folding(Node* node);
void optimize_dead_code_elimination(void);

#endif // OPTIMIZER_H
