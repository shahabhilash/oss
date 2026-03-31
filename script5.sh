#!/bin/bash
# Script 5: Open Source Manifesto Generator

echo "----------------------------------"
echo " Open Source Manifesto Generator"
echo "----------------------------------"

# Ask user input
read -p "1. Name one open-source tool you use daily: " TOOL
read -p "2. What does 'freedom' mean to you (one word)? " FREEDOM
read -p "3. What will you build and share freely? " BUILD

DATE=$(date '+%d %B %Y')
USER=$(whoami)
OUTPUT="manifesto_$USER.txt"

# Create manifesto
echo "On $DATE, I believe in the power of open source." > $OUTPUT
echo "I use $TOOL regularly, which shows collaboration." >> $OUTPUT
echo "Freedom means '$FREEDOM' to me." >> $OUTPUT
echo "I will build $BUILD and share it with everyone." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo "--------------------------"
cat $OUTPUT
