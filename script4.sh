#!/bin/bash
# Script 4: Log File Analyzer

LOGFILE=$1
KEYWORD=${2:-"error"}
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "File not found!"
    exit 1
fi

# Check if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "File is empty!"
    exit 1
fi

# Read file line by line
while read LINE
do
    echo "$LINE" | grep -i "$KEYWORD" > /dev/null
    if [ $? -eq 0 ]; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "--------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times"
echo "--------------------------------"

echo "Last 5 matching lines:"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
