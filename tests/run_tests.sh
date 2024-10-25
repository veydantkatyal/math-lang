#!/bin/bash

# Paths to directories
TEST_CASE_DIR="./tests/test_cases"
EXPECTED_OUTPUT_DIR="./tests/expected_outputs"
TEMP_OUTPUT="./tests/temp_output.txt"

# Function to run individual test cases
run_test_case() {
    local test_case_file=$1
    local expected_output_file=$2

    # Run the MathLang compiler on the test case and save the output
    ./compiler < "$test_case_file" > "$TEMP_OUTPUT"

    # Compare the output with the expected result
    if diff "$TEMP_OUTPUT" "$expected_output_file" > /dev/null ; then
        echo "Test $(basename $test_case_file): PASS"
    else
        echo "Test $(basename $test_case_file): FAIL"
        echo "Expected:"
        cat "$expected_output_file"
        echo "Actual:"
        cat "$TEMP_OUTPUT"
    fi
}

# Run each test case
run_test_case "$TEST_CASE_DIR/test1.ml" "$EXPECTED_OUTPUT_DIR/test1_output.txt"
run_test_case "$TEST_CASE_DIR/test2.ml" "$EXPECTED_OUTPUT_DIR/test2_output.txt"
run_test_case "$TEST_CASE_DIR/test3.ml" "$EXPECTED_OUTPUT_DIR/test3_output.txt"
run_test_case "$TEST_CASE_DIR/test4.ml" "$EXPECTED_OUTPUT_DIR/test4_output.txt"
run_test_case "$TEST_CASE_DIR/test5.ml" "$EXPECTED_OUTPUT_DIR/test5_output.txt"

# Clean up temporary output file
rm "$TEMP_OUTPUT"
