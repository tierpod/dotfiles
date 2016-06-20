# dotfiles

[Описание GNU stow](https://github.com/tierpod/dotfiles/wiki/stow)

## Установка (Ubuntu)
```bash
sudo apt-get install git stow #установить зависимости: git, stow (или xstow):
cd ~
git clone git@github.com:tierpod/dotfiles.git
cd dotfiles.git
mkdir ~/.config/bash/
stow bash
```

## nano
* markdown and wiki syntax highlight
* settings

## bash
* aliases
* functions
* fabric bash completion

Добавить в ~/.bashrc
```bash
[ -d "$HOME/.config/bash/" ] && for file in $HOME/.config/bash/*.conf; do . $file; done
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
* plugins (submodules):
  * [ctrlp.vim](http://kien.github.com/ctrlp.vim)
  * [pathogen](https://github.com/tpope/vim-pathogen)
  * [vim-airline](https://github.com/bling/vim-airline)
  * [vim-ansible-yaml](https://github.com/chase/vim-ansible-yaml)
  * [vim-markdown-folding](vim-markdown-folding)
  * [vim-surround](https://github.com/tpope/vim-surround)
* colorschemes:
  * [zenburn](https://github.com/jnurmine/Zenburn) (default)
  * [wombat](https://github.com/vim-scripts/Wombat)
  * [wombat256mod](https://github.com/vim-scripts/wombat256.vim)
  * [mustang](https://github.com/croaker/mustang-vim/tree/master/colors)
  * [hybrid](https://github.com/w0ng/vim-hybrid)
  * [dracula](https://github.com/zenorocha/dracula-theme)
  * [darcula](https://github.com/blueshirts/darcula)
  * [monokai](http://github.com/sickill/coloration)

## psql
* ~/.psql_history per database
* pager settings
