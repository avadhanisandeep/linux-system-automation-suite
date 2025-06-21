#!/bin/bash

echo "===== System Health Report ====="
echo "Date: $(date)"
echo ""

echo "🟢 Uptime:"
uptime
echo ""

echo "🧠 Memory Usage:"
free -h
echo ""

echo "💻 CPU Load:"
top -bn1 | grep "load average"
echo ""

echo "💽 Disk Usage:"
df -h /
echo ""

echo "🔥 Top 5 Memory-Consuming Processes:"
ps aux --sort=-%mem | head -n 6
