#!/bin/bash

BATTERY=$(pmset -g batt)

LEVEL=$(echo "$BATTERY" | grep -Eo "[0-9]+%")
STATUS=$(echo "$BATTERY" | grep -Eo "Battery Power|AC Power")

if [[ "$STATUS" == "Battery Power" ]]; then
  STATUS=""
elif [[ "$STATUS" == "AC Power" ]]; then
  STATUS=""
fi

echo $STATUS $LEVEL
