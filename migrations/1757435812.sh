echo "Update Zoom webapp to handle zoommtg:// and zoomus:// protocol links"

if [[ -f ~/.local/share/applications/Zoom.desktop ]]; then
  sublingual-os-webapp-remove Zoom
  sublingual-os-webapp-install Zoom https://app.zoom.us/wc/home Zoom.png "sublingual-os-webapp-handler-zoom %u" "x-scheme-handler/zoommtg;x-scheme-handler/zoomus"
fi
