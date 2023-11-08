#!/bin/bash

commands=( whois dig host nslookup ) #commands to be used by the script
echo "Please type in a domain" #prompting the user to enter a domain name
read domain #read the user input and put it the domain variable
dns-records () 
{
    
        for command in ${commands[*]}
        do
            $command $domain >> 'dns-records.txt'
        done
}
#Using a for loop using the array of commands to run against the domain variable and executing the commands, putting it in a text file called dns-records.txt
dns-records #call the function