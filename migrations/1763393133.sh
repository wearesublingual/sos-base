echo "Link new theme picker config"

mkdir -p ~/.config/elephant/menus
ln -snf $SUBLINGUAL_OS_PATH/default/elephant/sublingual_os_themes.lua ~/.config/elephant/menus/sublingual_os_themes.lua
sed -i '/"menus",/d' ~/.config/walker/config.toml
sublingual-os-restart-walker
