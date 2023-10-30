#!/bin/bash
# Script Name:                  conditionals.sh
# Author:                       Cody Juhl
# Date of latest revision:      10/30/2023
# Purpose:                      To show my ability to script conditional statements

# Declaration of variables
create_tests=("test" "test2" "test3" "test4")
# Declaration of functions


#Main
echo "Searching for test directories"
echo
for test in ${create_tests[@]}
    do
        echo "Finding test directory...."
        if [[ $(find ./$test) == ./$test ]]
            then
            echo "Found directory"

            else
            echo "No directory found, creating...."
            mkdir $test
        fi
    done
echo
echo "Process finished"



#End