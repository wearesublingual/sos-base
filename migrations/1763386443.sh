echo "Uniquely identify terminal apps with custom app-ids using sublingual-os-launch-tui"

# Replace terminal -e calls with sublingual-os-launch-tui in bindings
sed -i 's/\$terminal -e \([^ ]*\)/sublingual-os-launch-tui \1/g' ~/.config/hypr/bindings.conf

# Update waybar to use sublingual-os-launch-or-focus with sublingual-os-launch-tui for TUI apps
sed -i 's|xdg-terminal-exec btop|sublingual-os-launch-or-focus-tui btop|' ~/.config/waybar/config.jsonc
sed -i 's|xdg-terminal-exec --app-id=com\.omarchy\.Wiremix -e wiremix|sublingual-os-launch-or-focus-tui wiremix|' ~/.config/waybar/config.jsonc
