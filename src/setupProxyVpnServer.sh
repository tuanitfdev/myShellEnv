#!/bin/bash
bash ./script/setupZsh01ReplaceBashrcTmuxFzfZoxideFromUbuntu.sh
bash ./script/setupDante.sh
bash ./script/setupSquid.sh
bash ./script/installDocker.sh
bash ./script/setupWireguard.sh
chsh -s $(which zsh)