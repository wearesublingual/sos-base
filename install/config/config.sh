# Copy over Sublingual OS configs
mkdir -p ~/.config
cp -R ~/.local/share/sublingual-os/config/* ~/.config/

# Use default bashrc from Sublingual OS
cp ~/.local/share/sublingual-os/default/bashrc ~/.bashrc
