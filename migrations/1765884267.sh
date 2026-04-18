echo "Change to openai-codex instead of openai-codex-bin"

if sublingual-os-pkg-present openai-codex-bin; then
    sublingual-os-pkg-drop openai-codex-bin
    sublingual-os-pkg-add openai-codex
fi
