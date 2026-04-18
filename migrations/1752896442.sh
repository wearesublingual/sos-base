echo "Replace volume control GUI with a TUI"

if sublingual-os-cmd-missing wiremix; then
  sublingual-os-pkg-add wiremix
  sublingual-os-pkg-drop pavucontrol
  sublingual-os-refresh-applications
  sublingual-os-refresh-waybar
fi
