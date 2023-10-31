#!/bin/bash
# Script Name:                  grep.sh
# Author:                       Cody Juhl
# Date of latest revision:      10/31/2023
# Purpose:                      A script to demonstrate the usage of the grep command

# Declaration of variables

# Declaration of functions

#Main
echo "Name of the computer:" 
lshw | grep "cody-optiplex-790" # using grep to grab the name of the computer because it's specific
echo
echo "CPU information:"
lshw -c cpu | grep -E "product|vendor|physical id|bus info|width" # grep the class cpu, only show product, vendor, physical id, bus info, and width
echo
echo "Memory information:"
su -c "lshw -c memory" -s /bin/sh cody 2>/dev/null # tried doing the previous above, but was also giving me more info than needed, but found that running as regular user, shows whats necessary 2>/dev/null sends error messages to the void
echo
echo "Display information:"
lshw -c display | grep -E "description|production|vendor|physical id|bus info|width|clock|capabilities|configuration|resources" # Using the first command to grab all the info for the display adapter
echo
echo "Network adapter information"
lshw -c network | grep -E "description|product|vendor|physical id|bus info|logical name|version|serial|size|capacity|width|clock|capabilities|configuration|resources"
#End