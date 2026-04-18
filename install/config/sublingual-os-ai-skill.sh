# Place in ~/.claude/skills since all tools populate from there as well as their own sources
mkdir -p ~/.claude/skills
ln -s $SUBLINGUAL_OS_PATH/default/sublingual-os-skill ~/.claude/skills/sublingual-os
