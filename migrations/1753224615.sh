echo "Adding SwayOSD theming"

if [[ ! -d ~/.config/swayosd ]]; then
  mkdir -p ~/.config/swayosd
  cp -r ~/.local/share/sublingual-os/config/swayosd/* ~/.config/swayosd/

  pkill swayosd-server
  setsid uwsm-app -- swayosd-server &>/dev/null &
fi
