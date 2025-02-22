#!/bin/bash

read -p "Enter the log directory: " LOGS_DIR

# Check if the log directory is provided
if [ -z "$LOGS_DIR" ]; then
    echo "Error: No log directory provided."
    exit 1
fi

# Validate the log directory
if ! [ -d "$LOGS_DIR" ]; then
    echo "Error: $LOGS_DIR doesn't exist."
    exit 1
fi

if ! [ -r "$LOGS_DIR" ]; then
    echo "Error: Current user $USER does not have permission to read the files in directory $LOGS_DIR."
    exit 1
fi

read -p "Enter the directory to save the log archive (default: ~/Desktop): " ARCHIVE_DIR

# Set default archive directory to ~/Desktop if the user doesn't provide one
if [ -z "$ARCHIVE_DIR" ]; then
    ARCHIVE_DIR="$HOME/Desktop"
fi

mkdir -p "$ARCHIVE_DIR"

# Generate the archive filename
BASENAME_DIR=$(basename "$LOGS_DIR")
TIMESTAMP=$(date +'%Y%m%d_%H%M%S')
LOGS_ARCHIVE_NAME="${BASENAME_DIR}_archive_${TIMESTAMP}.tar.gz"
LOGS_ARCHIVE_PATH="${ARCHIVE_DIR}/${LOGS_ARCHIVE_NAME}"

tar -czvf "$LOGS_ARCHIVE_PATH" "$LOGS_DIR"

echo "The logs archive $LOGS_ARCHIVE_NAME was created"