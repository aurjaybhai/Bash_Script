#!/bin/bash

#cond1 && cond2 || cond3

read -p "Enter Your Age: " age

[[ $age -ge 18 ]] && echo "Enjoy the Movie" || echo "Minor, Not Allowed to watch!!!"
