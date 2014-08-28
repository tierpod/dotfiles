# dotfiles

[Описание GNU stow](https://github.com/tierpod/dotfiles/wiki/stow)

## Установка
 * Зависимости: git, stow (или xstow): sudo apt-get install git stow
 * cd ~
 * git clone git@github.com:tierpod/dotfiles.git
 * cd dotfiles
 * stow bash

## Подключение настроек bash
Добавить в ~/.bashrc
```bash
[ -d "$HOME/.config/bash/" ] && for file in $HOME/.config/bash/*.conf; do . $file; done]
```

## Подключение настроек mc
Добавить в ~/.config/mc/ini
```ini
[Midnight-Commander]
skin=xorzen256
```
