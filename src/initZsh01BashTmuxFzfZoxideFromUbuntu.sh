#!/bin/bash
bash script/setupZsh01BashTmuxFzfZoxideFromUbuntu.sh
chsh -s $(which zsh)
zsh -i -c "exit"

# Add tmux auto-attach to .zshrc
cat >> ~/.zshrc << 'EOF'
# Auto-attach to tmux
if [[ -z "$TMUX" && -n "$PS1" ]]; then
    tmux attach || tmux
fi
EOF

# exec kill -9 $$
kill -9 -1