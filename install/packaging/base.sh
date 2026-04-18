# Install all base packages
mapfile -t packages < <(grep -v '^#' "$SUBLINGUAL_OS_INSTALL/sublingual-os-base.packages" | grep -v '^$')
sublingual-os-pkg-add "${packages[@]}"
