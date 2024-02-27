#!/bin/bash

mkdir -p {TO_BE_FILTERED,"Recycling_bin"}

# Generate a random number between 1 and 100
random_num=$(( RANDOM % 100 + 1 ))

# echo "Random number: $random_num"

# Generate 100 txt files in the TO_BE_FILTERED directory
for i in {1..100}; do
    if [ $i -eq $random_num ]; then
        echo "You found me!" > TO_BE_FILTERED/file_$(printf "%03d" $i).txt
    else
        touch TO_BE_FILTERED/file_$(printf "%03d" $i).txt
    fi
done

