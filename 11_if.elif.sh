#!/bin/bash

read -p "Enter your marks: " MARKS

if [[ $MARKS -ge 80 ]]; then
    echo "1st Division"
elif [[ $MARKS -ge 60 ]]; then
    echo "2nd Division"
elif [[ $MARKS -ge 30 ]]; then
    echo "3rd Division"
else
    echo "You are FAIL!!!!!!"
fi
