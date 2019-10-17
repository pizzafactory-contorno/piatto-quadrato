#!/bin/sh

exec xpra start \
       --bind-tcp=$XPRA_ADDRESS:8080 \
       --html=on \
       --daemon=no \
       --xvfb="/usr/bin/Xvfb +extension  Composite -screen 0 1920x1080x24+32 -nolisten tcp -noreset" \
       --pulseaudio=no \
       --speaker=no \
       --microphone=no \
       --webcam=no \
       --notifications=no \
       --bell=no \
       --printing=no \
       --mdns=no \
       --dbus-proxy=no \
       --dbus-control=no \
       --dbus-launch=no $XPRA_OPTIONS_EXT
