#!/bin/bash
set -euo pipefail # Add this line right after shebang

read -p "Which site you want to check? " site

ping -n 5 "$site" # use -c if you are in linux and -n on windows

if [[ $? -eq 0 ]]; then
    echo "Successfully connected to $site"
else
    echo "Unable to connect to $site :((( "
fi
