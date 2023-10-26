#!/bin/bash
# Script Name:                  arrays.sh
# Author:                       Cody Juhl
# Date of latest revision:      10/26/2023
# Purpose:                      Creates directories and makes new text files in them

# Declaration of variables
directories=("dir1" "dir2" "dir3" "dir4")
# Declaration of functions

# Main
mkdir ${directories[*]}
touch ~/Ops-201-d10-code-challenges/${directories[0]}/text.txt
touch ~/Ops-201-d10-code-challenges/${directories[1]}/text.txt
touch ~/Ops-201-d10-code-challenges/${directories[2]}/text.txt
touch ~/Ops-201-d10-code-challenges/${directories[3]}/text.txt
# End