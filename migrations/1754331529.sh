echo "Update Waybar for new Omarchy menu"

if ! grep -q "" ~/.config/waybar/config.jsonc; then
  sublingual-os-refresh-waybar
fi
