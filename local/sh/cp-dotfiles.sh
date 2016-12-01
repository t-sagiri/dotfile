#!/bin/sh

repo="{path}/dotfile/"

# ~以下のバックアップ対象
HOME_TARGETS=".bash_logout .bashrc .gitconfig .profile .vimrc"

for file in $HOME_TARGETS
do
  cp ~/$file $repo
done

cp -r .vim/plugin/ $repo/.vim/
cp .vim/.vimrc.* $repo/.vim/

cp ~/local/sh/cp-dotfiles.sh $repo/local/sh/
