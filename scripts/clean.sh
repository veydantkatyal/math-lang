#!/bin/bash

# Clean object files and generated C files from Lex/Yacc
echo "Cleaning object files and generated C files..."
rm -f src/lexer/lexer.c src/lexer/lexer.o
rm -f src/parser/parser.c src/parser/parser.o src/parser/y.tab.h
rm -f src/semantic/semantic.o
rm -f src/ir/ir.o
rm -f src/optimization/optimizer.o
rm -f src/codegen/codegen.o
rm -f src/main.o
rm -f mathlang

echo "Cleanup complete."
