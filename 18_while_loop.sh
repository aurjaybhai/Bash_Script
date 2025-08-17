#!/bin/bash

count=0
num=20

while [[ $count -le $num ]]; do
    echo "Value of count var is $count"
    let count++
done
