#!/bin/sh

export DISPLAY=:99

Xvfb :99 -screen 0 1366x768x24 &

sleep 2

openbox &

x11vnc \
-display :99 \
-forever \
-nopw \
-shared &

firefox &

websockify \
--web=/usr/share/novnc \
6080 \
localhost:5900
