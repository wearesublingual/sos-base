echo "Add right-click terminal action to waybar sublingual-os menu icon"

WAYBAR_CONFIG="$HOME/.config/waybar/config.jsonc"

if [[ -f $WAYBAR_CONFIG ]] && ! grep -A5 '"custom/sublingual-os"' "$WAYBAR_CONFIG" | grep -q '"on-click-right"'; then
  sed -i '/"on-click": "sublingual-os-menu",/a\    "on-click-right": "sublingual-os-launch-terminal",' "$WAYBAR_CONFIG"
fi
