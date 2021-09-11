# clone my dot files and copy to relevant spots
echo "==> downloading dotfiles"
cd $HOME
if [ -d .dotfiles ]; then
    echo "==> deleting previous .dotfiles"
    rm -rf .dotfiles
fi
git clone https://github.com/adiyoss/dotfiles.git .dotfiles
cd .dotfiles

echo "==> configuring zsh"
ZSH_CUSTOM=~/.oh-my-zsh/custom
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed 's:env zsh::g' | sed 's:chsh -s .*$::g')"
# install zsh auto suggest
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
# instsall syntax highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
chsh -s "$(command -v zsh)"
# install base16 colors
git clone https://github.com/chriskempson/base16-shell.git $HOME/.config/base16-shell

echo "==> symlinking"
if [ ! -d "$HOME/.config" ]; then
    echo "==> creating ~/.config"
    mkdir -p "$HOME/.config"
fi

rm -rf $HOME/.config/nvim
ln -s $HOME/.dotfiles/.config/nvim $HOME/.config/nvim
rm $HOME/.vimrc
ln -s $HOME/.dotfiles/.config/nvim/init.vim $HOME/.vimrc
rm $HOME/.zshrc
ln -s $HOME/.dotfiles/zshrc.symlink $HOME/.zshrc
rm -f $HOME/.tmux.conf
ln -s $HOME/.dotfiles/tmux/tmux.conf.symlink $HOME/.tmux.conf
ln -s $HOME/.dotfiles/tmux/.tmux.conf.local $HOME/.tmux.conf.local
ln -s $HOME/.dotfiles/.gitconfig $HOME/.gitconfig

echo "==> intsalling neovim python support"
pip2 install --user neovim
pip3 install --user neovim

echo "==> installing vim-plug"
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
