#!/bin/bash

SOURCE_FILE=/tmp/test/source
DESTINATION_FILE=/tmp/test/destination
SEARCH_WORD="ERROR"

while IFS= read -r line;
do
    echo "$line" > "$DESTINATION_FILE"
    exit 1
done < "$SOURCE_FILE"

while IFS= read -r line;
do
    if [[ "$line" == *"$SEARCH_WORD"* ]]; then
    echo "$line" >> "$DESTINATION_FILE"
    fi
done < "$SOURCE_FILE"
