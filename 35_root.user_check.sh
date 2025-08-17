#!/bin/bash

# Checking if the user is root or not

if [[ $UID -eq 0 ]]; then
    echo "User is root 🤗 "
else
    echo "Why the f**k are you not logged in as root_user 😒 "
fi
