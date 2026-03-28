# Open Source Audit Project

**Student Name:** Khush Arora  
**Roll Number:** 24BCE10901  
**Course:** Open Source Software  
**Chosen Software:** LibreOffice  
**Environment:** Ubuntu 24.04 (via WSL)

## Project Overview
This repository contains a suite of Bash shell scripts designed to audit system identity, inspect Free and Open Source Software (FOSS) packages, check system directories, analyze log files, and generate a user manifesto. The primary software audited in this project is **LibreOffice**.

## Dependencies
These scripts are designed to run on a Debian/Ubuntu-based Linux distribution. The following standard utilities are required (most are pre-installed on Ubuntu):
* `bash`
* `dpkg` (for Script 2 package inspection)
* Standard GNU coreutils (`grep`, `awk`, `cut`, `tail`, `du`, `ls`)

---

## Script Descriptions & Execution Instructions

### General Setup
Before running any script, you must navigate to the directory containing the scripts and make them executable. You only need to do this once per script:
```bash
chmod +x script_name.sh
```

### Script 1: System Identity Report (`script1.sh`)
**Description:** Acts as a welcome screen. It fetches and displays the Linux distribution name, kernel version, current logged-in user, home directory path, system uptime, and current date/time. It also outputs the open-source license covering the OS.
**How to run:**
```bash
./script1.sh
```

### Script 2: FOSS Package Inspector (`script2.sh`)
**Description:** Checks if the chosen software (LibreOffice) is installed on the system using `dpkg`. If found, it extracts the exact version and description. It uses a `case` statement to print a specific philosophy note about LibreOffice (as well as a few other popular FOSS tools).
**How to run:**
```bash
./script2.sh
```

### Script 3: Disk and Permission Auditor (`script3.sh`)
**Description:** Loops through standard system directories (`/etc`, `/var/log`, `/home`, etc.) to report their sizes, permissions, and owners. It also specifically targets the LibreOffice configuration folder in the user's home directory to verify its permissions.
**How to run:**
```bash
./script3.sh
```

### Script 4: Log File Analyzer (`script4.sh`)
**Description:** Analyzes a specified system log file for a specific keyword. It features a validation loop to ensure the provided file exists and is not empty. It reads the file line-by-line, counts the keyword occurrences, and displays the last 5 matching lines.
**How to run:**
*(Note: Requires passing a file path and a keyword as arguments)*
```bash
./script4.sh /path/to/logfile keyword
```
*Example testing command:* `./script4.sh test.log error`

### Script 5: Open Source Manifesto Generator (`script5.sh`)
**Description:** An interactive script that prompts the user with three questions regarding their open-source usage and philosophy. It uses the input to dynamically generate a text file containing a personalized Open Source Manifesto, which is then printed to the console.
**How to run:**
```bash
./script5.sh
```
```

***

Once you commit that, your repository is completely bulletproof. Does the formatting look good on your GitHub repo page after you paste it in?
