#!/bin/bash

commands=( whois dig host nslookup )
echo "Please type in a domain"
read domain
dns-records ()
{
    
        for command in ${commands[*]}
        do
            $command $domain >> 'dns-records.txt'
        done
}
dns-records