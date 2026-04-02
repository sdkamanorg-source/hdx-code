#!/bin/bash

# Colors
R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
B='\033[1;34m'
C='\033[1;36m'
W='\033[1;37m'

clear

# Banner
echo -e "${G}"
echo "██╗  ██╗██████╗ ██╗  ██╗      ██████╗ ██████╗ ██████╗ ███████╗"
echo "██║  ██║██╔══██╗╚██╗██╔╝     ██╔════╝██╔═══██╗██╔══██╗██╔════╝"
echo "███████║██║  ██║ ╚███╔╝█████╗██║     ██║   ██║██║  ██║█████╗  "
echo "██╔══██║██║  ██║ ██╔██╗╚════╝██║     ██║   ██║██║  ██║██╔══╝  "
echo "██║  ██║██████╔╝██╔╝ ██╗     ╚██████╗╚██████╔╝██████╔╝███████╗"
echo "╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝      ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝"
echo -e "${W}"
echo "👑 OWNER: AMAN"
echo ""

# Menu
echo -e "${C}Select Option:${W}"
echo "1. Update System"
echo "2. Install Basic Tools"
echo "3. Install Python Setup"
echo "4. Install Git Setup"
echo "5. Show Device Info"
echo "6. Exit"
echo ""

read -p "Enter choice: " choice

case $choice in

1)
echo -e "${Y}Updating...${W}"
pkg update -y && pkg upgrade -y
;;

2)
echo -e "${Y}Installing Basic Tools...${W}"
pkg install nano -y
pkg install wget -y
pkg install curl -y
pkg install figlet -y
;;

3)
echo -e "${Y}Installing Python...${W}"
pkg install python -y
pip install requests
;;

4)
echo -e "${Y}Installing Git...${W}"
pkg install git -y
;;

5)
echo -e "${G}Device Info:${W}"
uname -a
df -h
;;

6)
echo "Bye 👋"
exit
;;

*)
echo -e "${R}Invalid Option!${W}"
;;

esac
