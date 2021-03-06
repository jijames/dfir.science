#!/bin/bash

# A script to make a basic new post given a title

if [ "$1" ]; then

DATE=$(date --iso)
DATETIME=$(date --iso=seconds)
TITLE=$(echo "$1" | sed 's/ /-/g')
FILENAME="$DATE-${TITLE}.md"
POST="_posts/$FILENAME"

echo "---" > $POST
echo "layout: single" >> $POST
echo "title: \"${1}\"" >> $POST
echo "date: '$DATETIME'" >> $POST
echo "author: \"Joshua I. James\"" >> $POST
echo "tags:" >> $POST
echo "  - infosec" >> $POST
echo "  - dfir" >> $POST
echo "modified_time: \"\"" >> $POST
echo "---" >> $POST

code . $POST &
fi
