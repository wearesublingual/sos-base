echo "Add new Sublingual OS Menu icon to Waybar"

mkdir -p ~/.local/share/fonts
cp ~/.local/share/sublingual-os/config/sublingual-os.ttf ~/.local/share/fonts/
fc-cache
