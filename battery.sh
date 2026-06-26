# Cek baterai level
sudo tlp-stat -b

# Setting threshold baterai level
sudo nano /etc/tlp.conf
# START_CHARGE_THRESH_BAT0=0
# STOP_CHARGE_THRESH_BAT0=100

# Restart
sudo systemctl restart tlp

# Cek cycle count
cat /sys/class/power_supply/BAT0/cycle_count
# atau cek lengkap
upower -e # Cek path
upower -i /org/freedesktop/UPower/devices/battery_BAT0

# 27 Juni 2026 = 946 CC