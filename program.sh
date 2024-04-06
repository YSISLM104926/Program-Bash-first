#!/bin/bash

# Prompt user for the number
echo "Enter a number to generate its multiplication table:"
read number

# Check if the input is a valid number
if ! [[ "$number" =~ ^[0-9]+$ ]]; then
    echo "Error: Please enter a valid number."
    exit 1
fi

# Function to generate the multiplication table
generate_multiplication_table() {
    local num="$1"
    echo "Multiplication table for $num:"
    for (( i = 1; i <= 10; i++ )); do
        echo "$num x $i = $(($num * $i))"
    done
}

# Call the function to generate the multiplication table
generate_multiplication_table "$number"


