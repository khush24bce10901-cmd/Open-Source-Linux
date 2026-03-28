#!/bin/bash
# Script 1: System Identity Report

# Variables 
STUDENT_NAME="Khush Arora" 
SOFTWARE_CHOICE="LibreOffice"

# System info 
KERNEL=$(uname -r) 
USER_NAME=$(whoami) 
UPTIME=$(uptime -p) 
HOME_DIR=$HOME 
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S") 
DISTRO=$(grep "^PRETTY_NAME" /etc/os-release | cut -d "=" -f 2 | tr -d '"')

# Display 
echo " Open Source Audit - $STUDENT_NAME" 
echo " Chosen Software   - $SOFTWARE_CHOICE"
echo "Distro   : $DISTRO" 
echo "Kernel   : $KERNEL"
echo "User     : $USER_NAME"
echo "Home Dir : $HOME_DIR" 
echo "Uptime   : $UPTIME" 
echo "Date/Time: $CURRENT_DATE"
echo "License  : This OS is covered by the GNU General Public License (GPL)."

