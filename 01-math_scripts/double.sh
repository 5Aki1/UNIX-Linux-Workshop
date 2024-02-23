#!/bin/bash

# Read input from stdin
read num

# Check if input is a number
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo ">:( (Error: '$num' is not a valid number)" >&2
    exit 1
fi

# Double the value
double=$((num * 2))

# Output doubled value to stdout
echo "$double"

