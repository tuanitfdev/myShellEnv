#!/bin/bash
if [ $# -eq 0 ]; then
    PYTHON_VERSION="3.12"
else
    PYTHON_VERSION=$1
fi

curl -LsSf https://astral.sh/uv/install.sh | sh
echo 'eval "$(uv generate-shell-completion bash)"' >> ~/.bashrc
echo 'eval "$(uv generate-shell-completion zsh)"' >> ~/.zshrc
uv python install $PYTHON_VERSION