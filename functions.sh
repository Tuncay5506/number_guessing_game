#!/bin/bash

# Function to check if input is a number
is_number() {
    [[ $1 =~ ^[0-9]+$ ]]
}
