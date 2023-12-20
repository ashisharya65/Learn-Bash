#!/bin/bash

read -p "Enter the number: " number

if [ $number -eq 200 ]
then
    echo "The number entered is not equal to 200."
else
    echo "The number entered is equal to 200."
fi