#!/bin/bash

counter=1
until [ $counter -gt 10 ]
do 
    echo -n "$counter "
    ((counter++))
    sleep 0.5
done
echo ""