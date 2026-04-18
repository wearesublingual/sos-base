echo "Make new Osaka Jade theme available as new default"

if [[ ! -L ~/.config/sublingual-os/themes/osaka-jade ]]; then
  rm -rf ~/.config/sublingual-os/themes/osaka-jade
  git -C ~/.local/share/sublingual-os checkout -f themes/osaka-jade
  ln -nfs ~/.local/share/sublingual-os/themes/osaka-jade ~/.config/sublingual-os/themes/osaka-jade
fi
