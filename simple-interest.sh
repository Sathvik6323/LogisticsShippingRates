#!/bin/bash

# Get user input for principal, rate, and time
read -p "Enter the principal amount (e.g., 1000): " principal
read -p "Enter the interest rate (e.g., 5 for 5%): " rate
read -p "Enter the time period (in years): " time

# Convert rate to decimal (assuming percentage is entered)
rate_decimal=$(echo "scale=2; $rate / 100" | bc)

# Calculate simple interest
simple_interest=$(echo "scale=2; $principal * $rate_decimal * $time" | bc)

# Display the result
echo "The simple interest for a principal of $principal at $rate% for $time years is: $simple_interest"
