#!/bin/bash

# Check if input argument is provided
if [ $# -ne 1 ]; then
    echo ">:( (Error: Please provide a single number as an argument)" >&2
    exit 1
fi

# Extract the number from the argument
num=$1

# Check if input is a number
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo ">:( (Error: '$num' is not a valid number)" >&2
    exit 1
fi

# Calculate square
square=$((num * num))

# Output square to stdout
echo "$square"

