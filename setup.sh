# Directories 
mkdir -pv $HOME/.config/zsh ; \
mkdir -pv $HOME/.config/nvim ; \
mkdir -pv $HOME/.config/kitty ; \

# Symbolic links
ln -sfv $HOME/git/.dotfiles/.profile $HOME/ ; \
ln -sfv $HOME/git/.dotfiles/.zprofile $HOME/ ; \
ln -sfv $HOME/git/.dotfiles/.config/zsh/.zsh_plugins.txt $HOME/.config/zsh ; \
ln -sfv $HOME/git/.dotfiles/.config/zsh/.zshrc $HOME/.config/zsh ; \
ln -sfv $HOME/git/.dotfiles/.config/zsh/.zsh_aliases $HOME/.config/zsh ; \
ln -sfv $HOME/git/.dotfiles/.config/nvim/init.vim $HOME/.config/nvim ; \
ln -sfv $HOME/git/.dotfiles/.tmux.conf $HOME/ ; \
ln -sfv $HOME/git/.dotfiles/.config/kitty/kitty.conf $HOME/.config/kitty ; \

# Exports 
export ZSH=$HOME/.config/zsh/.oh-my-zsh ; \

# Sourcers
source $HOME/.zprofile ; \
source $HOME/.profile ; \
