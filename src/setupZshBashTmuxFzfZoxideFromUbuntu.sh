#!/bin/bash
apt update -y && apt install -y curl vim-gtk3 tmux xsel htop net-tools iputils-ping zsh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
git clone https://github.com/lincheney/fzf-tab-completion.git ~/fzf-tab-completion
cp ~/.bashrc ~/.bashrc.bk
cp script/.bashrc ~/.bashrc
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all
cp ~/.zshrc ~/.zshrc.bk
cp script/.zshrc ~/.zshrc
cp conf/.vimrc ~/.vimrc
cp conf/.tmux.conf ~/.tmux.conf
vim +PlugInstall +qall
~/.tmux/plugins/tpm/bin/install_plugins