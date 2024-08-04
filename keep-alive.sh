#!/bin/bash


DOMAIN=$(ssh -R 80:localhost:8080 serveo.net 2>&1 | grep -o 'https://[^ ]*')

# 
if [ -z "$DOMAIN" ]; then
  echo "exit!!"
  exit 1
fi

# keep-alive 
while true; do
  curl -s $DOMAIN > /dev/null
  echo "refresh!!"
  sleep 600
done