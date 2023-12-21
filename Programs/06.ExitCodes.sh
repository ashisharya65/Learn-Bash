#!/bin/bash

# Example 1
ls /some/nonexistent/directory
if [ $? -eq 0 ]; then
    echo "Command executed successfully."
else
    echo "Command failed with exit code $?."
fi

# Example 2
mkdir new_directory
if [ $? -eq 0 ]; then
    echo "Directory created successfully."
else
    echo "Failed to create directory."
fi

# Example 3
function my_function {
    ls /nonexistent/directory
    return $?
}

my_function
if [ $? -eq 0 ]; then
    echo "Function executed successfully."
else
    echo "Function failed with exit code $?."
fi
