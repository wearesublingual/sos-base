echo "Switch back to mainline chromium now that it supports full live themeing"

if sublingual-os-pkg-present sublingual-os-chromium; then
  if gum confirm "Ready to switch to mainstream chromium? (Will close Chromium + reset settings)"; then
    pkill -x chromium
    sublingual-os-pkg-drop sublingual-os-chromium
    sublingual-os-pkg-add chromium
    sublingual-os-theme-set-browser
  fi
fi
