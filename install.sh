#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -eEo pipefail

# Define Omarchy locations
export SUBLINGUAL_OS_PATH="$HOME/.local/share/sublingual-os"
export SUBLINGUAL_OS_INSTALL="$SUBLINGUAL_OS_PATH/install"
export SUBLINGUAL_OS_INSTALL_LOG_FILE="/var/log/sublingual-os-install.log"
export PATH="$SUBLINGUAL_OS_PATH/bin:$PATH"

# Install
source "$SUBLINGUAL_OS_INSTALL/helpers/all.sh"
source "$SUBLINGUAL_OS_INSTALL/preflight/all.sh"
source "$SUBLINGUAL_OS_INSTALL/packaging/all.sh"
source "$SUBLINGUAL_OS_INSTALL/config/all.sh"
source "$SUBLINGUAL_OS_INSTALL/login/all.sh"
source "$SUBLINGUAL_OS_INSTALL/post-install/all.sh"
