#!/bin/bash

# AND operator

read -p "What is your age? " age
read -p "Your citizenship? " citizen

if [[ $age -ge 18 ]] && [[ $citizen == "Indian" ]]; then
    echo "You can VOTE!!!!"
else
    echo "You cannot VOTE :( :( :( "
fi
