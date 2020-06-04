#!/bin/bash
tmp_dir=$(mktemp -d -t memepaste-XXXXXXXXXX)
echo "Using $tmp_dir as the install directory"
cd $tmp_dir
echo "downloading the impbcopy.m file from github"
curl https://raw.githubusercontent.com/gcarrarom/memepaste/master/impbcopy.m --output impbcopy.m
if [[ -f "impbcopy.m" ]];then
    echo "Compiling it"
    gcc -Wall -g -O3 -ObjC -framework Foundation -framework AppKit -o impbcopy impbcopy.m
    echo "moving the binary to the /usr/local/bin/ folder"
    mv ./impbcopy /usr/local/bin/
else
    >&2 echo "There was an error downloading the impbcopy.m file!"
    exit 10
fi
