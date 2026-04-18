echo "Update Waybar for new Sublingual OS menu"

if ! grep -q "" ~/.config/waybar/config.jsonc; then
  sublingual-os-refresh-waybar
fi
