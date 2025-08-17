#!/bin/bash

# blink=$(tput blink)
# reset=$(tput sgr0)
# printf "%s" "${blink} Enter Your Name: ${reset}"
# read -r name
# echo "Hi $name"

password=123
tput cup 15 40
tput setab 4
tput setaf 1
echo "Welcome to my program!!"
tput sgr0
tput cup 17 40
echo "Enter Password "
tput cup 17 55
# tput invis ## this moves the cursor while typing the password
read -rs usrpwd # -s makes silent which invisble the password -r takes raw input prevent backslash(\n)

if [[ "$usrpwd" == "$password" ]]; then
    cmatrix
else
    echo "Invalid Password"
fi

echo -e "Name\tAge\tCity" # t means leave a gap of tab space
echo -e "John\t25\tNew York"
echo -e "Alice\t30\tLondon"

# read -p "myname" Your Name
: <<COMMENT

Common format specifiers:
%s = String
%d = Integer/Number
%f = Floating point number
%% = Literal % symbol
COMMENT

: <<COMMENT

 Without -r 
read name
If user types: John\nDoe
Variable gets: JohnnDoe (backslash-n becomes newline)

COMMENT

: <<COMMENT

read -r name  
# If user types: John\nDoe
# Variable gets: John\nDoe (exactly what user typed)

COMMENT

#tput clear
#echo -n "Total number of rows on screen = " # -n supresses newline
#tput lines
#echo -n "Total number of columns on screen = "
#tput cols ## number of colums
#tput cup 15 20 # to move the cursor to 15 = row , 20 = column
#tput bold
#echo "This should be in bold"
#tput sgr0 # RESET ALL FORMATTING(tput way)
#echo "Bye Bye"
