#!/bin/bash

# Set tab stops at columns 10, 20, 30
#tput settab 10  # don't use this bcoz it's for old terminal modern termianls don't support this
#tput settab 20
#tput settab 30

# Check if your terminal supports settab
#tput -T $TERM settab 10 2>/dev/null && echo "Supported" || echo "Not supported"

printf "%-10s %-5s %-15s\n" "Name" "Age" "City"
printf "%-10s %-5s %-15s\n" "John" "25" "New York"
printf "%-10s %-5s %-15s\n" "Alice" "30" "London"
