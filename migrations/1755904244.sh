echo "Update fastfetch config with new Omarchy logo"

sublingual-os-refresh-config fastfetch/config.jsonc

mkdir -p ~/.config/sublingual-os/branding
cp $SUBLINGUAL_OS_PATH/icon.txt ~/.config/sublingual-os/branding/about.txt
