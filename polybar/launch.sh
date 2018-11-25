#!/bin/bash

# Kill all running polybar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done
while ! pgrep -u $UID -x i3 >/dev/null; do sleep 1; done

# Launch polybar
polybar main &

echo "Started polybar..."
