# Dotfiles

Dotifiles for zsh, vim, tmux.

Put laptop specific things in `zsh/zshrc_extra`

## Installation

These are some of my dotfiles.

To use, clone to `~/.dotfiles` and create the following symlinks:

```bash
ln -s ~/.dotfiles/zsh/zshrc ~/.zshrc
ln -s ~/.dotfiles/vim/vimrc ~/.vimrc
ln -s ~/.dotfiles/tmux/tmux.conf ~/.tmux.conf
```

### YouCompleteMe - Mac

To install the vim plugin YouCompleteME you then have to (on mac)
```bash
brew install cmake python go nodejs
cd vim/bundle/YouCompleteMe
git submodule update --init --recursive
python install.py --all
```

## Things to install

### General

1. tmux
2. [mcfly](https://github.com/cantino/mcfly)

### Maybe work related

1. tfenv
2. docker
3. pyenv
