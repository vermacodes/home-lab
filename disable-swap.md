# Disable Swap memory in Raspberry Pi
This guide only works if Raspnerry Pi is using [rpi-swap](https://github.com/raspberrypi/rpi-swap)
### Disable rpi-swap via Drop-In Configuration

1. **Create the drop-in directory (if it doesn’t exist):**
   ```bash
   mkdir -p /etc/rpi/swap.conf.d
   ```

2. **Create a new config file to disable swap:**
   ```bash
   vim /etc/rpi/swap.conf.d/disable.conf
   ```

3. **Add the following content:**
   ```ini
   [Main]
   Mechanism=none
   ```

4. **Save and exit**

---

### Reboot and Verify

After rebooting, check that swap is disabled:
```bash
free -h
cat /proc/swaps
```
You should see `Swap: 0B` and no active swap devices.

---

### Why This Works

The default `/etc/rpi/swap.conf` is not meant to be edited directly. Instead, the system reads drop-in files from `/etc/rpi/swap.conf.d/`, which override the defaults. Setting `Mechanism=none` disables both zram and file-based swap.
