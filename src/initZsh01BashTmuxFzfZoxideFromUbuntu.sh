#!/bin/bash
source script/setupZsh01BashTmuxFzfZoxideFromUbuntu.sh
exec zsh
chsh -s $(which zsh)