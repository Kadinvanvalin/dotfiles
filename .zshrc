#
# .zshrc
#
# @author kadin van valin
#
zstyle ':autocomplete:*' min-delay 0.50
zstyle ':autocomplete:*' list-lines 16
source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
source ~/.zsh/fzf-tab/fzf-tab.plugin.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
# https://github.com/junegunn/fzf/wiki/Color-schemes
# SpaceCamp
export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
--color=fg:#dedede,bg:#121212,hl:#666666
--color=fg+:#eeeeee,bg+:#282828,hl+:#cf73e6
--color=info:#cf73e6,prompt:#FF0000,pointer:#cf73e6
--color=marker:#f0d50c,spinner:#cf73e6,header:#91aadf'

# Colors.
export CLICOLOR=1
# export CLICOLOR_FORCE=1 # only color output when output is terminal

# Don't require escaping globbing characters in zsh.
unsetopt nomatch

# Nicer prompt.
move_down_five_lines=$'\n\n\n\n\n'
move_up_five_lines=$'\[\033[5A\]'
geerling_prompt="%F{green} %*%F %F{blue}%3~ %F{white}"$'\n'"$ "
export PS1="$geerling_prompt"
export SPARK_HOME=/usr/local/Cellar/apache-spark/3.5.1/libexec
# Custom $PATH with extra locations.
export PATH=/usr/local/lib/ruby/gems/3.0.0/bin:$PATH
export PATH=/usr/local/opt/ruby/bin:$PATH
export PATH=/usr/local/bin:/usr/local/sbin:$HOME/bin:$HOME/go/bin:$PATH
export PATH=/usr/local/git/bin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=$HOME/Library/Python/3.10/bin:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=$HOME/.local/bin/debug:$PATH
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/Applications/IntelliJ IDEA.app/Contents/MacOS:$PATH"
# use gnu by default
export PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
export PATH="/usr/local/opt/gnu-sed/libexec/gnubin:$PATH"

# Bash-style time output.
export TIMEFMT=$'\nreal\t%*E\nuser\t%*U\nsys\t%*S'
# Include alias file (if present) containing aliases for ssh, etc.
if [ -f ~/.aliases ]
then
  source ~/.aliases
fi

if [ -f ~/work/.zprofile ]
then
  source ~/work/.zprofile
fi

if [ -d ~/gitlab.cj.dev/attribution/potentially-useful-code ]; then
  echo "adding bin from potentially useful code"
  export PATH=$HOME/gitlab.cj.dev/attribution/potentially-useful-code/bin:$PATH
fi
eval $(thefuck --alias opps)
eval "$(zoxide init zsh)"
# export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
# . $HOME/.asdf/asdf.sh trying mise instead
# . $HOME/.asdf/completions/asdf.bash
eval "$(/usr/local/bin/mise activate zsh)" # trying mise
# Create tmux by default
if [ -z "$TMUX" ]
then
  tmux attach -t TMUX || tmux new -s TMUX
fi
eval "$(starship init zsh)"
export ZK_NOTEBOOK_DIR=~/github.com/kadinvanvalin/notes
eval $(thefuck --alias)
eval "$(atuin init zsh)"
export TICKET=$(cat ~/.ticket)
echo "current ticket: $TICKET"




