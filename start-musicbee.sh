#!/bin/bash
# MusicBee + MPRIS Launch Script

# Ensure that this is pointing to the correct wine prefix for MusicBee.
export WINEPREFIX="$HOME/.wine"

# 1. Start the Linux Bridge
"$WINEPREFIX/drive_c/Program Files (x86)/MusicBee/mprisbee-bridge" &

# 2. Wait 1 second for the bridge to initialize
sleep 1

# 3. Start MusicBee
wine "$WINEPREFIX/drive_c/Program Files (x86)/MusicBee/MusicBee.exe" &

echo "MusicBee is launching with MPRIS integration."
