#!/bin/bash
source script/setupZsh01BashTmuxFzfZoxideFromUbuntu.sh
chsh -s $(which zsh)
exec zsh
tmux kill-server
exit
