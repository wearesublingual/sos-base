echo "Add sample low battery notification hook"

mkdir -p ~/.config/sublingual-os/hooks

if [[ ! -f ~/.config/sublingual-os/hooks/battery-low.sample ]]; then
  cp "$SUBLINGUAL_OS_PATH/config/omarchy/hooks/battery-low.sample" ~/.config/sublingual-os/hooks/battery-low.sample
fi
