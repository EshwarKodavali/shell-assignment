#!/bin/bash

DIR="/tmp"

find $DIR -type f -name "*.conf" -exec sed -i 's/FOO/BAR/g' {} +

if [ $? -eq 0 ]; then
    echo "changed successfully"
else
    echo "Had issue"
fi