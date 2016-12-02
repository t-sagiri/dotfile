set REPO={Repogitories}\dotfile\

copy %USERPROFILE%\.mintty %REPO%
copy %USERPROFILE%\_vimperatorrc %REPO%

copy %~dp0\copy-dotfiles.bat %REPO%local\bat\
