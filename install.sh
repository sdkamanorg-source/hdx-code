#!/bin/bash

# Colors
R='\033[1;31m'
G='\033[1;32m'
Y='\033[1;33m'
B='\033[1;34m'
C='\033[1;36m'
W='\033[1;37m'
N='\033[0m'

# -------- BANNER --------
banner() {
clear
echo -e "${G}"
echo "██╗  ██╗██████╗ ██╗  ██╗      ██████╗ ██████╗ ██████╗ ███████╗"
echo "██║  ██║██╔══██╗╚██╗██╔╝     ██╔════╝██╔═══██╗██╔══██╗██╔════╝"
echo "███████║██║  ██║ ╚███╔╝█████╗██║     ██║   ██║██║  ██║█████╗"
echo "██╔══██║██║  ██║ ██╔██╗╚════╝██║     ██║   ██║██║  ██║██╔══╝"
echo "██║  ██║██████╔╝██╔╝ ██╗     ╚██████╗╚██████╔╝██████╔╝███████╗"
echo "╚═╝  ╚═╝╚═════╝ ╚═╝  ╚═╝      ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝"
echo -e "${W}"
echo "👑 OWNER: AMAN"
echo ""
}

# -------- MAIN MENU --------
main_menu() {
banner
echo -e "${C}────────────── MAIN MENU ──────────────${N}"
echo -e "${G} A) Panel"
echo " B) Vps Maker"
echo " C) Tools"
echo " D) System Edit (Coming Soon)"
echo -e "${R} E) Exit${N}"
echo ""
}

# -------- PANELS MENU --------
panels_menu() {
while true; do
banner
echo -e "${C}────────────── PANELS MENU ─────────────${N}"
echo " 1) Pterodactyl Panel"
echo " 2) Air-Link Panel"
echo " 3) Back to Main Menu"
echo ""
read -p "Select Option: " p

case $p in
1) echo -e "${G}Opening Pterodactyl...${N}"; sleep 1 ;;
2) echo -e "${G}Opening Air-Link...${N}"; sleep 1 ;;
3) return ;;
*) echo -e "${R}Invalid!${N}"; sleep 1 ;;
esac
done
}

# -------- VPS MENU --------
vps_menu() {
while true; do
banner
echo "  ╔══════════════════════════════════════════════╗"
echo "  ║  [1]  🚀 GitHub VPS Maker                   ║"
echo "  ╚══════════════════════════════════════════════╝"

echo "  ╔══════════════════════════════════════════════╗"
echo "  ║  [2]  🔧 IDX Tool Setup                     ║"
echo "  ╚══════════════════════════════════════════════╝"

echo "  ╔══════════════════════════════════════════════╗"
echo "  ║  [3]  ⚡ IDX VPS Maker                      ║"
echo "  ╚══════════════════════════════════════════════╝"

echo "  ╔══════════════════════════════════════════════╗"
echo "  ║  [4]  🌐 Real VPS (Any + KVM)               ║"
echo "  ╚══════════════════════════════════════════════╝"

echo "  ╔══════════════════════════════════════════════╗"
echo "  ║  [5]  ❌ Back                              ║"
echo "  ╚══════════════════════════════════════════════╝"

read -p "Select Option: " v

case $v in
1) echo -e "${G}Running GitHub VPS Maker...${N}"; sleep 1 ;;
2) echo -e "${G}Installing IDX Tools...${N}"; sleep 1 ;;
3) echo -e "${G}Starting IDX VPS...${N}"; sleep 1 ;;
4) echo -e "${G}Creating Real VPS...${N}"; sleep 1 ;;
5) return ;;
*) echo -e "${R}Invalid!${N}"; sleep 1 ;;
esac
done
}

# -------- TOOLS MENU --------
tools_menu() {
while true; do
banner
echo -e "${C}───────── TOOLS MENU ──────────────${N}"
echo " 1) Root Access"
echo " 2) Tailscale"
echo " 3) Cloudflare DNS"
echo " 4) System Info"
echo " 5) Vps Run"
echo " 6) TERMINAL"
echo " 7) RDP Installer"
echo " 8) Back"
echo ""

read -p "Select Option: " t

case $t in
1) sudo -i ;;
2) curl -fsSL https://tailscale.com/install.sh | sh ;;
3)
echo "nameserver 1.1.1.1" | sudo tee /etc/resolv.conf
echo "nameserver 1.0.0.1" | sudo tee -a /etc/resolv.conf
;;
4)
uname -a
free -h
df -h
read -p "Press Enter..."
;;
5)
echo "Run your VPS script here"
;;
6)
bash
;;
7)
apt update && apt install xfce4 xfce4-goodies xrdp -y
systemctl start xrdp
;;
8) return ;;
*) echo -e "${R}Invalid!${N}"; sleep 1 ;;
esac
done
}

# -------- LOOP --------
while true; do
main_menu
read -p "Select Option: " ch

case $ch in
A|a) panels_menu ;;
B|b) vps_menu ;;
C|c) tools_menu ;;
D|d) echo "Coming Soon..."; sleep 1 ;;
E|e) exit ;;
*) echo -e "${R}Invalid!${N}"; sleep 1 ;;
esac
done
