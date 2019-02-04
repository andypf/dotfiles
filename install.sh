echo "Load Dotfiles..."

sed -i 's/\(root:.*\/root:\)\/bin\/ash/\1\/usr\/bin\/fish/g' /etc/passwd

ln -f -s $(pwd)/fish/config.fish ~/.config/fish/config.fish
ln -f -s $(pwd)/fish/functions ~/.config/fish/functions

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.vim/colors
ln -f -s $(pwd)/vimrc ~/.vimrc
ln -f -s $(pwd)/tmuxconf ~/.tmux.conf

bash -c "command -v pip3 > /dev/null && pip3 install --user pynvim"
bash -c "command -v gem > /dev/null && gem install rails_best_practices"
bash -c "command -v yarn > /dev/null && yarn global add prettier"
bash -c "command -v yarn > /dev/null && yarn global add eslint" 
# eslint --init

export FZF_DEFAULT_COMMAND=find

