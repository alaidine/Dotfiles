#!/usr/bin/env bash

git clone --bare http://github.com/alaidine/Dotfiles.git $HOME/Dotfiles
function config {
   /usr/bin/git --git-dir=$HOME/Dotfiles/ --work-tree=$HOME $@
}
mkdir -p .config-backup
config checkout
if [ $? = 0 ]; then
echo "Checked out config.";
else
   echo "Backing up pre-existing dot files.";
   config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | xargs -I{} mv {} .config-backup/{}
fi;
config checkout
config config status.showUntrackedFiles no
