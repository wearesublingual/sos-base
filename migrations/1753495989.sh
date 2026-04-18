echo "Allow updating of timezone by right-clicking on the clock (or running sublingual-os-cmd-tzupdate)"

if sublingual-os-cmd-missing tzupdate; then
  bash "$SUBLINGUAL_OS_PATH/install/config/timezones.sh"
  sublingual-os-refresh-waybar
fi
