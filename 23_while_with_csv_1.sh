#!/bin/bash

while IFS="," read id name age; do # IFS= Internal Field Seperator
    echo "Id is $id"
    echo "name is $name"
    echo "age is $age"
done <test.csv
#######################################

# The three Different Input Operators

# (1)  < - Input Redirection(from file)
# (2) << -multiple lines of input directly in the script
# (3) <<< - content of a variable or string and feeds it as input