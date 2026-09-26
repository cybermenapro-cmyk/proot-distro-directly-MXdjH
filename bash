#!/data/data/com.termux/files/usr/bin/bash

set -e

echo "[+] Updating Termux packages..."
pkg update -y
pkg upgrade -y

echo "[+] Installing proot-distro..."
pkg install -y proot-distro

echo "[+] Installing Debian..."
proot-distro install debian

echo "[+] Entering Debian..."
proot-distro login debian
