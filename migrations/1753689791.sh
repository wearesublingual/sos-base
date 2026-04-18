echo "Add the new ristretto theme as an option"

if [[ ! -L ~/.config/sublingual-os/themes/ristretto ]]; then
  ln -nfs ~/.local/share/sublingual-os/themes/ristretto ~/.config/sublingual-os/themes/
fi
