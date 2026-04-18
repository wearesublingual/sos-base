#!/bin/bash

# Set install mode to online since boot.sh is used for curl installations
export SUBLINGUAL_OS_ONLINE_INSTALL=true

ansi_art='                 ▄▄▄
 ▄█████▄    ▄███████████▄    ▄███████   ▄███████   ▄███████   ▄█   █▄    ▄█   █▄
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   ███  ███   ███  ███   ███
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   █▀   ███   ███  ███   ███
███   ███  ███   ███   ███ ▄███▄▄▄███ ▄███▄▄▄██▀  ███       ▄███▄▄▄███▄ ███▄▄▄███
███   ███  ███   ███   ███ ▀███▀▀▀███ ▀███▀▀▀▀    ███      ▀▀███▀▀▀███  ▀▀▀▀▀▀███
███   ███  ███   ███   ███  ███   ███ ██████████  ███   █▄   ███   ███  ▄██   ███
███   ███  ███   ███   ███  ███   ███  ███   ███  ███   ███  ███   ███  ███   ███
 ▀█████▀    ▀█   ███   █▀   ███   █▀   ███   ███  ███████▀   ███   █▀    ▀█████▀
                                       ███   █▀                                  '

clear
echo -e "\n$ansi_art\n"

# Use custom branch if instructed, otherwise default to master
SUBLINGUAL_OS_REF="${SUBLINGUAL_OS_REF:-master}"

# Set mirror based on branch
if [[ $SUBLINGUAL_OS_REF == "dev" ]]; then
  export SUBLINGUAL_OS_MIRROR=edge
  echo 'Server = https://mirror.omarchy.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
elif [[ $SUBLINGUAL_OS_REF == "rc" ]]; then
  export SUBLINGUAL_OS_MIRROR=rc
  echo 'Server = https://rc-mirror.omarchy.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
else
  export SUBLINGUAL_OS_MIRROR=stable
  echo 'Server = https://stable-mirror.omarchy.org/$repo/os/$arch' | sudo tee /etc/pacman.d/mirrorlist >/dev/null
fi

sudo pacman -Syu --noconfirm --needed git

# Use custom repo if specified, otherwise default to basecamp/omarchy
SUBLINGUAL_OS_REPO="${SUBLINGUAL_OS_REPO:-basecamp/omarchy}"

echo -e "\nCloning Omarchy from: https://github.com/${SUBLINGUAL_OS_REPO}.git"
rm -rf ~/.local/share/sublingual-os/
git clone "https://github.com/${SUBLINGUAL_OS_REPO}.git" ~/.local/share/sublingual-os >/dev/null

echo -e "\e[32mUsing branch: $SUBLINGUAL_OS_REF\e[0m"
cd ~/.local/share/sublingual-os
git fetch origin "${SUBLINGUAL_OS_REF}" && git checkout "${SUBLINGUAL_OS_REF}"
cd -

echo -e "\nInstallation starting..."
source ~/.local/share/sublingual-os/install.sh
