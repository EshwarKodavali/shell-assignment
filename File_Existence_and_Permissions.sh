#!/bin/bash
FILE_NAME="/tmp/test_file.txt"
if [ -f "$FILE_NAME" ]; then
  echo "file exists."
else
  echo "file does not exist."
  exit 1
fi

if [ test -r "$FILE_NAME" ]; then
    echo "$FILE_NAME is readable."
else
    echo "$FILE_NAME is not readable."
    exit 1
fi

if [ test -w "$FILE_NAME" ]; then
    echo "$FILE_NAME is writable."
else
    echo "$FILE_NAME is not writable."
    exit 1
fi




