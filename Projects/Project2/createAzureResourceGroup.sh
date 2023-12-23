#!/bin/bash

az login --use-device-code

rgname="azcli-rg"
loc="westus"
read -p "Do you have more than one Azure subscription - (y/n): " answer

# For setting the concerned Azure subscription
if [ $answer == "y" ];then
    echo -e "\nHere are all the subscriptions"
    echo "################################"
    
    # Getting all the subscription names
    allazsubs= az account list --query '[*].name' --output tsv
    count=0
    for sub in $allazsubs;
    do 
        count++
        echo "$sub"
    done
    echo ""

    read -p "Enter your subscription: " subname
    az account set --name $subname
elif [ $answer == "n" ];then
    echo "Ok.."
else
    echo "Enter yes or no to proceed with the script."
fi

# Checking if the concerned resource group is created or not. If not then then create it.
if [ $(az group exists -n $rgname) ]; then
    echo "The resource group $rgname already exists."
else
    az group create --name $rgname --location $loc >/dev/null
    echo "The resource group $rgname created successfully."
fi

