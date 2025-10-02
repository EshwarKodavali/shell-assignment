#!/bin/bash
FILE_NAME="/tmp/test_file"
if [ -f "$FILE_NAME" ]; then
  echo "file exists."
else
  echo "file does not exist."
  exit 1
fi

if [ -s "$FILE_NAME" ]; then
  echo "file is not empty."
else
  echo "file is empty."
  exit 1
fi

if [ -r "$FILE_NAME" ]; then
    echo "$FILE_NAME has permissions to read."
    wc $FILE_NAME
else
    echo "$FILE_NAME not have permissions"
fi

