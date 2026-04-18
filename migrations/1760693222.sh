echo "Use explicit timezone selector when right-clicking on clock"

sed -i 's/sublingual-os-cmd-tzupdate/sublingual-os-launch-floating-terminal-with-presentation sublingual-os-tz-select/g' ~/.config/waybar/config.jsonc
