echo "Install Impala as new wifi selection TUI"

if sublingual-os-cmd-missing impala; then
  sublingual-os-pkg-add impala
  sublingual-os-refresh-waybar
fi
