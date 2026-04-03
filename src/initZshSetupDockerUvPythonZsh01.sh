#!/bin/bash
if [ $# -eq 0 ]; then
    PYTHON_VERSION="3.12"
else
    PYTHON_VERSION=$1
fi

bash script/setupZsh01BashTmuxFzfZoxideFromUbuntu.sh
bash script/installDocker.sh
bash script/installUvPython.sh $PYTHON_VERSION
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

