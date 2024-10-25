# Test large loops and nested loops

sum = 0;
for i = 1 to 100 {
    sum = sum + i;
}

product = 1;
for i = 1 to 10 {
    for j = 1 to 10 {
        product = product * j;
    }
}
