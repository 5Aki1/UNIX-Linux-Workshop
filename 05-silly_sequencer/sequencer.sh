#!/bin/bash

# Function to generate a random nucleotide
generate_nucleotide() {
    local random_num=$(( RANDOM % 100 ))
    if (( random_num < 98 )); then
        local nucleotides=('A' 'T' 'C' 'G')
    else
        local nucleotides=('A' 'T' 'C' 'G' 'N')
    fi
    local random_index=$(( RANDOM % ${#nucleotides[@]} ))
    echo "${nucleotides[random_index]}"
}

# Function to generate a sequence with random nucleotides and occasional 'N'
generate_sequence() {
    local sequence=""
    for ((i = 0; i < 8; i++)); do
        local nucleotide=$(generate_nucleotide)
        sequence="$sequence$nucleotide"
    done
    echo "$sequence"
}

# Generate sequences
for ((i = 1; i <= 1000; i++)); do
    sequence=$(generate_sequence)
    echo "$sequence"
    # Check if 'N' nucleotide is introduced in the sequence
    if [[ "$sequence" == *"N"* ]]; then
        echo "Warning: 'N' nucleotide introduced in sequence $i" >&2
    fi
done
