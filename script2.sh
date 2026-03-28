#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="libreoffice" 

# Check if package is installed
if dpkg -l "$PACKAGE" &>/dev/null; then
    echo "$PACKAGE is installed."
    # Use dpkg -s to get detailed package info, pipe to grep
    dpkg -s "$PACKAGE" | grep -E '^Version|^Description' | head -n 2
else
    echo "$PACKAGE is NOT installed."
fi

# Case statement for philosophy notes
case "$PACKAGE" in
    apache2) echo "Apache: the web server that built the open internet" ;;
    mysql) echo "MySQL: open source at the heart of millions of apps" ;;
    libreoffice) echo "LibreOffice: protecting document freedom from corporate control" ;;
    firefox) echo "Firefox: a nonprofit fighting for an open web"[cite: 24];;
    vlc) echo "VLC: plays anything - built by students in Paris"[cite: 24];;
    *) echo "No philosophy note found." ;;
esac
