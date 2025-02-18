# Server Performance Stats

This is a simple script to monitor the server's perfomance and display the results in a terminal, including CPU usage, memory usage, disk usage, network usage, and more.

## Geting Started

### Prerequisites
- Linux Shell

### Installation
- Clone the repository to your local machine:

```bash
git clone git@github.com:victoriacheng15/rm-devops-lab.git
```
- Navigate to the directory:

```bash
cd server-performance-stats
```
- Make the script executable:

```bash
chmod +x server-stats.sh
```
- Run the script:

```bash
./server-stats.sh
```

## Script Overview

The server-stats.sh script provides the following server performance metrics:

Functions in the Script: 
- get_os_version
  - Displays the operating system version.

- get_uptime
  - Shows the server's uptime in a human-readable format.

- get_cpu_usage
  - Displays CPU usage statistics, including user, system, and idle percentages.

- get_memory_usage
  - Shows memory usage, including total, used, and free memory in MB and percentages.

- get_disk_usage
  - Displays disk usage for the root filesystem (/), including used and free space in GB and percentages.

- get_top_5_cpu_processes
  - Lists the top 5 processes consuming the most CPU.

- get_top_5_memory_processes
  - Lists the top 5 processes consuming the most memory.

## Note
This project is part of the DevOps project from [Roadmap](https://roadmap.sh/projects/server-stats).