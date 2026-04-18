if [[ $(plymouth-set-default-theme) != "sublingual-os" ]]; then
  sudo cp -r "$HOME/.local/share/sublingual-os/default/plymouth" /usr/share/plymouth/themes/sublingual-os/
  sudo plymouth-set-default-theme sublingual-os
fi
