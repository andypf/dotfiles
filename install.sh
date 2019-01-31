echo "Load Dotfiles..."

sed -i 's/\(root:.*\/root:\)\/bin\/ash/\1\/usr\/bin\/fish/g' /etc/passwd

ln -s $(pwd)/fish/config.fish ~/.config/fish/config.fish
ln -s $(pwd)/fish/functions ~/.config/fish/functions

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.vim/colors
ln -s $(pwd)/vim/molokai.vim ~/.vim/colors/molokai.vim
ln -s $(pwd)/vimrc ~/.vimrc
