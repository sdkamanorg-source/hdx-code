#!/bin/bash

clear
echo "🔥 HDX-CODE Setup Started 🔥"

# Update system
pkg update -y && pkg upgrade -y

# Basic tools
pkg install git -y
pkg install python -y
pkg install figlet -y

# Banner
clear
figlet HDX-CODE

echo "⚡ Installing cool tools..."

# Example tools
pkg install nano -y
pkg install wget -y

echo ""
echo "✅ HDX-CODE Setup Complete!"
echo "👑 Owner: Aman"
