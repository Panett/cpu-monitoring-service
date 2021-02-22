#!/bin/bash

if [ $EUID -ne 0 ]; then
    echo "Please run this script as root."
    exit 1
fi

cp cpu-monitoring /usr/bin/cpu-monitoring
chmod +x /usr/bin/cpu-monitoring
cp cpu-monitoring.service /etc/systemd/system/
cp cpu-monitoring.timer /etc/systemd/system/

systemctl daemon-reload
systemctl stop cpu-monitoring.service
systemctl start cpu-monitoring.service
systemctl status cpu-monitoring.service

echo -e "\nInstalled successfully\n"