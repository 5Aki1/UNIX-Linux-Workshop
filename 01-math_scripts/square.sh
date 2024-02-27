#!/bin/bash

# Check if input argument is provided
if [ $# -eq 0 ]; then
    # Read input from stdin
    read num
elif [ $# -eq 1 ]; then
    num=$1
else
    echo ">:( (Error: Please provide only one number as an argument)" >&2
    exit 1
fi

# Check if input is a number
if ! [[ "$num" =~ ^[0-9]+$ ]]; then
    echo ">:( (Error: '$num' is not a valid number)" >&2
    exit 1
fi

# Calculate square
square=$((num * num))

# Output square to stdout
echo "$square"