# Configuration for Emacs 2.8.x

[![Build Status][actions badge]][actions link]

This repository contains my GNU Emacs configuration.
This configuration should be contains all necessary for comfortable working with PHP lang & PHP frameworks / C, C++, C# / Java / Python / Shell / Zephir lang.

## Prerequisites

Ensure, that you already have [Fira Code][font link] font, or [install][font wiki] it.

If you using Mac OS X, you should be install *coreutils* (required for Dired to use "gls" intead of "ls")

```bash
brew install coreutils

which gls
/usr/local/bin/gls
```

## Download & installation

Emacs can be installed on MacOS using Homebrew.

```sh
brew tap daviderestivo/emacs-head
brew install emacs-head --HEAD --with-cocoa

ln -sfv /usr/local/opt/emacs-head@28/Emacs.app /Applications
```

Next, just clone this repository...

```sh
git clone https://github.com/AlexNDRmac/.emacs.d ~/.emacs.d
```

And... start using Emacs everyday!

```sh
emacs
```

## License

This project is open source software licensed under the GNU General Public Licence version 3.

[▲ back to top](#configuration-for-emacs-26x)

[actions badge]: https://github.com/AlexNDRmac/.emacs.d/workflows/build/badge.svg
[actions link]: https://github.com/AlexNDRmac/.emacs.d/actions
[font link]: https://github.com/tonsky/FiraCode
[font wiki]: https://github.com/tonsky/FiraCode/wiki
