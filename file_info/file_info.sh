#!/bin/bash

# Colors
BOLD="\e[1m"
RESET="\e[0m"

# Check if file is provided
if [ -z "$1" ]; then
  echo -e "Usage: $0 <filename>"
  exit 1
fi

FILE="$1"

# Check if file exists
if [ ! -f "$FILE" ]; then
  echo "❌ File not found: $FILE"
  exit 1
fi

echo -e "${BOLD}📄 File Info: $FILE${RESET}"
echo "----------------------------------------"

# Absolute path
echo "📍 Path       : $(realpath "$FILE")"

# Type
echo "📂 Type       : $(file -b "$FILE")"

# Size
echo "📏 Size       : $(stat -c%s "$FILE") bytes"

# Permissions
echo "🔐 Permissions: $(stat -c%A "$FILE")"

# Owner and group
echo "👤 Owner      : $(stat -c%U "$FILE")"
echo "👥 Group      : $(stat -c%G "$FILE")"

# Last modification time
echo "🕒 Modified   : $(stat -c%y "$FILE")"

# Is executable?
if [ -x "$FILE" ]; then
  echo "🚀 Executable : Yes"
else
  echo "🚫 Executable : No"
fi

# Line count (if text)
if file "$FILE" | grep -q "text"; then
  echo "📚 Line count : $(wc -l < "$FILE")"
fi

# SHA256 hash
if command -v sha256sum >/dev/null; then
  echo "🔑 SHA256     : $(sha256sum "$FILE" | awk '{print $1}')"
fi

# MD5 hash
if command -v md5sum >/dev/null; then
  echo "🧬 MD5        : $(md5sum "$FILE" | awk '{print $1}')"
fi

echo "----------------------------------------"
