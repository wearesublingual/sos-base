echo "Switch lmstudio -> lmstudio-bin"

if pacman -Q lmstudio &>/dev/null; then
  sublingual-os-pkg-drop lmstudio
  sublingual-os-pkg-add lmstudio-bin
fi
