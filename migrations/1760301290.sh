echo "Add the new Flexoki Light theme"

if [[ ! -L ~/.config/sublingual-os/themes/flexoki-light ]]; then
  ln -nfs ~/.local/share/sublingual-os/themes/flexoki-light ~/.config/sublingual-os/themes/
fi
