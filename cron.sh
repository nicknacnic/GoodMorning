#!/bin/bash

# Define the time window (in seconds) within which you want to randomize
MIN_DELAY=0     # Minimum delay in seconds (0 seconds)
MAX_DELAY=7200  # Maximum delay in seconds (1 hour)

# Generate a random delay within the specified time window
RANDOM_DELAY=$((RANDOM % ($MAX_DELAY - $MIN_DELAY + 1) + $MIN_DELAY))

# Sleep for the random delay
sleep $RANDOM_DELAY

# Run your good morning app
open /Applications/GoodMorning.app
