#!/bin/bash
# Script Name:                  Loops.sh
# Author:                       Cody Juhl
# Date of latest revision:      10/27/2023
# Purpose:                      asks for user input for PID then kills PID

# Declaration of variables
quit=0
# Declaration of functions


# Main
while quit=0
    do
        ps aux
        echo "What PID would you like to kill?"
        read input
        kill $input
    done


# End