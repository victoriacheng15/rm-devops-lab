# Log Archive Tool

This is a simple Bash script to archive log files from a specified directory. The script compresses the logs into a .tar.gz file and saves it to a user-defined location (defaulting to the Desktop). It also includes validation to ensure the log directory exists and is readable.

## Getting Started

### Prerequisites

- Linux Shell (Bash)
- tar utility (usually pre-installed on Linux systems)

### Installation
- Clone the repository to your local machine:

```bash
git clone git@github.com:victoriacheng15/rm-devops-lab.git
```
- Navigate to the directory:

```bash
cd log-archive
```
- Make the script executable:

```bash
chmod +x log-archive.sh
```
- Run the script:

```bash
./log-archive.sh
```

## Usage

Running the Script

When you run the script, it will prompt you for:
 - The log directory to archive.
 - The archive directory where the compressed file will be saved (defaults to ~/Desktop if no directory is provided).

Example:

```bash
$ ./log-archive.sh
Enter the log directory to archive: /var/log
Enter the directory to save the archive (default: ~/Desktop): 
The logs archive var_log_archive_20231025_123456.tar.gz was created in /home/username/Desktop
```

## Script Overview

The script performs the following steps:
- Validates the Log Directory:
  - Ensures the provided log directory exists.
  - Checks if the current user has read permissions for the directory.
- Prompts for Archive Location:
  - Asks the user where to save the archive (defaults to ~/Desktop).
- Creates the Archive:
  - Compresses the log directory into a .tar.gz file with a timestamped filename.
  - Saves the archive to the specified location.
- Output:
  - Displays the path to the created archive file.

## Note

- If the archive directory does not exist, the script will create it automatically.
- The script ensures the log directory is valid and accessible before proceeding with the archiving process.

This project is a part of the DevOps projects. For more information, check out [roadmap.sh - DevOps Projects](https://roadmap.sh/projects/log-archive-tool).
