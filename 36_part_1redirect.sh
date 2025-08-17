#!/bin/bash

read -p "Which site you want to check? " site

exec >file.txt 2>&1

ping -c 5 $site #use -c if you are in linux and -n on windows

if [[ $? -eq 0 ]]; then
    echo "Successfully connected to $site 🎉🎉"
else
    echo "Unable to connect the $site :((( "
fi
