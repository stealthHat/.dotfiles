# Dotfiles

This is a simple repository to save my .files with an [autorice](https://github.com/stealthHat/.dotfiles/blob/master/install/autorice-deploy) script.

### Features:

- A clean structure using the [XDG Base Directory specification](https://wiki.archlinux.org/title/XDG_Base_Directory) to keep trash out of $HOME.
- Zsh with no plugin manager dependency (and without oh-my-bloat).
- A compact tmux.conf with automatic tpm installation.
- Modern and fast nvim structure.
- Full setup of my suckless forks.

### Autorice steps:

I created this script mainly because I don't like the folder structure needed to use [stow](https://www.gnu.org/software/stow/manual/stow.html#Tree-folding). For that, I created a small function to make the symbolic links with a cleaner and more organized structure for the repository's home folder.

- `pacman_settings`: Set up the best mirrors for my country (Brazil) and configure pacman to look pretty.
- `setup_links`: Make symbolic links from `.dotfiles/home` to `$HOME`.
- `setup_yay`: Install yay.
- `install_loop`: Install all the packages and repositories on [packages](https://github.com/stealthHat/.dotfiles/tree/master/install/packages) (including my forks of [suckless](https://suckless.org/) [DWM](https://github.com/stealthHat/dwm), [Slstatus](https://github.com/stealthHat/slstatus), and [St](https://github.com/stealthHat/st)).
- `basic_config`: Set zsh as the default shell, configure fonts, and kernel modules.
- `asdf_config`: Install asdf.

Disclaimer: This script has only been tested on Arch Linux (a fresh install is recommended).

