if status is-interactive
    # Commands to run in interactive sessions can go here
end
source $HOME/.asdf/asdf.fish
source $HOME/.asdf/completions/asdf.fish

thefuck --alias opps | source
zoxide init fish | source

fish_add_path /usr/local/bin/
fish_add_path $HOME/Library/Python/3.10/bin
fish_add_path $HOME/.local/bin

alias dbstart='nohup VBoxHeadless --startvm "Oracle11g32" &> /dev/null &'
alias dbstop='VBoxManage controlvm Oracle11g32 poweroff'
set DEVDB_HOST devdb.db.cj.com
set DEVDB_USERNAME spud
set DEVDB_PORT 1521
set DEVDB_SID devdb
set BUILD_USER spud
alias main='cd ~/gitlab.cj.dev/cjdev/main'
alias ts='tmux-sessionizer'
fish_add_path ~/.cargo/bin
