#!/bin/bash

# Log file location
LOGFILE="battery_life_test.log"

# Write the start time and 100% battery mark to the log
echo "Battery Test Started: $(date)" >> $LOGFILE
echo "Battery at 100%: $(date)" >> $LOGFILE

# Track battery percentage
while true; do
  # Get battery percentage using upower or acpi
  BATTERY_PERCENTAGE=$(upower -i $(upower -e | grep BAT) | grep "percentage" | awk '{print $2}' | sed 's/%//')

  # Log the current battery percentage
  echo "Battery at $BATTERY_PERCENTAGE%: $(date)" >> $LOGFILE

  # Check if the battery is at or below 1% (about to turn off)
  if [ "$BATTERY_PERCENTAGE" -le 1 ]; then
    echo "Battery at critical level (1% or less): $(date)" >> $LOGFILE
    break
  fi

  # Sleep for a while before checking again
  sleep 60
done
