#!/bin/bash

# bash menu script that checks
# memory usage
# cpu load
# number of tcp connections
# kernal version

server_name=$(hostname)

function memory_check() {
    echo ""
    echo "Memory usage on ${server_name} is : "
    free -h
    echo ""
}

function cpu_check() {
    echo ""
    echo "CPU Load on ${server_name} is : "
    uptime
    echo ""
}

function tcp_check() {
    echo ""
    echo "TCP connections on ${server_name} : "
    echo ""
    cat /proc/net/tcp | wc -l
    echo ""
}

function kernel_check() {
    echo ""
    echo "Kernel version on ${server_name} is : "
    echo ""
    uname -r
    echo ""
}

function all_checks() {
    memory_check
    cpu_check
    tcp_check
    kernel_check
}

##
# Color Variables
##
green='\033[32m'
blue='\033[34m'
red='\033[31m'
clear='\033[0m'

ColorGreen() {
    echo -ne "$green$1$clear"
}

ColorBlue() {
    echo -ne "$blue$1$clear"
}

menu() {
    echo -ne "
    My First Menu
    $(ColorGreen '1)') Memory Usage
    $(ColorGreen '2)') CPU Load
    $(ColorGreen '3)') Number of TCP Connections
    $(ColorGreen '4)') Kernel Versions
    $(ColorGreen '5)') Check All
    $(ColorGreen '0)') Exit
    $(ColorBlue 'Choose an option :') "
    read a
    case $a in
        1)
            memory_check
            menu
            ;;
        2)
            cpu_check
            menu
            ;;
        3)
            tcp_check
            menu
            ;;
        4)
            kernel_check
            menu
            ;;
        5)
            all_checks
            menu
            ;;
        0) exit 0 ;;
        *)
            echo -e "${red} Invalid Option.${clear}"
            menu
            ;; # "*" is used to check the input other than above ones
    esac
}

# Call the function
menu
