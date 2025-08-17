#!/bin/bash

# Monitoring the free fs space disk 
FU=$(df -h | egrep -v "Filesystem|tmpfs|efivarfs" | grep "sda5" | awk '{print $5}' | tr -d %)

if [[ $FU -ge 10 ]]
then
	echo "Warning ⚠️  , disk space is low!!!!!!!!!!"
else
	echo "All good"
fi


