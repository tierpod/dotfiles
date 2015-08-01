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
* plugins: 
  * [pathogen](https://github.com/tpope/vim-pathogen)
  * [ctrlp.vim](http://kien.github.com/ctrlp.vim)
  * [vim-airline](https://github.com/bling/vim-airline)
  * [vim-ansible-yaml](https://github.com/chase/vim-ansible-yaml)
* colorschemes:
  * zenburn
  * wombat, wombat256mod
  * [hybrid](https://github.com/w0ng/vim-hybrid)
  * mustang_vim_colorscheme_by_hcalves


## psql
* ~/.psql_history per database
* pager settings
