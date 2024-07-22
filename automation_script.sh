#!/bin/bash

# Check CPU and memory usage
echo "CPU usage: $(top -b -n 1 | grep "Cpu(s)" | awk '{print $2}')%"
echo "Memory usage: $(free -m | awk '/Mem/ {print $3}') MB"

# List top-consuming processes
echo "Top-consuming processes:"
ps -eo pcpu,pid,user,args | sort -k 1 -r | head -n 10

# Configure MySQL database backup
echo "Configuring MySQL database backup..."
mysqldump -u root -p<password> media_streaming > media_streaming_backup.sql
echo "Backup complete!"
