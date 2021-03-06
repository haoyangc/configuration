
#export DEFAULT_USER=`whoami`

# Path to your oh-my-zsh installation.
export ZSH=/Users/haoyangc/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="robbyrussell"
ZSH_THEME="ys-simple"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

# User configuration

export PATH="/apollo/env/SDETools/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
export PATH="/Users/haoyangc/workspace/yubikey:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
# Customize
#export PS1="[%*] %d %% "
alias bb='brazil-build'
alias brazil-octane='/apollo/env/OctaneBrazilTools/bin/brazil-octane'
export PROD="titan-timber-1c-c4-256fa91e.us-east-1.amazon.com"
export BETA="titan-timber-2a-corp-b5f88eb2.us-west-2.amazon.com"
#export JAVA_HOME="/Library/Internet Plug-Ins/JavaAppletPlugin.plugin/Contents/Home"
export JAVA_HOME="/Library/Java/JavaVirtualMachines/jdk1.8.0_111.jdk/Contents/Home"

export PATH="/usr/local/mysql/bin:/Users/haoyangc/perl5/bin:$PATH"
export PATH="/opt/local/bin:$PATH" #for vim7.4
PERL5LIB="/Users/haoyangc/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/Users/haoyangc/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/Users/haoyangc/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/Users/haoyangc/perl5"; export PERL_MM_OPT;

export CLOUD="haoyangc.aka.amazon.com"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scriptin"

alias copy-production-heatmap-draft="date +\"%m-%d-%Y\" | xargs -I {} bash -c \"aws s3 sync s3://infra-capacity-planning-production/capacity-planning/dataset/ draft-{} --exclude '*' --include 'DRAFT-*'\""
alias load-production-heatmap-draft="aws s3 sync s3://infra-capacity-planning-production/capacity-planning/dataset/ s3://infra-capacity-planning-development/capacity-planning/dataset/ --exclude '*' --include 'DRAFT-*'"
#alias copy-heatmap-snapshot="date +\"%m-%d-%Y\" | xargs -I {} bash -c \"aws s3 sync s3://infra-capacity-planning-production/capacity-planning/dataset/ draft-{} --exclude '*' --include 'DRAFT-*'\""
alias upload-dev-heatmap-draft="aws s3 sync . s3://infra-capacity-planning-development/capacity-planning/dataset/"


export NVM_DIR="/Users/haoyangc/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

alias daily="ruby ~/configuration/daily/daily.rb"
alias odin-ssh="ssh -L2009:localhost:2009 haoyangc.aka.amazon.com -f -N"

alias fetchAllocationPlanId="bash ~/.fetchAllocationPlanId.sh $1"

git() {
  if [[ $@ == "branch" ]]; then
    command git branch -vv | more
  elif [[ $@ == "lg" ]]; then
    command git log --graph --oneline --decorate --all
  else
    command git "$@"
  fi
}
alias brazil-octane='/apollo/env/OctaneBrazilTools/bin/brazil-octane'
alias startMysqlServer='sudo /etc/init.d/mysql.server restart --skip-grant-tables'
alias register_with_aaa='/apollo/env/AAAWorkspaceSupport/bin/register_with_aaa.py'
alias cfb='ps aux | grep CloudForgeBuild | grep java | sed "s/\s\s*/ /g" | cut -d " " -f 2'
alias kill-cfb='kill -9 $(cfb | awk "{print $1}")'
alias start-cfb='kill-cfb; bb server'
export PATH=/apollo/env/BarkCLI/bin:$PATH

alias brazil-third-party-tool="/apollo/env/BrazilThirdPartyTool/bin/brazil-third-party-tool"
alias timber-dump-example="bark -FetchLogs -OwnerEmail=cloudforge-procurement-timber@amazon.com -LogGroupName=CloudWormService/Prod/d% -s=2017-07-01T00:00:00Z -e=2017-07-01T00:59:00Z -path=/home/haoyangc/timber-dump"

