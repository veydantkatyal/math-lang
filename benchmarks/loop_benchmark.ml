# Loop optimization benchmark

sum = 0;

for i = 1 to 1000000 {
    sum = sum + i;
}

# Nested loop to test unrolling
product = 1;

for i = 1 to 100 {
    for j = 1 to 100 {
        product = product * j;
    }
}
