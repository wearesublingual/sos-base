echo "Add Catppuccin Latte light theme"

if [[ ! -L $HOME/.config/sublingual-os/themes/catppuccin-latte ]]; then
  ln -snf ~/.local/share/sublingual-os/themes/catppuccin-latte ~/.config/sublingual-os/themes/
fi
