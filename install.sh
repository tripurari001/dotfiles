#!/bin/bash

# this is install script for vim, zsh and tmux 
# supported on linux and unix platform only


# path variables to use
rootDir=~/.trippcconfig
vimDir=$rootDir/vim
vimrc=$vimDir/vimrc
nvimrc=$vimDir/init.vim
tmuxDir=$rootDir/tmux
tmuxFile=$tmuxDir/tmux.conf
zshDir=$rootDir/zsh
zshrc=$zshDir/zshrc
ohmyzshDir=$zshDir/oh-my-zsh
ctagsFile=$rootDir/ctags/config.ctags
alacritty=$rootDir/alacritty
backupDir=$rootDir/oldbackup

ohmyzshDestination=~/.oh-my-zsh
tmuxDestination=~/.tmux.conf
zshrcDestination=~/.zshrc
vimrcDestination=~/.vimrc
vimDirDestination=~/.vim
nvimDirDestination=~/.config/nvim
nvimrcDestination=$nvimDirDestination/init.vim
ctagsDestinationDir=~/.ctags.d
ctagsDestination=$ctagsDestinationDir/config.ctags
alacrittyDestination=~/.config/alacritty

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

  if ! hash $command_to_run > /dev/null; then
    echo ""
    echo "installing:$1"
    echo ""
    $pacin $1
  else
    echo ""
    echo "$1 is already installed"
    echo ""
  fi
}

# 1st param source
# 2nd param backup destination
take_backup() {
  if [ -f $1 ]; then 
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

mkdir $backupDir

install_if_not_already git

git submodule init
git submodule update

take_backup $vimrcDestination vimrc
take_backup $vimDirDestination vim
take_backup $nvimDirDestination nvim
take_backup $tmuxDestination tmux.conf
take_backup $zshrcDestination zshrc
take_backup $ohmyzshDestination oh-my-zsh
take_backup $ctagsDestination config.ctags
take_backup $alacrittyDestination alacritty

create_dir_if_not_already ~/.config
create_dir_if_not_already $ctagsDestinationDir
create_dir_if_not_already $vimDir/swaps
create_dir_if_not_already $vimDir/backups
create_dir_if_not_already $vimDir/undo

ln -s $vimrc $vimrcDestination
ln -s $vimDir $vimDirDestination
ln -s $vimDir $nvimDirDestination
ln -s $tmuxFile $tmuxDestination
ln -s $zshrc $zshrcDestination
ln -s $ohmyzshDir $ohmyzshDestination
ln -s $ctagsFile $ctagsDestination
ln -s $alacritty $alacrittyDestination


echo ""
echo " vim, nvim, tmux, zsh, oh-my-zsh configration setup completed successfully..."
echo ""

install_if_not_already zsh
install_if_not_already vim
install_if_not_already tmux
install_if_not_already ctags

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
