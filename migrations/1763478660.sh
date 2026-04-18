echo "Configure XDPH config for screensharing to remember token selection"

cp $SUBLINGUAL_OS_PATH/config/hypr/xdph.conf ~/.config/hypr/
systemctl --user restart xdg-desktop-portal-hyprland
