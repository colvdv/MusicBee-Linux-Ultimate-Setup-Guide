#!/bin/bash
# MusicBee + MPRIS Launch Script

#If needed, update this to point to the appropriate wine prefix.
export WINEPREFIX="$HOME/.wine"

# 1. Start the Linux Bridge
## Replace USERNAME with your username
"/home/USERNAME/.wine/drive_c/Program Files (x86)/MusicBee/mprisbee-bridge" &

# 2. Wait 1 second for the bridge to initialize
sleep 1

# 3. Start MusicBee
wine "$WINEPREFIX/drive_c/Program Files (x86)/MusicBee/MusicBee.exe" &

echo "MusicBee is launching with MPRIS integration."
