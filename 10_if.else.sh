#!/bin/bash
read -rp "Enter your MARKS: " marks

if [[ $marks -gt 40 ]]; then
    echo "You are PASS"
else
    echo "You are FAIL!!!!!!!!!!"
fi
