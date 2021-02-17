#!/bin/bash

cp cpu-monitoring /usr/bin/cpu-monitoring
sudo chmod +x /usr/bin/cpu-monitoring
sudo cp cpu-monitoring.service /etc/systemd/system/
systemctl daemon-reload
systemctl stop cpu-monitoring.service
systemctl start cpu-monitoring.service
systemctl status cpu-monitoring.service