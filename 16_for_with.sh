#!/bin/bash

# Getting values from a file names.txt

file="names.txt" # Path of your file

for name in $(cat $file); do
    echo "Name is $name"
done
