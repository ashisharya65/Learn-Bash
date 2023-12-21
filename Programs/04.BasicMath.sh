#!/bin/bash

# Use of expr command to do the basic math
echo "Addition of two numbers are : $(expr 100 + 2)."
echo "Subtraction of two numbers are : $(expr 100 - 2)."

# In below expression \ escape character is used to tell the interpreter that it is multiplication symbol and not the wildcard symbol.
echo "Multiplicaiton of two numbers are : $(expr 100 \* 2)." 
echo "Division of two numbers are : $(expr 100 \/ 2)."