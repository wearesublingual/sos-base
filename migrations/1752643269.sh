echo "Add new matte black theme"

if [[ ! -L $HOME/.config/sublingual-os/themes/matte-black ]]; then
  ln -snf ~/.local/share/sublingual-os/themes/matte-black ~/.config/sublingual-os/themes/
fi
