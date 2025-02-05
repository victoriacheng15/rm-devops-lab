#!/bin/bash


get_os_version() {
  # the -e flag is to enable the interpretation of escape characters
  # https://phoenixnap.com/kb/echo-command-linux
  echo -e "\n========== OS Version =========="
  cat /etc/os-release | grep "PRETTY_NAME" | cut -d '"' -f 2
}

get_uptime() {
  echo -e "\n========== Uptime =========="
  uptime -p
}

get_cpu_usage() {
  echo -e "\n========== CPU Usage =========="
  # more on awk: https://www.freecodecamp.org/news/the-linux-awk-command-linux-and-unix-usage-syntax-examples/
  top -bn1 | grep "Cpu(s)" | awk '{print "User: " $2 "%" " System: " $4 "%" " Idle: " $8 "%"}'
}

get_memory_usage() {
  echo -e "\n========== Memory Usage =========="
  # NR = number of records aka the line number, in this case, it
  free -m | awk 'NR==2{printf "Totoal : %sMB, Used: %sMB (%.2f%%), Free: %sMB (%.2f%%)\n", $2, $3, $3*100/$2, $4, $4*100/$2 }'
}

get_diskk_usage() {
  echo -e "\n========== Disk Usage =========="
  df -h / | awk 'NR==2{printf "Used: %s (%.2f%%), Free: %s (%.2f%%)\n", $3, $3*100/$2, $4, $4*100/$2 }'
}

get_top_5_cpu_processes() {
  echo -e "\n========== Top 5 Processes by CPU Usage =========="
  ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
}

get_top_5_memory_processes() {
  echo -e "\n========== Top 5 Processes by Memory Usage =========="
  ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
}

main() {
    echo "==========================================="
    echo "          Server Performance Stats         "
    echo "==========================================="

    get_os_version
    get_uptime
    get_cpu_usage
    get_memory_usage
    get_diskk_usage
    get_top_5_cpu_processes
    get_top_5_memory_processes

    echo -e "\n==========================================="
}

main