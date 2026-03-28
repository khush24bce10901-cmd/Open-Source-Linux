#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Grab permissions, owner, and group
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        # Get human-readable size and cut out the path name
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "LibreOffice Config Audit"

# Check LibreOffice specific config folder in the user's home directory
LO_DIR="$HOME/.config/libreoffice"

if [ -d "$LO_DIR" ]; then
    LO_PERMS=$(ls -ld "$LO_DIR" | awk '{print $1, $3, $4}')
    echo "$LO_DIR => Permissions: $LO_PERMS"
else
    echo "LibreOffice config directory not found at $LO_DIR."
    echo "(Note: You may need to open LibreOffice at least once for Linux to generate this folder)."
fi