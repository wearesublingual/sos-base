echo "Replace bluetooth GUI with TUI"

sublingual-os-pkg-add bluetui
sublingual-os-pkg-drop blueberry

if ! grep -q "sublingual-os-launch-bluetooth" ~/.config/waybar/config.jsonc; then
  sed -i 's/blueberry/sublingual-os-launch-bluetooth/' ~/.config/waybar/config.jsonc
fi
