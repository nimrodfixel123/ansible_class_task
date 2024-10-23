#!/bin/bash

if [ -f /etc/os-release ]; then
    DISTRO=$(grep '^NAME=' /etc/os-release | cut -d '=' -f 2 | tr -d '"')
    echo "This system is running: $DISTRO"
else
    echo "os-release file not found."
fi
