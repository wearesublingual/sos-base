echo "Change to sublingual-os-nvim package"
sublingual-os-pkg-drop sublingual-os-lazyvim
sublingual-os-pkg-add sublingual-os-nvim

# Will trigger to overwrite configs or not to pickup new hot-reload themes
sublingual-os-nvim-setup
