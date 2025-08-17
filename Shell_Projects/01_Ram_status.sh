#!/bin/bash

FREE_SPACE=$(free -mt | grep "Total" | awk '{print $4}')
TH=3072

if [[ $FREE_SPACE -lt $TH ]]
then
    echo "Warning,⚠️  Low RAM!!!!"
else
    echo "Enough RAM Space - $FREE_SPACE M"
fi
