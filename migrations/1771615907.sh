echo "Add emoji font fallback to fontconfig"
cp $SUBLINGUAL_OS_PATH/config/fontconfig/fonts.conf ~/.config/fontconfig/fonts.conf
fc-cache -f
