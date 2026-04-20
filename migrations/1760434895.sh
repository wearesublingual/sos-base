echo "Change to omarchy-nvim package"
sublingual-os-pkg-drop sublingual-os-lazyvim
sublingual-os-pkg-add omarchy-nvim

# Will trigger to overwrite configs or not to pickup new hot-reload themes
omarchy-nvim-setup
