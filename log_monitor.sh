#!/bin/bash

LOG_FILE="app.log"   # Path to the log file
ERROR_THRESHOLD=2     # Set the error limit for alerts

# Count the number of error messages in the log file
ERROR_COUNT=$(grep -c "ERROR" "$LOG_FILE")

if [ "$ERROR_COUNT" -ge "$ERROR_THRESHOLD" ]; then
    echo "🚨 Alert! $ERROR_COUNT errors found in the log file!"
else
    echo "✅ All good! No critical errors detected."
fi
