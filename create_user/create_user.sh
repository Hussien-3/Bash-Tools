#!/bin/bash

# Colors
GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"
RESET="\e[0m"

# Check if run as root
if [[ $EUID -ne 0 ]]; then
  echo -e "${RED}❌ This script must be run as root${RESET}"
  exit 1
fi

# Read username
read -p "👤 Enter username: " USERNAME

# Read group name
read -p "👥 Enter group name: " GROUP

# Check if group exists, if not create it
if getent group "$GROUP" > /dev/null; then
  echo -e "${YELLOW}ℹ️ Group $GROUP already exists${RESET}"
else
  groupadd "$GROUP"
  echo -e "${GREEN}✅ Group $GROUP created${RESET}"
fi

# Check if user exists
if id "$USERNAME" &>/dev/null; then
  echo -e "${RED}⚠️ User $USERNAME already exists${RESET}"
  exit 1
fi

# Create user and assign to group
useradd -m -g "$GROUP" "$USERNAME"
echo -e "${GREEN}✅ User $USERNAME created and added to group $GROUP${RESET}"

# Optionally set password
read -s -p "🔐 Enter password for $USERNAME (or press Enter to skip): " PASSWORD
echo
if [[ -n "$PASSWORD" ]]; then
  echo "$USERNAME:$PASSWORD" | chpasswd
  echo -e "${GREEN}🔑 Password set for $USERNAME${RESET}"
else
  echo -e "${YELLOW}🔓 No password set${RESET}"
fi
