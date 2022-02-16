#!/bin/bash
tmp_dir=$(mktemp -d -t memepaste-XXXXXXXXXX)
echo "Using $tmp_dir as the install directory"
cd $tmp_dir

echo "Checking if brew is installed..."
if [[ ! -z "$(command -v brew)" ]]; then
    echo "brew is installed"
    brew_installed=1
else
    brew_installed=0
fi

echo "downloading the impbcopy.m file from github"
curl https://raw.githubusercontent.com/gcarrarom/memepaste/master/impbcopy.m --output impbcopy.m
if [[ -f "impbcopy.m" ]];then
    echo "Compiling it"
    gcc -Wall -g -O3 -ObjC -framework Foundation -framework AppKit -o impbcopy impbcopy.m
    if [[ $brew_installed == "1" ]]; then
        echo "Checking where the software should be moved to."
        homebrew_path=$(which brew)
        bin_path=$(echo ${homebrew_path%brew})
    else
        bin_path="/usr/local/bin/"
        echo "Using the default path ($bin_path) as Brew is not installed"
    fi
    echo "moving the binary to the $bin_path folder"
    mv ./impbcopy $bin_path
else
    >&2 echo "There was an error downloading the impbcopy.m file!"
    exit 10
fi

if [[ $brew_installed == "1" ]]; then
    echo "Installing jq"
    brew install jq
else
    echo "Brew is not installed, please ensure jq is installed for this workflow to work properly."
    echo "If you can't install jq, you can still use the 'memeold' command, it should still work."
fi