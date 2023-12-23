#!/bin/bash

# whereis command to locate the binary, source, and manual page files for a command
echo "Output of whereis command: $(whereis bash)"

# which command to get the path of specific executable
echo "Output of which command: $(which bash)"

# find command 
echo -n "Output of Find command : $(find . -name "*.md")"
echo "\n"