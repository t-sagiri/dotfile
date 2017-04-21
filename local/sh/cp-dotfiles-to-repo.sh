#!/bin/sh
# gitリポジトリにあるものと実際に動いているファイルを分けるために、
# 別ディレクトリにあるリポジトリへ現状をコピー
REPO="local/src/dotfile/"

# ~以下のバックアップ対象
HOME_TARGETS=".bash_logout .bashrc .gitconfig .profile .vimrc"

# スクリプトファイルもバックアップ
SH_DIR="local/sh/"

cd ~

for FILE in $HOME_TARGETS
do
    if [ -e $FILE ]
    then
        cp $FILE $REPO
    fi
done

cp -R .vim/plugin/ $REPO.vim/
cp .vim/.vimrc.* $REPO.vim/
cp -R .vim/ftpugin $REPO.vim/

# このスクリプトファイルとかもコピー
cp "${SH_DIR}/cp-dotfiles-to-repo.sh" "${REPO}local/sh/"
cp "${SH_DIR}/cp-dotfiles-to-home.sh" "${REPO}local/sh/"
