# dotfiles

[Описание GNU stow](https://github.com/tierpod/dotfiles/wiki/stow)

## Установка
 * Зависимости: git, stow (или xstow): sudo apt-get install git stow
 * cd ~
 * git clone git@github.com:tierpod/dotfiles.git
 * cd dotfiles
 * stow bash

## bash
* aliases
* functions
* fabric bash completion

Добавить в ~/.bashrc
```bash
[ -d "$HOME/.config/bash/" ] && for file in $HOME/.config/bash/*.conf; do . $file; done]
```

## mc
* xorzen256 colorscheme
Добавить в ~/.config/mc/ini
```ini
[Midnight-Commander]
skin=xorzen256
```

## vim
* settings
* templates
* zenburn colorscheme
Установить [ctrlp.vim](http://kien.github.com/ctrlp.vim) в ~/.vim/bundle/

## psql
* ~/.psql_history per database
* pager settings
