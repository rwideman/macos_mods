!#/bin/bash

# install XCode CLI Tools
xcode-select --install

# install homebrew
if test ! $(which brew); then
    /bin/bash -c \
"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
fi

# add casks for brew
brew upgrade
brew tap caskroom/cask
brew tap homebrew/cask
brew tap AdoptOpenJDK/openjdk
brew upgrade

PROD=$(softwareupdate -l | grep "\*.*Command Line" | head -n 1 | awk -F"*" '{print $2}' | sed -e 's/^ *//' | tr -d '\n') || true

if [[ ! -z "$PROD" ]]; then
  softwareupdate -i "$PROD" --verbose
fi

echo "install gnu tools and utilities"
# GNU core utilities
brew install coreutils
brew install gnu-sed
brew install gnu-tar
brew install gnu-indent
brew install gnu-which
brew install findutils

PACKAGES=(
    autoconf
    awscli
    bash
    berkeley-db
    binutils
    coreutils
    csvkit
    diffutils
    ed
    gawk
    gdbm
    gettext
    git
    gmp
    gnu-indent
    gnu-sed
    gnu-tar
    gnu-which
    grep
    jq
    ldns
    less
    libcbor
    libfido2
    libidn2
    libunistring
    libyaml
    lua
    m4
    make
    mas
    mpdecimal
    mpfr
    ncurses
    netcat
    nmap
    oniguruma
    openssh
    openssl@1.1
    packer
    pbc
    pcre
    pcre2
    perl
    pkg-config
    python@3.9
    rbenv
    readline
    ruby
    ruby-build
    socat
    sqlite
    telnet
    tree
    unzip
    vim
    wdiff
    wget
    xz
    youtube-dl
)

echo "Installing packages..."
brew install ${PACKAGES[@]}

CASKS=(
    adoptopenjdk11
    alfred
    appcleaner
    boom-3d
    dropbox
    evernote
    firefox
    gas-mask
    google-chrome
    guitar-pro
    hyperdock
    istat-menus
    iterm2
    keka
    keyboard-maestro
    kindle
    openemu
    pdfsam-basic
    proxifier
    royal-tsx
    slack
    sublime-text
    switchresx
    vagrant
    virtualbox
    vscodium
    webex-meetings
    weka
    zoom
)

echo "Installing cask apps..."
sudo -u $SUDO_USER brew install --cask ${CASKS[@]}

echo "Installing Python packages..."
sudo -u $SUDO_USER pip3 install --upgrade pip
sudo -u $SUDO_USER pip3 install --upgrade setuptools

PYTHON_PACKAGES=(
    ipython
    virtualenv
    virtualenvwrapper
)
sudo -u $SUDO_USER pip3 install ${PYTHON_PACKAGES[@]}

echo "Installing MAS (Mac App Store) apps..."
sudo -u $SUDO_USER mas install 557090104   # Clearview
sudo -u $SUDO_USER mas install 1274495053  # Microsoft To Do
sudo -u $SUDO_USER mas install 409203825   # Numbers
sudo -u $SUDO_USER mas install 1173191046  # GuitarLayers
sudo -u $SUDO_USER mas install 937984704   # Amphetamine
sudo -u $SUDO_USER mas install 409201541   # Pages
sudo -u $SUDO_USER mas install 409183694   # Keynote
sudo -u $SUDO_USER mas install 1171417699  # Guitar Gravitas
sudo -u $SUDO_USER mas install 886290397   # Weather Dock
sudo -u $SUDO_USER mas install 412762796   # ChordMate
sudo -u $SUDO_USER mas install 419330170   # Moom

echo "Cleaning up..."
brew cleanup

echo "brew update"
brew update
echo "brew upgrade"
brew upgrade
echo "brew doctor"
brew doctor

echo "MacOSX bootstrapping done"

#Manually install the following:
# MS Office for Mac 2019
# Neck Diagrams 2.x
# Guitar Pro 7.x
# Path Finder 10.x
# Avast Security
# Docker Desktop for Mac
# Cisco AnyConnect 4.9