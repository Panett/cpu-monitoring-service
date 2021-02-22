# CPU Monitoring Service

This service logs the process with the most cpu usage

---

## POC 1
Service is "scheduled" with a while true loop + sleep in the bash script, it's probably not the best practice.

---

## POC 2
Service is scheduled with systemd timer

---

You can install/uninstall them by using the utility scripts in their relative folders (it requires root privileges). </br>
</br>
Logs: `journalctl -u cpu-monitoring.service` </br>
Start: `journalctl start cpu-monitoring.service`</br>
Stop: `journalctl stop cpu-monitoring.service`</br>
Status: `journalctl status cpu-monitoring.service`

https://stackoverflow.com/questions/40083540/how-can-i-use-environment-variable-in-systemd-timer-unit/40088113
https://kinvolk.io/docs/flatcar-container-linux/latest/setup/systemd/drop-in-units/