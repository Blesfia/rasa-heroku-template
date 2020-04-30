#!/bin/sh

if [ -z "$PORT"]
then
  PORT=5005
fi

rasa run -m model.tar.gz --enable-api --remote-storage aws --port $PORT
