SUBLINGUAL_OS_MIGRATIONS_STATE_PATH=~/.local/state/sublingual-os/migrations
mkdir -p $SUBLINGUAL_OS_MIGRATIONS_STATE_PATH

for file in ~/.local/share/sublingual-os/migrations/*.sh; do
  touch "$SUBLINGUAL_OS_MIGRATIONS_STATE_PATH/$(basename "$file")"
done
