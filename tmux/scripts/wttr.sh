#!/bin/bash

LOCATION="Boston"                                         # change based on location
UNIT="m"                                                  # temperature unit (m for metric & u for imperial)
ERROR_MESSAGE="ATMOSPHERIC DATA CORRUPTED"                # custom error message
INTERVAL=3600                                             # update interval in seconds
CURRENT_TIME=$(date "+%s")                                # current time in unix
UPDATE_TIME=$(tmux show-option -gqv @weather-update-time) # update time from the stored tmux variable
DELTA=$((CURRENT_TIME - ${UPDATE_TIME:-0}))               # seconds since last update

# The seconds since last update must exceed INTERVAL to trigger an API call
if [ $DELTA -ge $INTERVAL ]; then
  WTTR=$(curl -s --max-time 5 "wttr.in/${LOCATION}?${UNIT}&format=%C\n%t")
  # The API call must succeed and return a non-empty string to update the tmux variables
  if [ $? -eq 0 ] && [ -n "$WTTR" ]; then
    CONDITION=$(echo "$WTTR" | sed -n '1p')
    TEMPERATURE=$(echo "$WTTR" | sed -n '2p')
    tmux set-option -gq @weather-update-time "$CURRENT_TIME"
    tmux set-option -gq @weather "$TEMPERATURE $CONDITION"
  fi
fi

# Display the weather from the stored tmux variable; if it's empty or unset, display an error message
WEATHER=$(tmux show-option -gqv @weather)
echo "${WEATHER:-$ERROR_MESSAGE}"
