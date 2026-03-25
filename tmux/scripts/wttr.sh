#!/bin/bash

LOCATION=""

WEATHER=$(curl -s "wttr.in/${LOCATION}?format=%C\n%t&m")

CONDITION=$(echo "$WEATHER" | sed -n '1p')
TEMPERATURE=$(echo "$WEATHER" | sed -n '2p')

echo $TEMPERATURE $CONDITION
