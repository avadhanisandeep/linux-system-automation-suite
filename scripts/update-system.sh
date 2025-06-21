#!/bin/bash

echo "🔄 Starting system update..."

if command -v apt > /dev/null; then
    echo "Detected APT-based system (Debian/Ubuntu)"
    sudo apt update && sudo apt upgrade -y
elif command -v yum > /dev/null; then
    echo "Detected YUM-based system (RHEL/CentOS)"
    sudo yum update -y
else
    echo "❌ Unsupported package manager"
    exit 1
fi

echo "✅ System update completed."
