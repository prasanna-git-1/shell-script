#!/bin/bash

echo "simable all variable: $@"

echo "Number of variable passed: $#"
echo "Script name: $0"
echo "Current working directory: $PWD"
echo "Home directory current user: $HOME"
echo "Which user is running this script: $USER"
echo " process ID of the current shell script: $$"
Sleep 30 &
echo "process id of last background command: $!"