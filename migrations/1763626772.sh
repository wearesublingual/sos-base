echo "Make hackerman available as new theme"

if [[ ! -L ~/.config/sublingual-os/themes/hackerman ]]; then
  rm -rf ~/.config/sublingual-os/themes/hackerman
  ln -nfs ~/.local/share/sublingual-os/themes/hackerman ~/.config/sublingual-os/themes/
fi
