echo "Ensure all indexes and packages are up to date"

sublingual-os-update-keyring
sublingual-os-refresh-pacman
sudo pacman -Syu --noconfirm
