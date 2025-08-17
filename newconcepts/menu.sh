#!/usr/bin/bash

PS3="Select an Option : " #ps3 is special variable in bash scripting

select os in "Ubuntu" "Arch" "Linux Mint" "Fedora" "Quit"; do
    case $os in "Ubuntu")
        echo "You choosen $os"
        break
        ;;
    "Arch")
        echo "You choosen $os"
        break
        ;;
    "Linux Mint")
        echo "You choosen $os"
        break
        ;;
    "Fedora")
        echo "You choosen $os"
        break
        ;;
    "Quit")
        echo "Bye Bye..."
        break
        ;;
    *)
        echo "Sorry, Your choice was invalid!! Please Try again..."
        ;;
    esac
done
