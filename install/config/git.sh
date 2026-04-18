# Set identification from install inputs
if [[ -n ${SUBLINGUAL_OS_USER_NAME//[[:space:]]/} ]]; then
  git config --global user.name "$SUBLINGUAL_OS_USER_NAME"
fi

if [[ -n ${SUBLINGUAL_OS_USER_EMAIL//[[:space:]]/} ]]; then
  git config --global user.email "$SUBLINGUAL_OS_USER_EMAIL"
fi
