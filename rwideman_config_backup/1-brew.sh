#!/bin/bash
# xcode CLI installation
# xcode-select --install

# install homebrew and cask
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
# brew install caskroom/cask/brew-cask
# brew tap homebrew/cask-fonts

# GNU utilities...
#   https://www.topbug.net/blog/2013/04/14/install-and-use-gnu-command-line-tools-in-mac-os-x/
# add below line to .bashrc and .zshrc
#   export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
# add below to the MANPATH environmental variable
#   $HOMEBREW_PREFIX/opt/coreutils/libexec/gnuman

brew install autoconf
brew install awscli
brew install bash
brew install binutils
brew install cmake
brew install coreutils
brew install ctags
brew install diffutils
brew install ed --with-default-names
brew install file-formula
brew install findutils --with-default-names
brew install gawk
brew install gdbm
brew install gettext
brew install git
brew install gnu-indent --with-default-names
brew install gnu-sed --with-default-names
brew install gnu-tar --with-default-names
brew install gnu-which --with-default-names
brew install gnutls
brew install gpatch
brew install grep --with-default-names
brew install gzip
brew install icu4c
# brew install kubernetes-cli
brew install less
brew install libevent
brew install libidn2
brew install libunistring
brew install m4
brew install make
brew install mas
# brew install mycli
# brew install mysql
brew install ncurses
brew install node
brew install openssh
brew install openssl
brew install pcre
brew install pcre2
brew install perl
brew install pkg-config
# brew install python
brew install rbenv
brew install readline
brew install rsync
brew install ruby-build
brew install screen
#brew install sqlite
brew install svn
brew install the_silver_searcher
# brew install tmux
brew install tree
brew install unzip
brew install vim --override-system-vi
brew install watch
brew install wdiff --with-gettext
brew install wget
brew install xz
brew install zsh
brew install 937984704 #amphetamine
brew install 410628904 #wunderlist
brew install reattach-to-user-namespace

# brew cask install
brew cask install alfred
brew cask install appcleaner
brew cask install avast-security
brew cask install beyond-compare
brew cask install boom-3d
brew cask install bricksmith
brew cask install calibre
brew cask install db-browser-for-sqlite
brew cask install docker
brew cask install drawio
brew cask install dropbox
brew cask install etrecheckpro
brew cask install evernote
brew cask install firefox
brew cask install font-source-code-pro
brew cask install gitHub
brew cask install google-backup-and-sync
brew cask install google-chrome
brew cask install istat-menus
brew cask install iterm2
brew cask install jd-gui
brew cask install karabiner-elements
brew cask install keka
brew cask install keyboard-maestro
brew cask install kindle
brew cask install leela
brew cask install macvim
brew cask install marshallofsound-google-play-music-player
brew cask install minikube
brew cask install moom
brew cask install musescore
brew cask install mysqlworkbench
brew cask install openemu
brew cask install path-finder
brew cask install pdfsam-basic
brew cask install pycharm
brew cask install sabaki
brew cask install sequel-pro
brew cask install sourcetree
brew cask install steam
brew cask install sublime-text
brew cask install switchresx
brew cask install tuxera-ntfs
brew cask install tuxguitar
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc
brew cask install vscodium

# unknown or manual install
#chordmate
#e-sword x
#lego mindstorms education ev3
#macupdate desktop
#scratch 3
#shredder classic 5
#videopad