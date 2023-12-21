#!/bin/bash

# Example 1
read -p "Enter the number: " number

if [ $number -eq 200 ]
then
    echo "The number entered is not equal to 200."
else
    echo "The number entered is equal to 200."
fi

# Example 2
command=htop
if command -v $command
then
    echo "The command is available, let's run it..."
else
    echo "The command is not available, let's install it.."
    sudo apt update && sudo apt install -y htop
fi

$command