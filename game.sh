#!/bin/bash

source functions.sh

echo "Welcome to the Number Guessing Game!"
echo "Guess a number between 1 and 100."

# Generate a random number
target_number=$(( RANDOM % 100 + 1 ))
attempts=0

while true; do
    read -p "Enter your guess: " guess
    attempts=$(( attempts + 1 ))
    
    if ! is_number "$guess"; then
        echo "Please enter a valid number."
        continue
    fi

    if [ "$guess" -lt "$target_number" ]; then
        echo "Too low! Try again."
    elif [ "$guess" -gt "$target_number" ]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You've guessed the number $target_number in $attempts attempts."
        break
    fi
done
