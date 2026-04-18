echo "Make ethereal available as new theme"

if [[ ! -L ~/.config/sublingual-os/themes/ethereal ]]; then
  rm -rf ~/.config/sublingual-os/themes/ethereal
  ln -nfs ~/.local/share/sublingual-os/themes/ethereal ~/.config/sublingual-os/themes/
fi
