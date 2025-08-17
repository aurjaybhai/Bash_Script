#!/bin/bash

# Array

myArray=(1 20 30.5 Hello "Hey Buddy!")

echo "Value in 3rd index ${myArray[3]}"

# To see all index together
echo "All the values in array are ${myArray[*]}"

# How to find no. values in an array

echo "No . of values, length of an array is ${#myArray[*]}"

# How to get specific values

echo "Values from index 2-3 ${myArray[*]:2:2}"

# Updating our Arrays with new values

myArray+=(New 30 40)

echo "Values of new array are ${myArray[*]}"
