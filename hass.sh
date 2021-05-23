#!/bin/bash

if [ ! "$USER" = "homeassistant" ]
then
  echo
  echo "Mustbe executed as user homeassistant!"
  echo
  exit 1
fi

PID_FILE="$HOME/hass.pid"

if [ "$1" = "start" ]
then
  cd /srv/homeassistant
  source bin/activate
  hass &
  CUR_PID=$!
  echo "$CUR_PID" > $PID_FILE
elif [ "$1" = "stop" ]
then
  kill `(cat $PID_FILE)`
  rm $PID_FILE
else
  echo
  echo "usage: ${0##*/} {start|stop}"
  echo
  exit 0
fi

