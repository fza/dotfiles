#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
# Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before
# running `chsh`.
brew install bash
brew install bash-completion

# Install `wget` with IRI support.
brew install wget --with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
brew install ringojs
brew install narwhal

# Install more recent versions of some OS X tools.
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen
brew install homebrew/php/php56 --with-gmp

# Install font tools.
brew tap bramstein/webfonttools
brew install sfnt2woff
brew install sfnt2woff-zopfli
brew install woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
brew install bfg
brew install binutils
brew install binwalk
brew install cifer
brew install dex2jar
brew install dns2tcp
brew install fcrackzip
brew install foremost
brew install hashpump
brew install hydra
brew install john
brew install knock
brew install nmap
brew install pngcheck
brew install socat
brew install sqlmap
brew install tcpflow
brew install tcpreplay
brew install tcptrace
brew install ucspi-tcp # `tcpserver` etc.
brew install xpdf
brew install xz

# Install other useful binaries.
brew install ack
#brew install exiv2
brew install git
brew install imagemagick --with-webp
brew install lua
brew install lynx
brew install p7zip
brew install pigz
brew install pv
brew install rename
brew install rhino
brew install speedtest_cli
brew install tree
brew install webkit2png
brew install zopfli

# fza - Complete list again
brew install ack
brew install adns
brew install aircrack-ng
brew install ansible
brew install aom
brew install apr
brew install apr-util
brew install argon2
brew install arping
brew install aspell
brew install autoconf
brew install awscli
brew install bash
brew install bash-completion@2
brew install bdw-gc
brew install boost
brew install brotli
brew install c-ares
brew install cairo
brew install composer
brew install coreutils
brew install curl
brew install curl-openssl
brew install dav1d
brew install dnsmasq
brew install docbook
brew install docbook-xsl
brew install docker
brew install docker-compose
brew install docker-compose-completion
brew install ffmpeg
brew install findutils
brew install flac
brew install fontconfig
brew install freetds
brew install freetype
brew install frei0r
brew install fribidi
brew install fswatch
brew install gd
brew install gdbm
brew install gettext
brew install ghostscript
brew install giflib
brew install git
brew install git-lfs
brew install glib
brew install gmp
brew install gnu-getopt
brew install gnu-sed
brew install gnutls
brew install go
brew install gobject-introspection
brew install graphite2
brew install graphviz
brew install grep
brew install gts
brew install guile
brew install harfbuzz
brew install htop
brew install httpd
brew install hydra
brew install icu4c
brew install ilmbase
brew install imagemagick
brew install imapsync
brew install jansson
brew install jasper
brew install jemalloc
brew install jpeg
brew install krb5
brew install lame
brew install ldns
brew install leptonica
brew install libass
brew install libassuan
brew install libb2
brew install libbluray
brew install libcbor
brew install libde265
brew install libdnet
brew install libev
brew install libevent
brew install libffi
brew install libfido2
brew install libgcrypt
brew install libgpg-error
brew install libheif
brew install libiconv
brew install libidn
brew install libidn2
brew install libksba
brew install liblqr
brew install libmetalink
brew install libnet
brew install libogg
brew install libomp
brew install libpng
brew install libpq
brew install libsamplerate
brew install libsndfile
brew install libsodium
brew install libsoxr
brew install libssh
brew install libssh2
brew install libtasn1
brew install libtiff
brew install libtool
brew install libunistring
brew install libusb
brew install libvidstab
brew install libvorbis
brew install libvpx
brew install libxml2
brew install libyaml
brew install libzip
brew install little-cms2
brew install lua
brew install lz4
brew install lzo
brew install mad
brew install mcrypt
brew install mercurial
brew install mhash
brew install moreutils
brew install mysql
brew install mysql-client
brew install ncurses
brew install netcat
brew install netpbm
brew install nettle
brew install nghttp2
brew install nmap
brew install node
brew install npth
brew install nvm
brew install oniguruma
brew install opencore-amr
brew install openexr
brew install openjpeg
brew install openldap
brew install openssh
brew install openssl@1.1
brew install opus
brew install opusfile
brew install p11-kit
brew install p7zip
brew install pango
brew install pcre
brew install pcre2
brew install perl
brew install php
brew install php@7.2
brew install php@7.3
brew install pidof
brew install pinentry
brew install pixman
brew install pkg-config
brew install pngcheck
brew install popt
brew install protobuf
brew install putty
brew install pv
brew install pwgen
brew install python
brew install python3
brew install python@3.8
brew install python@3.9
brew install qt
brew install rav1e
brew install readline
brew install rename
brew install rsync
brew install rtmpdump
brew install rubberband
brew install ruby
brew install s3cmd
brew install screen
brew install sdl2
brew install shared-mime-info
brew install snappy
brew install socat
brew install sox
brew install speex
brew install sphinx-doc
brew install sqlite
brew install srt
brew install ssh-copy-id
brew install subversion
brew install tcpflow
brew install tcpreplay
brew install telnet
brew install terminal-notifier
brew install tesseract
brew install theora
brew install tidy-html5
brew install tinc
brew install tree
brew install unbound
brew install unison
brew install unixodbc
brew install unox
brew install utf8proc
brew install vagrant-completion
brew install vim
brew install watch
brew install webp
brew install wget
brew install x264
brew install x265
brew install xmlto
brew install xvid
brew install xxhash
brew install xz
brew install youtube-dl
brew install zstd

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install node

# Install io.js
brew install iojs

# Remove outdated versions from the cellar.
brew cleanup
