echo "Add Tmux as an option with themed styling"

sublingual-os-pkg-add tmux

if [[ ! -f ~/.config/tmux/tmux.conf ]]; then
  mkdir -p ~/.config/tmux
  cp $SUBLINGUAL_OS_PATH/config/tmux/tmux.conf ~/.config/tmux/tmux.conf
  sublingual-os-theme-refresh
fi
