#!/bin/bash

FORMULAE=(
    # Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
    coreutils
    moreutils
    findutils
    gnu-sed --default-names
    # Note: don’t forget to add `/usr/local/bin/bash` to `/etc/shells` before running `chsh`.
    bash
    bash-completions
    wget --enable-iri
    vim --override-system-vi
    homebrew/dupes/grep
    homebrew/dupes/screen
    homebrew/php/php55 --with-gmp
    bfg
    binwalk
    dex2jar
    dns2tcp
    fcrackzip
    foremost
    hashpump
    hydra
    john
    knock
    nmap
    pngcheck
    sqlmap
    tcpflow
    tcpreplay
    tcptrace
    ucspi-tcp
    xpdf
    xz
    ack
    git
    imagemagick --with-webp
    lynx
    node
    p7zip
    pigz
    pv
    rename
    rhino
    tree
    webkit2png
    zopfli
    homebrew/versions/lua52
)

brew update
brew upgrade

for formula in "${FORMULAE[@]}"; do
    brew install $formula
done

brew cleanup
