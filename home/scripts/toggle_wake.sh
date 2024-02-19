#!/bin/bash

# Check if service is running
status=$(systemctl is-active wake.service)

# If service is running, stop it
if [ "$status" == "active" ]; then
    echo "Wake is currently $status, turning off:"
    systemctl stop wake.service
    # Check if service is running
    status=$(systemctl is-active wake.service)
    echo "Current status: $status"

# If service is not running, start it
else
    echo "Wake is currently $status, turning on:"
    systemctl start wake.service
    # Check if service is running
    status=$(systemctl is-active wake.service)
    echo "Current status: $status"
fi

