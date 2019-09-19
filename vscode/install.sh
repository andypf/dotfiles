#!/bin/sh

echo "install extensions"

#code-server --install-extension ms-vscode.go && \

cp -r /root/dotfiles/vscode/user /root/.local/share/code-server/User

sed -i 's/\(root:.*\/root:\)\/bin\/ash/\1\/usr\/bin\/fish/g' /etc/passwd

ln -s /root/dotfiles/fish/config.fish ~/.config/fish/config.fish
ln -s /root/dotfiles/fish/functions ~/.config/fish/functions

mkdir -p /root/dotfiles/tmux

ln -s /root/dotfiles/tmux ~/.tmux

ln -s /root/workspace/bash_aliases ~/.bash_aliases

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 
# git clone git://github.com/wting/autojump.git /tmp/autojump && python /tmp/autojump/install.py


mkdir -p ~/.vim/colors
ln -s /root/dotfiles/tmuxconf ~/.tmux.conf
