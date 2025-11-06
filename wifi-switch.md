## Auto Wi-Fi Toggle Based on Ethernet Status

This setup automatically toggles Wi-Fi (`wlan0`) based on the connection status of Ethernet (`eth0`). It runs every 30 seconds using a systemd timer.

---

### Files Overview

| File Path                                  | Purpose                                      |
|--------------------------------------------|----------------------------------------------|
| `/usr/local/bin/switch-wifi.sh`            | Bash script that checks Ethernet/Wi-Fi state |
| `/etc/systemd/system/switch-wifi.service`  | Systemd service to run the script            |
| `/etc/systemd/system/switch-wifi.timer`    | Systemd timer to trigger the service         |

---

> [!NOTE]
> Run all commands below as `root` user. If you want to run as other non-root user prepend `sudo` where applicable.

### 1. Create the Script

**Path:** 
```bash
vim /usr/local/bin/switch-wifi.sh
```

```bash
#!/bin/bash

# Interfaces
ETH_INTERFACE="eth0"
WIFI_INTERFACE="wlan0"

# Log file (optional)
LOG_FILE="/var/log/switch-wifi.log"

# Get current states
ETH_STATE=$(nmcli device status | awk -v iface="$ETH_INTERFACE" '$1 == iface {print $3}')
WIFI_STATE=$(nmcli radio wifi)

# Condition 1: Ethernet connected AND Wi-Fi is ON → turn Wi-Fi OFF
if [ "$ETH_STATE" = "connected" ] && [ "$WIFI_STATE" = "enabled" ]; then
    nmcli radio wifi off
    echo "$(date): Wi-Fi turned OFF because Ethernet is connected" >> "$LOG_FILE"

# Condition 2: Ethernet disconnected AND Wi-Fi is OFF → turn Wi-Fi ON
elif [ "$ETH_STATE" != "connected" ] && [ "$WIFI_STATE" = "disabled" ]; then
    nmcli radio wifi on
    echo "$(date): Wi-Fi turned ON because Ethernet is disconnected" >> "$LOG_FILE"
fi
```

Make it executable:

```bash
chmod +x /usr/local/bin/switch-wifi.sh
```

---

### 2. Create the Service

**Path:** `/etc/systemd/system/switch-wifi.service`

```ini
[Unit]
Description=Toggle Wi-Fi based on Ethernet status
After=network-online.target
Wants=network-online.target

[Service]
Type=oneshot
ExecStart=/usr/local/bin/switch-wifi.sh

[Install]
WantedBy=multi-user.target
```

---

### 3. Create the Timer

**Path:** `/etc/systemd/system/switch-wifi.timer`

```ini
[Unit]
Description=Run switch-wifi.service every 30 seconds

[Timer]
OnBootSec=30sec
OnUnitActiveSec=30sec

[Install]
WantedBy=timers.target
```

---

### 4. Enable and Start the Timer

```bash
systemctl daemon-reexec
systemctl daemon-reload
systemctl enable switch-wifi.timer
systemctl start switch-wifi.timer
```

---

### 5. Verify Status

Check timer:

```bash
systemctl status switch-wifi.timer
```

Check service logs:

```bash
journalctl -u switch-wifi.service --since "10 minutes ago"
```

Check custom log:

```bash
cat /var/log/switch-wifi.log
```

---

### Manual Test

Run the service manually:

```bash
systemctl start switch-wifi.service
```

Then check:

```bash
nmcli radio
```
