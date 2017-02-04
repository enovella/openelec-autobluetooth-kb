#/bin/bash
# berry:~ # vi /storage/.config/autostart.sh

(

sleep 20

BMAC_KB="CC:C5:0A:1F:4B:EB"

# Enable bluetooth service
systemctl enable bluetooth

# Connect to Bluetooth keyboard and pair
bluetoothctl << EOF
power on
agent on
connect $BMAC_KB
quit
EOF

) &


