#!/bin/bash

# Math calculation

x=30
y=2

# mul=$x*$y # this will not give the output of the multiplication you have to use "let"
let mul=$x*$y
echo "$mul"

let sum=$x+$y
echo "$sum"

# Method 2

echo "subraction is $(($x - $y))"
