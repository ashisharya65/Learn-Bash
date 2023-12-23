#!/bin/bash

read -p "Enter your name: " name
read -p "Hello $name! Do you want to see the weather information - (y/n) : " answer

if [[ $answer == "y" ]]; then
    echo ""
    echo -n "Loading Information"
    
    for n in {1..5};
    do 
        sleep 1
        echo -n "."
    done
    echo -e "\n"

    for city in $(cat cities.txt)
    do
        weather=$(curl -s http://wttr.in/$city?format=3)
        echo "$weather"
    done
    echo ""
elif [[ $answer == "n" ]]; then
    echo "Ok.."
else
    echo "Enter y or n for next time"
fi
