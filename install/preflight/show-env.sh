# Show installation environment variables
gum log --level info "Installation Environment:"

env | grep -E "^(SUBLINGUAL_OS_CHROOT_INSTALL|SUBLINGUAL_OS_ONLINE_INSTALL|SUBLINGUAL_OS_USER_NAME|SUBLINGUAL_OS_USER_EMAIL|USER|HOME|SUBLINGUAL_OS_REPO|SUBLINGUAL_OS_REF|SUBLINGUAL_OS_PATH)=" | sort | while IFS= read -r var; do
  gum log --level info "  $var"
done
