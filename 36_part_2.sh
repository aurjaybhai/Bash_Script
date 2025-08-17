#!/bin/bash

read -p "Which site you want to check? " site

{
    ping -c 5 $site #use -c if you are in linux and -n on windows

    if [[ $? -eq 0 ]]; then
        echo "Successfully connected to $site 🎉🎉"
    else
        echo "Unable to connect the $site :((( "
    fi
} >36_output.log 2>&1

echo "Results saved to output.log Please check it 🙏🙏🙏"
