#!/bin/bash

echo " The Open Source Manifesto Generator "
echo "Answer three questions to generate your manifesto."
echo ""

read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

DATE=$(date '+%d %B %Y')
USER_NAME=$(whoami)
OUTPUT="manifesto_${USER_NAME}.txt"

# Compose the paragraph and write it to the file using > (overwrite) and >> (append)
echo "--- My Open Source Manifesto ---" > "$OUTPUT"
echo "Date: $DATE" >> "$OUTPUT"
echo "Author: $USER_NAME" >> "$OUTPUT"
echo "" >> "$OUTPUT"
echo "I rely on $TOOL every single day for my development work." >> "$OUTPUT"
echo "To me, the core of open source software is $FREEDOM. I believe knowledge should not be locked away." >> "$OUTPUT"
echo "In the future, I want to build a $BUILD and share it freely with the community." >> "$OUTPUT"

echo ""
echo "Manifesto saved to $OUTPUT"
echo "Here is what you wrote:"
echo ""
cat "$OUTPUT"
