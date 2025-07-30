#!/bin/bash

# Colors
GREEN="\e[32m"
RED="\e[31m"
RESET="\e[0m"

# Check if IP/domain provided
if [ -z "$1" ]; then
  echo -e "Usage: $0 <IP or domain> [start_port] [end_port]"
  exit 1
fi

TARGET=$1
START_PORT=${2:-1}
END_PORT=${3:-100}

echo -e "Scanning $TARGET ports from $START_PORT to $END_PORT...\n"

for ((port=$START_PORT; port<=$END_PORT; port++)); do
  timeout 1 bash -c "echo > /dev/tcp/$TARGET/$port" 2>/dev/null
  if [ $? -eq 0 ]; then
    echo -e "${GREEN}[+] Port $port is OPEN${RESET}"
  else
    echo -e "${RED}[-] Port $port is CLOSED${RESET}"
  fi
done
