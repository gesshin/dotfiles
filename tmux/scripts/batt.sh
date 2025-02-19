#!/bin/bash

BATTERY_LEVEL=$(pmset -g batt | grep -Eo "\d+%")

echo $BATTERY_LEVEL
