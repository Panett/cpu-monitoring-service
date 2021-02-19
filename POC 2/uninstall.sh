#!/bin/bash

if [ $EUID -ne 0 ]; then
    echo "Please run this script as root."
    exit 1
fi

systemctl stop cpu-monitoring.service &> /dev/null
systemctl disable cpu-monitoring.service &> /dev/null
rm -f /usr/bin/cpu-monitoring
rm -f /etc/systemd/system/cpu-monitoring.service
rm -f /etc/systemd/system/cpu-monitoring.timer
systemctl daemon-reload

echo "Uninstalled successfully"