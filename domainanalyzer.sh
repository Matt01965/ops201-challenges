#!/bin/bash

# Script Name:                  Code Challenge 13
# Author:                       Matthew Earles
# Date of latest revision:      11/8/2023
# Purpose:                      Provide Domain information



# Ask the user to enter a domain name
echo "Enter a domain name"
read domain

ProvidesDomaininformation(){
    # Display whois information about the domain
    echo "WHOIS information:" >> test.txt
    whois $domain >> test.txt

    # Display DNS information about the domain using dig
    echo "DNS information (dig):" >> test.txt
    dig $domain >> test.txt

    # Display DNS information about the domain using host
    echo "DNS information (host):" >> test.txt
    host $domain >> test.txt

    # Display DNS information about the domain using nslookup
    echo "DNS information (nslookup):" >> test.txt
    nslookup $domain >> test.txt
}
ProvidesDomaininformation
