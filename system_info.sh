#!/bin/bash

# Take user input
read -p "Enter the directory name you want to create: " DIR_NAME

# Create directory
mkdir -p "$DIR_NAME"

# Store system information in variables
CURRENT_DATE=$(date)
HOST_NAME=$(hostname)
USERNAME=$(whoami)
DISK_USAGE=$(df -h)

# Create a file
touch "$DIR_NAME/processes.txt"

# Store running processes in the file using output redirection
ps > "$DIR_NAME/processes.txt"

# Display system information
echo "================================="
echo "       SYSTEM INFORMATION"
echo "================================="

echo "Current Date: $CURRENT_DATE"
echo "Hostname: $HOST_NAME"
echo "Username: $USERNAME"

echo ""
echo "Disk Usage:"
echo "$DISK_USAGE"

echo ""
echo "Running Processes:"
ps

echo ""
echo "Process information has been saved to:"
echo "$DIR_NAME/processes.txt"

