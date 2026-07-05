#!/bin/bash
bash ./script/setupZsh01ReplaceBashrcTmuxFzfZoxideFromUbuntu.sh
bash ./script/setupDante.sh
bash ./script/setupSquid.sh
bash ./script/installDocker.sh
bash ./script/setupWireguard.sh
chsh -s $(which zsh)
ufw allow 41080
ufw allow 31288
ufw allow 31821
ufw allow 31820/udp
ufw enable
ufw reload