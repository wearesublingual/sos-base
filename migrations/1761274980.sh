echo "Migrate to proper packages for localsend and asdcontrol"

if sublingual-os-pkg-present localsend-bin; then
  sublingual-os-pkg-drop localsend-bin
  sublingual-os-pkg-add localsend
fi

if sublingual-os-pkg-present asdcontrol-git; then
  sublingual-os-pkg-drop asdcontrol-git
  sublingual-os-pkg-add asdcontrol
fi
