#!/bin/bash

set -u

if [ -z "${BASH_VERSION:-}" ]
then
  abort "Bash is required to interpret this script."
fi

function showDepError() {
    echo " - $1 is not installed. Please install it before run this installer." >&2
}

function install() {
    fail_count=0;
    if [[ $OSTYPE == 'darwin'* ]]; then
        if ! [ -x "$(command -v brew)" ]; then
	  showDepError "brew"
          ((fail_count=fail_count+1));
        fi
        if ! [ -x "$(command -v git)" ]; then
            showDepError "git"
            ((fail_count=fail_count+1));
        fi
        if [ $fail_count -gt 0 ]; then
          exit 1
        fi
        echo "Installing Package Manager..."
        rm -Rf ~/.local/share/nvim/site/pack/packer/start/packer.nvim
        git clone --depth 1 https://github.com/wbthomason/packer.nvim ~/.local/share/nvim/site/pack/packer/start/packer.nvim
        echo "Installing ripgrep..."
	brew install ripgrep
        echo "Installing wonderland..."
	git clone https://github.com/ogranadalob/wonderland ~/.config/nvim
    else
	echo "This installer is not ready yet to be used in a non Mac OS"
	echo "Install packer.nvim, ripgrep and clone this repo manually."
    fi
}

install

