#!/bin/bash

# this is install script for vim, zsh and tmux
# supported on linux and unix platform only


# path variables to use
rootDir=~/.trippcconfig
vimDir=$rootDir/vim
nvimrc=$vimDir/init.lua
tmuxDir=$rootDir/tmux
tmuxFile=$tmuxDir/tmux.conf
zshDir=$rootDir/zsh
zshrc=$zshDir/zshrc
ohmyzshDir=$zshDir/oh-my-zsh
ctagsFile=$rootDir/ctags/config.ctags
alacritty=$rootDir/alacritty
gitDir=$rootDir/gitconfigs
gitconfig=$gitDir/gitconfig
gitignore=$gitDir/gitignore
gittemplate=$gitDir/git_template
backupDir=$rootDir/oldbackup
wezterm=$rootDir/wezterm
hyprland=$rootDir/hyprland

ohmyzshDestination=~/.oh-my-zsh
tmuxConfigDestination=~/.tmux.conf
tmuxFolderDestination=~/.tmux
zshrcDestination=~/.zshrc
vimDirDestination=~/.vim
nvimDirDestination=~/.config/nvim
nvimrcDestination=$nvimDirDestination/init.lua
ctagsDestinationDir=~/.ctags.d
ctagsDestination=$ctagsDestinationDir/config.ctags
alacrittyDestination=~/.config/alacritty
gitconfigDestination=~/.gitconfig
gitignoreDestination=~/.gitignore
gittemplateDestination=~/.git_template
weztermDestination=~/.wezterm.lua
hyprlandDestination=~/.config/hypr/hyprland.conf

# for error handling in case package manager not found

if hash apt-get > /dev/null; then
  pacup='sudo apt-get update'
  pacin='sudo apt-get install'
elif hash zypper > /dev/null; then
  pacup='sudo zypper refresh'
  pacin='sudo zypper install'
elif hash brew > /dev/null; then
  pacup='brew update'
  pacin='brew install'
elif hash pacman > /dev/null; then
  pacup='sudo pacman'
  pacin='sudo pacman -S'
else
  echo 'no package manager found brew or apt-get or zypper'
  echo 'aborting the installation...'
  exit
fi

echo "updating package manager repo-cache"
$pacup

# 1st param package name to install
# 2nd param command to check that package
# if 2nd params is empty use 1st parm as command
install_if_not_already() {
  if [ -z $2 ]; then
    command_to_run=$1
  else
    command_to_run=$2
  fi

  if hash $command_to_run > /dev/null; then
    echo ""
    echo "$1 is already installed"
    echo ""
  else
    echo ""
    echo "installing:$1"
    echo ""
    $pacin $1
  fi
}

# 1st param source
# 2nd param backup destination
take_backup() {
  if [ -L $1 ]; then
    rm $1
  fi
  if [ -f $1 ] || [ -d $1 ]; then
    mv $1 $backupDir/$2
  fi
}

# 1st param folder address
create_dir_if_not_already() {
  if [ ! -d $1 ]; then
    mkdir $1
  fi
}

echo ""
echo "                                 ########  ##    ##  "
echo "                                 ##     ##  ##  ##   "
echo "                                 ##     ##   ####    "
echo "                                 ########     ##     "
echo "                                 ##     ##    ##     "
echo "                                 ##     ##    ##     "
echo "                                 ########     ##     "
echo ""
echo " ######## ########  #### ########  ##     ## ########     ###    ########  #### "
echo "    ##    ##     ##  ##  ##     ## ##     ## ##     ##   ## ##   ##     ##  ##  "
echo "    ##    ##     ##  ##  ##     ## ##     ## ##     ##  ##   ##  ##     ##  ##  "
echo "    ##    ########   ##  ########  ##     ## ########  ##     ## ########   ##  "
echo "    ##    ##   ##    ##  ##        ##     ## ##   ##   ######### ##   ##    ##  "
echo "    ##    ##    ##   ##  ##        ##     ## ##    ##  ##     ## ##    ##   ##  "
echo "    ##    ##     ## #### ##         #######  ##     ## ##     ## ##     ## #### "
echo ""
echo ""
echo "please wait 2 sec"
echo ""
sleep 2s

if [ ! -d ~/.trippcconfig ]; then
  echo ""
  echo "~/.trippcconfig directory not found"
  echo " Aborting the installation..."
  echo ""
  sleep 2s
  exit;
fi

echo ""
echo "you can find your old configuration in $backupDir directory"
echo ""

echo ""
echo "Installing new vim, nvim, tmux, zsh, oh-my-zsh  configuration"
echo ""
sleep 2s

create_dir_if_not_already $backupDir

install_if_not_already git

git submodule init
git submodule update

take_backup $vimDirDestination vim
take_backup $nvimDirDestination nvim
take_backup $tmuxConfigDestination tmux.conf
take_backup $tmuxFolderDestination tmux
take_backup $zshrcDestination zshrc
take_backup $ohmyzshDestination oh-my-zsh
take_backup $ctagsDestination config.ctags
take_backup $alacrittyDestination alacritty
take_backup $gitignoreDestination gitignore
take_backup $gitconfigDestination gitconfig
take_backup $gittemplateDestination gittemplate
take_backup $weztermDestination wezterm
take_backup $hyprlandDestination hyprland

create_dir_if_not_already ~/.config
create_dir_if_not_already $ctagsDestinationDir
create_dir_if_not_already $vimDir/swaps
create_dir_if_not_already $vimDir/backups
create_dir_if_not_already $vimDir/undo

ln -s $vimDir $vimDirDestination
ln -s $vimDir $nvimDirDestination
ln -s $tmuxFile $tmuxConfigDestination
ln -s $tmuxDir $tmuxFolderDestination
ln -s $zshrc $zshrcDestination
ln -s $ohmyzshDir $ohmyzshDestination
ln -s $ctagsFile $ctagsDestination
ln -s $alacritty $alacrittyDestination
ln -s $gitconfig $gitconfigDestination
ln -s $gitignore $gitignoreDestination
ln -s $gittemplate $gittemplateDestination
ln -s $wezterm $weztermDestination
ln -s $hyprland $hyprlandDestination


echo ""
echo " vim, nvim, tmux, zsh, oh-my-zsh configration setup completed successfully..."
echo ""

install_if_not_already zsh
install_if_not_already vim
install_if_not_already tmux

echo ""
echo "changing the default shell to zsh"
echo "please enter root password in required"
echo ""

if ! hash which > /dev/null; then
  chsh -s $(which zsh)
  sudo chsh -s $(which zsh)
else
  chsh -s /bin/zsh
  sudo chsh -s /bin/zsh
fi

#  while true; do
#    read -p " do you want to continue ? (y/n)" yn
#    case $yn in
#      [Yy]* ) break;;
#      [Nn]* ) echo "Aborting..." ; exit;;
#      * ) echo "Please answer yes or no.";
#    esac
#  done
