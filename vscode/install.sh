#!/bin/sh

echo "install extensions"

#code-server --install-extension ms-vscode.go && \

echo $(pwd)
cp -r $(pwd)/user/settings.json /root/.local/share/code-server/User/
cp $(pwd)/terminal.sh /root/terminal.sh
chmod +x /root/terminal.sh

sed -i 's/\(root:.*\/root:\)\/bin\/ash/\1\/usr\/bin\/fish/g' /etc/passwd

ln -s $(pwd)/../fish/config.fish ~/.config/fish/config.fish
ln -s $(pwd)/../fish/functions ~/.config/fish/functions

mkdir -p $(pwd)/../tmux

ln -s $(pwd)/../tmux ~/.tmux

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 
# git clone git://github.com/wting/autojump.git /tmp/autojump && python /tmp/autojump/install.py


mkdir -p ~/.vim/colors
ln -s $(pwd)/../tmuxconf ~/.tmux.conf
