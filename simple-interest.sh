#!/usr/bin/env bash
# Simple Interest Calculator
# Usage: ./simple-interest.sh [principal] [time] [rate]

# Check if 3 arguments are passed
if [ $# -eq 3 ]; then
  P=$1
  T=$2
  R=$3
else
  # Ask user for input
  read -p "Principal (P): " P
  read -p "Time (T in years): " T
  read -p "Rate (R percent per year): " R
fi

# Calculate Simple Interest
SI=$(echo "scale=2; ($P * $T * $R) / 100" | bc)
echo "Simple Interest = $SI"
