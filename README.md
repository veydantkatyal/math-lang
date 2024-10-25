# MathLang Compiler

## Overview
The MathLang Compiler is an end-to-end compiler designed for scientific computing. It supports matrix operations, loops, arithmetic expressions, and optimizations like loop unrolling and constant folding. This compiler translates mathematical programs written in MathLang into optimized machine code, targeting performance for scientific applications.

## Features
- **Matrix Operations**: Efficient support for matrix multiplication and inversion.
- **Optimizations**: Loop unrolling, constant folding, dead code elimination.
- **Cross-Platform**: Supports Linux and can be run in Docker.
- **Error Handling**: Provides detailed error messages for syntax and semantic errors.

## Installation

### Local Installation
1. Clone the repository:
   ```bash
   git clone https://github.com/veydantkatyal/math-lang.git
2. Install the dependencies(on Ubuntu):
    ```bash
    sudo apt-get install flex bison gcc make
3. Build the project:
    ```bash
    make
4. Run the compiler with an example:
    ```bash
    ./mathlang < tests/test_cases/test1.ml

### Docker Installation
1. Build the Docker image:
    ```bash
    docker build -t mathlang-compiler .
2. Run the MathLang compiler in a Docker container:
    ```bash
    docker run -it mathlang-compiler

### Running Tests
1. Test cases can be found in the tests/test_cases/ directory. To run a test case:
    ```bash
    ./mathlang < tests/test_cases/test1.ml

## LICENSE
This is project is licensed under [MIT License](https://github.com/veydantkatyal/math-lang/blob/main/LICENSE), please go through it carefully, before using it.

