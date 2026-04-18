echo "Use interactive background selector menu"

mkdir -p ~/.config/elephant/menus
ln -snf $SUBLINGUAL_OS_PATH/default/elephant/sublingual_os_background_selector.lua ~/.config/elephant/menus/sublingual_os_background_selector.lua
sublingual-os-restart-walker
