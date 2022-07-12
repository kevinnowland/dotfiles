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

### Vim

To install a vim plugin:

```bash
cd vim/bundle
git submodule add URL_FOR_SUBMODULE
```

#### YouCompleteMe

To install the vim plugin YouCompleteME you then have to (on mac)
```bash
git submodule update --init --recursive
python install.py --all
```

Then you might have to do all sorts of things, like re-install vim with
python support, etc.

## Things to install

### General

1. tmux
2. [mcfly](https://github.com/cantino/mcfly)
3. [thefuck](https://github.com/nvbn/thefuck#installation)
4. [diff-so-fancy](https://github.com/so-fancy/diff-so-fancy)

### Maybe work related

1. tfenv
2. docker
3. pyenv
