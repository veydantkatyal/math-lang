#ifndef UTILS_H
#define UTILS_H

#include <stdlib.h>
#include <stdio.h>

// Utility function for error handling
void error(const char *msg) {
    fprintf(stderr, "%s\n", msg);
    exit(1);
}

#endif // UTILS_H
