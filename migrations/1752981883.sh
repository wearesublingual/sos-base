echo "Replace wofi with walker as the default launcher"

if sublingual-os-cmd-missing walker; then
  sublingual-os-pkg-add walker-bin libqalculate

  sublingual-os-pkg-drop wofi
  rm -rf ~/.config/wofi

  mkdir -p ~/.config/walker
  cp -r ~/.local/share/sublingual-os/config/walker/* ~/.config/walker/
fi
