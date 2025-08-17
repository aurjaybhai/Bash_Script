#!/bin/bash

# To access the arguments

#echo "First argument is $1"
#echo "Second argument is $2"

# run : bash 27_argu.sh "<name>"
#echo "All the arguments are - $@"
#echo "Number of arguments are - $#"

#For loop to access the values from arguments

for filename in $@; do
    echo "Copying file - $filename"
done

# how to exit the script

if [[ $# -eq 0 ]]; then
    echo "Please Provide atleast one argument...."
    exit 1
fi
