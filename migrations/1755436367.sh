echo "Add minimal starship prompt to terminal"

if sublingual-os-cmd-missing starship; then
  sublingual-os-pkg-add starship
  cp $SUBLINGUAL_OS_PATH/config/starship.toml ~/.config/starship.toml
fi
