echo "Fix JetBrains font setting"

if [[ $(sublingual-os-font-current) == JetBrains* ]]; then
  sublingual-os-font-set "JetBrainsMono Nerd Font"
fi
