#!/bin/bash
# Script 4: Log File Analyzer

LOGFILE=$1
# Default keyword is 'usb' instead of 'error' so we actually find matches in your dmesg log
KEYWORD=${2:-"usb"} 
COUNT=0

# Do-while style retry: Keep asking until a valid, non-empty file is provided
while [ ! -s "$LOGFILE" ]; do
    echo "Error: File '$LOGFILE' not found or is empty."
    read -p "Enter a valid log file path: " LOGFILE
done

echo "Analyzing $LOGFILE for keyword: '$KEYWORD'..."

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

# Print the last 5 matching lines using grep and tail
if [ $COUNT -gt 0 ]; then
    echo "--- Last 5 Matches ---"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
