# Set default XCompose that is triggered with CapsLock
tee ~/.XCompose >/dev/null <<EOF
# Run sublingual-os-restart-xcompose to apply changes

# Include fast emoji access
include "%H/.local/share/sublingual-os/default/xcompose"

# Identification
<Multi_key> <space> <n> : "$SUBLINGUAL_OS_USER_NAME"
<Multi_key> <space> <e> : "$SUBLINGUAL_OS_USER_EMAIL"
EOF
