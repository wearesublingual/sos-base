echo "Install swayOSD to show volume status"

if sublingual-os-cmd-missing swayosd-server; then
  sublingual-os-pkg-add swayosd
  setsid uwsm-app -- swayosd-server &>/dev/null &
fi
