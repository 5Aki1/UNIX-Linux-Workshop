#!/bin/bash

# Define the size of the file in bytes (500 KB)
file_size=$((500 * 1024))

# Loop until the desired file size is reached
current_size=0
while [ $current_size -lt $file_size ]; do
    # Generate random values for BED format: chr, start, end
    chr=$(printf "chr%d" $((RANDOM % 22 + 1)))  # Random chromosome from chr1 to chr22
    start=$((RANDOM % 100000000))              # Random start position (0 to 100,000,000)
    end=$((start + RANDOM % 1000))             # End position (start position + random length up to 1000)

    # Calculate the length of the line
    line_length=$(echo -e "$chr\t$start\t$end" | wc -c)

    # Output the random BED entry to stdout if it doesn't exceed the file size limit
    if [ $((current_size + line_length)) -le $file_size ]; then
        echo -e "$chr\t$start\t$end"
        current_size=$((current_size + line_length))
    else
        break
    fi
done
