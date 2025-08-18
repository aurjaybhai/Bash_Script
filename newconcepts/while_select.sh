#!/bin/bash

while :
do
    clear
    cat<<EOF  # EOF means  (End of File) but you can use anything it's custom word like even you can your name also
    ==============================
    Menusystem experiment
    ------------------------------
    Please enter your choice:

    Option (1)
    Option (2)
    Option (3)
           (Q)uit
    ------------------------------
EOF
    read -n1 -s #give me exactly one character and then stop waiting for "ENTER" key
    case "$REPLY" in  # If you do not give "read" a variable name fir chup chup into default variable called "$REPLY"
    "1")  echo "you chose choice 1" ;;
    "2")  echo "you chose choice 2" ;;
    "3")  echo "you chose choice 3" ;;
    "Q")  exit                      ;;
    "q")  echo "case sensitive!!"   ;; 
     * )  echo "invalid option"     ;;
    esac
    sleep 1 # shows for 1 second before vanish
done
