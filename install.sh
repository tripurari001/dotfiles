#!/bin/bash

# this is install script for vim, zsh and tmux 
# if you want to Uninstall then please run uninstall.sh 

rootDir=~/.trippcconfig
vimDir=$rootDir/vim
vimrc=$vimDir/vimrc
nvimrc=$vimDir/init.vim
zshDir=$rootDir/zsh
tmuxDir=$rootDir/tmux
tmuxFile=$tmuxDir/tmux.conf
zshDir=$rootDir/zsh
zshrc=$zshDir/zshrc
backupDir=$rootDir/oldbackup
ohmyzshDir=$zshDir/oh-my-zsh
ctagsFile=$rootDir/ctags/config.ctags
alacritty=$rootDir/alacritty

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

# for error handling in case package manager
# not found
pacup='echo "package manager not found"'
pacin='echo'
if hash apt-get > /dev/null; then
  pacup='sudo apt-get update'
  pacin='sudo apt-get install'
fi
if hash zypper > /dev/null; then
  pacup='sudo zypper refresh'
  pacin='sudo zypper install'
fi
if hash brew > /dev/null; then
  pacup='brew update'
  pacin='brew install'
fi

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
echo "\n"
echo "please wait 2 sec \n"
sleep 2s

if [ ! -d ~/.trippcconfig ]; then
  echo "\n ~/.trippcconfig directory not found \n Aborting the installation"
  sleep 2s
  exit;
fi

echo "you can find your old configuration in $backupDir directory \n"

echo "Installing new vim, nvim, tmux, zsh, oh-my-zsh  configuration \n"
sleep 2s

mkdir $backupDir

echo "initialling git submodule "

if ! hash git > /dev/null; then
  echo "git not found trying to install"
  pacup 
  pacin git
fi

git submodule init
git submodule update

if [ -f $vimrcDestination ]; then 
  mv $vimrcDestination $backupDir/vimrc
fi
if [ -d $vimDirDestination ]; then 
  mv $vimDirDestination $backupDir/vim
fi
if [ -d $nvimDirDestination ]; then 
  mv $nvimDirDestination $backupDir/nvim
fi
if [ -f $tmuxDestination ]; then 
  mv $tmuxDestination $backupDir/tmux.conf
fi
if [ -f $zshrcDestination ]; then 
  mv $zshrcDestination $backupDir/zshrc
fi
if [ -d $ohmyzshDestination ]; then 
  mv $ohmyzshDestination $backupDir/oh-my-zsh
fi
if [ -f $ctagsDestination ]; then 
  mv $ctagsDestination $backupDir/config.ctags
fi
if [ -d $alacrittyDestination ]; then 
  mv $alacrittyDestination $backupDir/alacritty
fi
if [ ! -d $ctagsDestinationDir ]; then 
  mkdir $ctagsDestinationDir
fi

ln -s $vimrc $vimrcDestination
ln -s $vimDir $vimDirDestination
ln -s $vimDir $nvimDirDestination
ln -s $tmuxFile $tmuxDestination
ln -s $zshrc $zshrcDestination
ln -s $ohmyzshDir $ohmyzshDestination
ln -s $ctagsFile $ctagsDestination
ln -s $alacritty $alacrittyDestination

if [ ! -d $vimDir/swaps ]; then 
  mkdir $vimDir/swaps
fi
if [ ! -d $vimDir/backups ]; then 
  mkdir $vimDir/backups
fi
if [ ! -d $vimDir/undo ]; then 
  mkdir $vimDir/undo
fi

echo "\n vim, nvim, tmux, zsh, oh-my-zsh configration setup completed successfully \n"
echo "\n updating repository to install required software \n"
sleep 2s

$pacup

if ! hash zsh > /dev/null; then
  $pacin zsh
fi
if ! hash vim > /dev/null; then
  $pacin vim
fi
if ! hash tmux > /dev/null; then
  $pacin tmux
fi
if ! hash ctags > /dev/null; then
  $pacin ctags
fi
if ! hash which > /dev/null; then
  chsh -s $(which zsh)
  sudo chsh -s $(which zsh)
else
  chsh -s /bin/zsh
  sudo chsh -s /bin/zsh
fi

#cd ~/.vim
#git submodule init
#git submodule update

#  while true; do
#    read -p " do you want to continue ? (y/n)" yn
#    case $yn in
#      [Yy]* ) break;;
#      [Nn]* ) echo "Aborting..." ; exit;;
#      * ) echo "Please answer yes or no.";
#    esac
#  done

#echo "making backup of old vim configration in oldVimBackup folder"
#
#sleep 1s 
#
#cd ~
#
#if [ ! -d ~/oldVimBackup ]; then 
#  mkdir ~/oldVimBackup
#else
#  echo "  A backup folder HOME/oldVimBackup already exists"
#  while true; do
#    read -p "Do you want to delete it (y/n) " yn
#    case $yn in
#      [Yy]* ) rm -r ~/oldVimBackup ; break;;
#      [Nn]* ) echo "please rename oldVimBackup folder and retry" ; exit;;
#      * ) echo "Please answer yes or no.";
#    esac
#  done
#fi
#
#command -v git >/dev/null 2>&1 || { echo >&2 "Git is not installed please install git first.  Aborting."; sleep 1; exit 1; }
#
#if [ -f ~/.vimrc ]; then 
#  mv ~/.vimrc ~/oldVimBackup/vimrc
#fi
#
#if [ -d ~/.vim ]; then 
#  mv ~/.vim ~/oldVimBackup/vim/
#fi

#if [ -d ~/.vimrc ]; then 
#  if [ -L ~/.vimrc ]; then
#    echo "this is a link"
#    #rm "$LINK_OR_DIR"
#  else
#    echo "this is a directory"
#    #rmdir 
#  fi
#fi
