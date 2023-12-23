#!/bin/bash

: '
    This is a bash script using which you will be able to create an Azure resource group using Azure CLI.
    Make sure you have Azure CLI already installed on your machine.
    
'
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
    for sub in $allazsubs;
    do 
        echo "$sub"
    done
    echo ""

    read -p "Enter your subscription name: " subname
    az account set --name $subname
elif [ $answer == "n" ];then
    echo -e "Ok. Exiting the script...\n"
    exit
else
    echo -e "Enter yes or no to proceed or exit the script.\n"
    exit
fi

# Checking if the concerned resource group is created or not. If not then then create it.
if [ $(az group exists -n $rgname) ]; then
    echo "The resource group $rgname already exists."
else
    az group create --name $rgname --location $loc >/dev/null
    echo "The resource group $rgname created successfully."
fi
