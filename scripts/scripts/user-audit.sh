#!/bin/bash

echo "===== User Audit Report ====="
echo "Generated on: $(date)"
echo ""

echo "👥 List of Local Users:"
cut -d: -f1 /etc/passwd
echo ""

echo "🔍 User Shells and UIDs:"
awk -F: '{ print "User: " $1 "\tUID: " $3 "\tShell: " $7 }' /etc/passwd | column -t
echo ""

echo "🕒 Last Login for Users:"
lastlog | grep -v "Never logged in"
