echo "Migrate to Walker 2.0.0"

NEEDS_MIGRATION=false

PACKAGES=(
  "elephant"
  "elephant-calc"
  "elephant-clipboard"
  "elephant-bluetooth"
  "elephant-desktopapplications"
  "elephant-files"
  "elephant-menus"
  "elephant-providerlist"
  "elephant-runner"
  "elephant-symbols"
  "elephant-unicode"
  "elephant-websearch"
  "elephant-todo"
  "walker"
  "libqalculate"
)

for pkg in "${PACKAGES[@]}"; do
  if ! sublingual-os-pkg-present "$pkg"; then
    NEEDS_MIGRATION=true
    break
  fi
done

WALKER_MAJOR=$(walker -v 2>&1 | grep -oP '^\d+' || echo "0")
if (( WALKER_MAJOR < 2 )); then
  NEEDS_MIGRATION=true
fi

# Ensure basic config is present
mkdir -p ~/.config/walker
cp -r ~/.local/share/sublingual-os/config/walker/* ~/.config/walker/

if $NEEDS_MIGRATION; then
  kill -9 $(pgrep -x walker) 2>/dev/null || true

  sublingual-os-pkg-drop walker-bin walker-bin-debug

  sublingual-os-pkg-add "${PACKAGES[@]}"

  source $SUBLINGUAL_OS_PATH/install/config/walker-elephant.sh

  rm -rf ~/.config/walker/themes

  sublingual-os-refresh-config walker/config.toml
  sublingual-os-refresh-config elephant/calc.toml
  sublingual-os-refresh-config elephant/desktopapplications.toml
fi

echo # Assure final success
