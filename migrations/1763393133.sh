echo "Link new theme picker config"

mkdir -p ~/.config/elephant/menus
ln -snf $SUBLINGUAL_OS_PATH/default/elephant/omarchy_themes.lua ~/.config/elephant/menus/omarchy_themes.lua
sed -i '/"menus",/d' ~/.config/walker/config.toml
sublingual-os-restart-walker
