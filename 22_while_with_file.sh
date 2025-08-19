#!/bin/bash

while read-r  myvar; do
    echo "Value from file is $(myvar)"
done <names.txt


To read the content from a file add "<names.txt" at last to read
