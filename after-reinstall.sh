#!/bin/bash
# My first script
# Reset
Color_Off='\033[0m'       # Text Reset

# Bold
BBlack='\033[1;30m'       # Black
BRed='\033[1;31m'         # Red
BGreen='\033[1;32m'       # Green
BYellow='\033[1;33m'      # Yellow
BBlue='\033[1;34m'        # Blue
BPurple='\033[1;35m'      # Purple
BCyan='\033[1;36m'        # Cyan
BWhite='\033[1;37m'       # White

echo -e "\n${BGreen}"
echo -e "                                           .__       .__   "
echo -e "   _____   ___________   ____  __ _________|__|____  |  |  "
echo -e "  /     \_/ __ \_  __ \_/ ___\|  |  \_  __ \  \__  \ |  |  "
echo -e " |  Y Y  \  ___/|  | \/\  \___|  |  /|  | \/  |/ __ \|  |__"
echo -e " |__|_|  /\___  >__|    \___  >____/ |__|  |__(____  /____/"
echo -e "       \/     \/            \/                     \/      "
echo -e "${Color_Off}\n"

echo -e "\n ${BGreen}1. Refreshing packages and updating system${Color_Off} \n"
apt update && apt upgrade && apt dist-upgrade && apt autoremove

echo -e "\n ${BGreen}2. Installing Important Stuff${Color_Off} \n"

echo -e "\n ${BCyan}2.1 Installing Drivers${Color_Off} \n"

apt install firmware-linux-nonfree firmware-realtek firmware-misc-nonfree firmware-iwlwifi firmware-netxen pciutils 

echo -e "\n ${BCyan}2.2 Installing important applications${Color_Off} \n"

apt install vim compton timeshift redshift redshift-gtk apt-xapian-index gparted ntfs-3g shotwell vlc vlc-plugin-bittorrent libav-tools terminator caja-open-terminal htop usbutils tree qbittorrent locate p7zip p7zip-full unrar-free unzip git

echo -e "\n ${BGreen}3. Installing Printer Stuff${Color_Off} \n"
apt install hplip hplip-data hplip-doc hpijs-ppds hplip-gui  printer-driver-hpcups printer-driver-hpijs printer-driver-pxljr

echo -e "\n ${BGreen} All Set! Thank you.\n"
