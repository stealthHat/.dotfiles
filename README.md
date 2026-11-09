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

Run `install/autorice-deploy <command>`: `fresh` runs every step below in order, `links`, `mirror` and `install` run a single step.

- `setup_links`: Make symbolic links from `.dotfiles/home` to `$HOME` and from `install/etc` to `/etc`, and remove links left behind by files deleted from the repo.
- `mirror_update`: Upgrade the system, then pick the fastest HTTPS mirrors in Brazil and Chile with reflector.
- `install_loop`: Install all the packages on [packages](https://github.com/stealthHat/.dotfiles/tree/master/install/packages) (including my forks of [suckless](https://suckless.org/) [DWM](https://github.com/stealthHat/dwm), [Slstatus](https://github.com/stealthHat/slstatus), and [St](https://github.com/stealthHat/st), plus upstream [dmenu](https://tools.suckless.org/dmenu/)) and the tool versions pinned in `mise.lock`.
- `basic_config`: Create the XDG user folders, set zsh as the default shell, and make pacman look pretty.
- `clean_up`: Remove bash leftovers from `$HOME` and reboot.

Disclaimer: This script has only been tested on Arch Linux (a fresh install is recommended).

