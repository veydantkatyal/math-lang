#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Step 1: Clean previous builds
echo "Cleaning previous builds..."
./scripts/clean.sh

# Step 2: Compile lexer
echo "Compiling lexer..."
flex -o src/lexer/lexer.c src/lexer/lexer.l
gcc -c -o src/lexer/lexer.o src/lexer/lexer.c

# Step 3: Compile parser
echo "Compiling parser..."
yacc -d -o src/parser/parser.c src/parser/parser.y
gcc -c -o src/parser/parser.o src/parser/parser.c

# Step 4: Compile semantic analysis, IR, optimizer, and codegen
echo "Compiling semantic analysis, IR, optimizer, and code generation modules..."
gcc -c -o src/semantic/semantic.o src/semantic/semantic.c
gcc -c -o src/ir/ir.o src/ir/ir.c
gcc -c -o src/optimization/optimizer.o src/optimization/optimizer.c
gcc -c -o src/codegen/codegen.o src/codegen/codegen.c

# Step 5: Compile the main entry file
echo "Compiling main program..."
gcc -c -o src/main.o src/main.c

# Step 6: Link all the object files together
echo "Linking all modules..."
gcc -o mathlang src/lexer/lexer.o src/parser/parser.o src/semantic/semantic.o src/ir/ir.o src/optimization/optimizer.o src/codegen/codegen.o src/main.o

# Step 7: Finished
echo "Build successful. Run './mathlang' to execute the compiler."
