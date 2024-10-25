#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Step 1: Build Docker image
echo "Building Docker image for MathLang compiler..."
docker build -t mathlang-compiler .

# Step 2: Finished
echo "Docker image build complete. Use 'docker run -it mathlang-compiler' to run the compiler in a container."
