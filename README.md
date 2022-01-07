# config-files


Set up from clean system:
----

`git init --bare $HOME/.cfg`

`alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'`

`config config --local status.showUntrackedFiles no`

`config remote add origin git@github.com:Tkdefender88/config-files.git`

`rm ~/.bashrc`

`config pull origin master`


Adding configuration to repository:
----

`config add /path/to/file`

`config commit -m "A Short Message"`

`config push`
