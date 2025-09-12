# Function to toggle debugging mode
#  set -x
toggle_debug() {
  if [[ $- == *x* ]]; then
    set +x
    echo "Debugging mode off"
  else
    set -x
    echo "Debugging mode on"
  fi
}

# Alias to toggle debugging mode
alias debug='toggle_debug'

# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment one of the following lines to change the auto-update behavior
# zstyle ':omz:update' mode disabled  # disable automatic updates
# zstyle ':omz:update' mode auto      # update automatically without asking
# zstyle ':omz:update' mode reminder  # just remind me to update when it's time

# Uncomment the following line to change how often to auto-update (in days).
# zstyle ':omz:update' frequency 13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# You can also set it to another string to have that shown instead of the default red dots.
# e.g. COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"
# Caution: this setting can cause issues with multiline prompts in zsh < 5.7.1 (see #5765)
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# export HOMEBREW_PREFIX=/opt/homebrew/


# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.

# source $HOMEBREW_PREFIX/share/zsh-autosuggestions/zsh-autosuggestions.zsh
plugins=(git zsh-autosuggestions zsh-syntax-highlighting fast-syntax-highlighting zsh-autocomplete fzf-tab)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='nvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch $(uname -m)"

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


#
# .zshrc
#
# @author kadin van valin
#
# zstyle ':autocomplete:*' min-delay 0.50
# zstyle ':autocomplete:*' list-lines 16
# source ~/.zsh/zsh-autocomplete/zsh-autocomplete.plugin.zsh
# source ~/.zsh/fzf-tab/fzf-tab.plugin.zsh
# source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
# https://github.com/junegunn/fzf/wiki/Color-schemes
# SpaceCamp
# export FZF_DEFAULT_OPTS=$FZF_DEFAULT_OPTS'
# --color=fg:#dedede,bg:#121212,hl:#666666
# --color=fg+:#eeeeee,bg+:#282828,hl+:#cf73e6
# --color=info:#cf73e6,prompt:#FF0000,pointer:#cf73e6
# --color=marker:#f0d50c,spinner:#cf73e6,header:#91aadf'

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

export PATH="$HOME/github.com/hedgedoc/cli/bin:$PATH"

# Bash-style time output.
export TIMEFMT=$'\nreal\t%*E\nuser\t%*U\nsys\t%*S'
# Include alias file (if present) containing aliases for ssh, etc.
if [ -f ~/.aliases ]
then
  source ~/.aliases
fi

# if [ -f ~/work/.zprofile ]
# then
#   source ~/work/.zprofile
export DEVDB_HOST=devdb.db.cj.com
export DEVDB_USERNAME=spud
export DEVDB_PORT=1521
export DEVDB_SID=devdb
export BUILD_USER=spud
export CJ_MAIN='~/gitlab.cj.dev/cjdev/main'
alias ll='ls -la'
alias main="cd $CJ_MAIN"
alias mci='mvn clean install -T 1C -Ddelta.skip=true -Dqunit.numThreads=8'
alias qb='mvn clean install -T 1C -Ddelta.skip=true -Dcleanup.skip=true -Dqunit.numThreads=8 -DskipTests -Dtablespaces.skip=true -Dgulp.task=min'
alias qqb='mvn install -T 1C -Ddelta.skip=true -Dcleanup.skip=true -Dqunit.numThreads=8 -DskipTests -Dtablespaces.skip=true -Dgulp.task=min'


alias dmct='docker run -v "$HOME/.m2":/root/.m2 -v $PWD/:/code -w=/code -e DEVDB_SCHEMA -e BUILD_USER -e DEVDB_HOST -e DEVDB_SID -e DEVDB_PORT --rm maven:3.8.1-amazoncorretto-11 mvn clean test -T 1C -Ddelta.skip=true -Dqunit.numThreads=8'
alias dmt='docker run -v "$HOME/.m2":/root/.m2 -v $PWD/:/code -w=/code -e DEVDB_SCHEMA -e BUILD_USER -e DEVDB_HOST -e DEVDB_SID -e DEVDB_PORT --rm maven:3.8.1-amazoncorretto-11 mvn test -T 1C -Ddelta.skip=true -Dqunit.numThreads=8'



export MAVEN_OPTS="-Xss3m -XX:ReservedCodeCacheSize=256m"
export SBT_OPTS='-Xms2G -Xmx2G'
export JAVA_OPTS='-Xms4G -Xmx4G -XX:MetaspaceSize=96M -XX:MaxMetaspaceSize=2096M'
export HEDGEDOC_SERVER="https://notes.cj.dev";
# export PATH="~/work/bin:${PATH}"
# something
# source ~/.jira
export CJ_MAIN=~/gitlab.cj.dev/cjdev/main
export RESIN_HOME=$HOME/resin-4.0.66
export BUILD_SCRIPTS=$CJ_MAIN/bin/build/maven
export RESIN_SCRIPTS=$CJ_MAIN/bin/resin
export RESIN_BIN=$RESIN_HOME/bin
export PATH="$BUILD_SCRIPTS:$RESIN_SCRIPTS:$RESIN_BIN:$PATH"
source ~/gitlab.cj.dev/cjdev/main/bin/build/devdb/devdb_includes.sh
alias startKafkaUi='docker run -it -p 8080:8080 -e KAFKA_CLUSTERS_0_NAME=aws -e KAFKA_CLUSTERS_0_BOOTSTRAPSERVERS=kafka-bootstrap.dba.dev.cjpowered.com:9092 -e KAFKA_CLUSTERS_0_READONLY=true -e KAFKA_CLUSTERS_1_NAME="on-prem prod" -e KAFKA_CLUSTERS_1_BOOTSTRAPSERVERS=kafka101.sjc.cj.com:9092,kafka102.sjc.cj.com:9092,kafka103.sjc.cj.com:9092,kafka104.sjc.cj.com:9092,kafka105.sjc.cj.com:9092,kafka106.sjc.cj.com:9092 -e KAFKA_CLUSTERS_1_READONLY=true -e KAFKA_CLUSTERS_2_NAME="on-prem lab" -e KAFKA_CLUSTERS_2_BOOTSTRAPSERVERS=speedyg102.sj2.cj.com:9092,speedyg103.sj2.cj.com:9092,speedyg104.sj2.cj.com:9092,speedyg105.sj2.cj.com:9092 -e KAFKA_CLUSTERS_2_READONLY=true -e DYNAMIC_CONFIG_ENABLED=true provectuslabs/kafka-ui'



# fi

if [ -d ~/gitlab.cj.dev/attribution/potentially-useful-code ]; then
  echo "adding bin from potentially useful code"
  export PATH=$HOME/gitlab.cj.dev/attribution/potentially-useful-code/bin:$PATH
fi
eval $(thefuck --alias opps)
eval "$(zoxide init zsh)"
# export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
. $HOME/.asdf/plugins/java/set-java-home.zsh
# dont seem to need scalahome export SCALA_HOME=/Users/kadvanv/.asdf/installs/scala/2.12.8
# eval "$(/usr/local/bin/mise activate zsh)" # trying mise
# Create tmux by default
if [ -z "$TMUX" ]
then
  tmux attach -t TMUX || tmux new -s TMUX
fi

export ZK_NOTEBOOK_DIR=~/github.com/kadinvanvalin/notes
eval $(thefuck --alias)
eval "$(atuin init zsh)"
export TICKET=$(cat ~/.ticket)
echo "current ticket: $TICKET"

eval "$(starship init zsh)"
# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/kadvanv/.lmstudio/bin"
export TERM="screen-256color"
# End of LM Studio CLI section

