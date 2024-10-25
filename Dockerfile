# Use Ubuntu as the base image
FROM ubuntu:20.04

# Install required packages
RUN apt-get update && apt-get install -y \
    flex \
    bison \
    gcc \
    make \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /usr/src/app

# Copy the entire project directory into the container
COPY . .

# Build the compiler using the Makefile
RUN make clean && make all

# Set the default command to run the MathLang compiler
CMD ["./mathlang"]
