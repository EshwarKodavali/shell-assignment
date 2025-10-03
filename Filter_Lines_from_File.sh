#!/bin/bash

SOURCE_FILE=/tmp/test/source
DESTINATION_FILE=/tmp/test/destination
SEARCH_WORD="ERROR"

first_line=$(head -n 1 "$SOURCE_FILE")

# Append the first line to the target file
echo "$first_line" >> "$DESTINATION_FILE"

head -n 2 "$SOURCE_FILE" | while IFS= read -r line;
do
    if [[ "$line" == *"$SEARCH_WORD"* ]]; then
    echo "$line" >> "$DESTINATION_FILE"
    fi
done < "$SOURCE_FILE"
