# CPU Monitoring Service

This service logs the process with the most cpu usage

---

## POC 1
Service is "scheduled" with a while true loop + sleep in the bash script, it's probably not the best practice.

Configuration file: `/etc/cpu-monitoring/cpu-monitoring.conf` </br>
TIME_TO_SLEEP: processes check frequency. Check `man sleep` for time format </br>
BLOCK_LINES: header printing frequency (headerless lines number)

---

## POC 2
Service is scheduled with systemd timer

Configuration file: `/etc/systemd/system/cpu-monitoring.timer.d` (drop-in unit file) <br>
OnCalendar: processes check frequency, check `man systemd.timer`

---

You can install/uninstall them by using the utility scripts in their relative folders (it requires root privileges). </br>
</br>
Logs: `journalctl -u cpu-monitoring.service` </br>
Start: `systemctl start cpu-monitoring.service`</br>
Stop: `systemctl stop cpu-monitoring.service`</br>
Status: `systemctl status cpu-monitoring.service`