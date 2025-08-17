#!/bin/bash

while IFS="," read id name age; do # IFS= Internal Field Seperator
    echo "Id is $id"
    echo "name is $name"
    echo "age is $age"
done <test.csv
