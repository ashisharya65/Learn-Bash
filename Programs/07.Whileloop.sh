#!/bin/bash

counter=1
while [ $counter -le 10 ];
do
    echo -n "$counter "
    ((counter++))
    sleep 0.5
done
echo ""
