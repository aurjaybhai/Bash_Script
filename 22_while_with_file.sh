#!/bin/bash

while read-r  myvar; do
    echo "Value from file is $(myvar)"
done <names.txt
