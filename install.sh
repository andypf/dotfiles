echo "Load Dotfiles..."

sed -i 's/\(root:.*\/root:\)\/bin\/ash/\1\/usr\/bin\/fish/g' /etc/passwd

ln -s $(pwd)/fish/config.fish ~/.config/fish/config.fish
ln -s $(pwd)/fish/functions ~/.config/fish/functions

mkdir -p $(pwd)/vim
mkdir -p $(pwd)/tmux

ln -s $(pwd)/vim ~/.vim
ln -s $(pwd)/tmux ~/.tmux
ln -s $(pwd)/gitconfig ~/.gitconfig

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm 
# git clone git://github.com/wting/autojump.git /tmp/autojump && python /tmp/autojump/install.py


mkdir -p ~/.vim/colors
ln -s $(pwd)/vimrc ~/.vimrc
ln -s $(pwd)/tmuxconf ~/.tmux.conf

bash -c "command -v gem > /dev/null && gem install rubocop"
bash -c "command -v yarn > /dev/null && yarn global add prettier"
bash -c "command -v yarn > /dev/null && yarn global add eslint" 
bash -c "command -v yarn > /dev/null && yarn global add js-beautify" 
# eslint --init

export FZF_DEFAULT_COMMAND=find

