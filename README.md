# dotfiles
Полезные статьи:
 * [Использование stow](http://taihen.org/managing-dotfiles-with-gnu-stow/)
 * [Ещё один пример](http://kianmeng.org/blog/2014/03/08/using-gnu-stow-to-manage-your-dotfiles/)

## Установка
 * Зависимости: git, stow (или xstow): sudo apt-get install git stow
 * cd ~
 * git clone git@github.com:tierpod/dotfiles.git
 * cd dotfiles
 * stow common

## Использование stow
[Страница в wiki](https://github.com/tierpod/dotfiles/wiki/stow)

## Подключение настроек bash
Добавить в ~/.bashrc
```bash
[ -d "$HOME/.config/bash/" ] && for file in $HOME/.config/bash/*.conf; do . $file; done]
```
