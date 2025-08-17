#!/bin/bash

FILEPATH="/mnt/k/Bash/test.dat" # for windows this path
{
    if [[ -f $FILEPATH ]]; then
        echo "File exist 🙂🙂🙂🙂✌️✌️✌️✌️ "
    else
        echo "f**k off file doesn't exist first create it 🤬🤬🤬🤬"
        exit 1
    fi
} >automation.txt
