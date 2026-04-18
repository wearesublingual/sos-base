echo "Add opencode with system themeing"

sublingual-os-pkg-add opencode

# Add config using omarchy theme by default
if [[ ! -f ~/.config/opencode/opencode.json ]]; then
  mkdir -p ~/.config/opencode
  cp $SUBLINGUAL_OS_PATH/config/opencode/opencode.json ~/.config/opencode/opencode.json
fi
