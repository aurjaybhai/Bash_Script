#!/bin/bash

echo "Provide an option"
echo "a for print date"
echo "b for list of scripts"
echo "c to check the current location"

read choice

case $choice in
    # a)date;; how to add multiple options or cmd
    a)
        echo "Today's date is: "
        date
        echo "Ending........"
        ;;
    b) ls ;;
    c) pwd ;;
    *) echo "Invalid input" ;;
esac
