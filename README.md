# trippcconfig
My Linux ( vim, zsh, tmux ) configuration for one click installation in all machine

If you want to install this configration in your machine enter following command
( targeted os are ubuntu and opensuse )

1. Install GNU-Stow (https://formulae.brew.sh/formula/stow#default)

```
git clone https://github.com/tripurari001/trippcconfig.git ~/dotfiles
```
and then
```
cd ~/dotfiles 
stow -nv . #to check what will happen
stow -v .
```
