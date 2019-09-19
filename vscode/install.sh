#!/bin/sh

echo "install extensions"

#code-server --install-extension ms-vscode.go && \

cp -r /root/dotfiles/vscode/user /root/.local/share/code-server/User
