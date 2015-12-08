#!/bin/bash

# vimがユーザー環境にしかインストールできない場合の措置が書いてある
# 特にその必要がなければ使わなくてもいい
#ln -s _bash_profile ~/.bash_profile

# 環境によって変わりそうだから、追記にしておく
# 特にその必要がなければ使わなくてもいい
# cat _bashrc >> ~/.bash_profile

# git
ln -s .gitconfig ~/.gitconfig

# vim
# -neobundleでプラグインを管理するためインストール
curl https://raw.githubusercontent.com/Shougo/neobundle.vim/master/bin/install.sh | sh
ln -s ~/dotfile/_vimrc ~/.vimrc

# sqlite
# 特にその必要がなければ使わなくてもいい
#ln -s _sqliterc ~/.sqliterc
