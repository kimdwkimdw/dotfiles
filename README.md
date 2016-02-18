# dotfiles

Hello dotfiles.

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **Brewfile**: This is a list of applications for [Homebrew Cask](http://caskroom.io) to install: things like Chrome and 1Password and Adium and stuff. Might want to edit this file before running any initial setup.

## install

```sh
git clone https://github.com/kimdwkimdw/dotfiles ~/.dotfiles
cd ~/.dotfiles
script/install
```


## thanks

reference from
1. https://github.com/holman/dotfiles
1. https://github.com/rtomayko/dotfiles
1. https://github.com/wookayin/dotfiles
