# Path to your oh-my-zsh installation.
export ZSH=/Users/szymonmentel/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

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
plugins=(git colored-man github pip py brew osx zsh-syntax-highlighting)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/sbin"
export PATH=$PATH:"/Users/szymonmentel/bin"
export PATH=$PATH:"/Library/TeX/texbin/"
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
alias dps="docker ps --format 'table {{.ID}} {{.Names}} {{.Image}} {{.Ports}}'"
alias dc="docker-compose"
alias dcps="docker-compose ps"

# Erlang
ERL_VER=22.0
. /Users/szymonmentel/.kerl/installs/$ERL_VER/activate
alias erl_doc="open ~/.kerl/installs/$ERL_VER/html/index.html"
alias erl_doc_ref="open ~/.kerl/installs/$ERL_VER//lib/doc/reference_manual/users_guide.html"
alias erl_doc_apps="open ~/.kerl/installs/$ERL_VER/lib/doc/applications.html"
alias erl_doc_mods="open ~/.kerl/installs/$ERL_VER/lib/doc/man_index.html"
export ERL_AFLAGS="-kernel shell_history enabled"
export ERL_LIBS="/Users/szymonmentel/opt/erl_libs/recon:/Users/szymonmentel/opt/erl_libs/erlang_term/_build/prod/lib/erlang_term/"

# Elixir
EX_VER=1.8.2
[[ -s "$HOME/.kiex/scripts/kiex" ]] && source "$HOME/.kiex/scripts/kiex"
source $HOME/.kiex/elixirs/elixir-$EX_VER.env
alias ex_doc="mix hex.docs online elixir $EX_VER"

# Learn
alias kb="open -a \"Google Chrome\" ~/learn/knowledge_base/readme.md"
alias til="open -a \"Google Chrome\" ~/learn/til/README.md"

LESS=-Ri

eval "$(direnv hook zsh)"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"


LC_CTYPE=en_US.UTF-8
LC_ALL=en_US.UTF-8

alias edps150="edocker150 ps --format 'table {{.ID}} {{.Names}} {{.Image}} {{.Ports}}'"
alias edps140="edocker140 ps --format 'table {{.ID}} {{.Names}} {{.Image}} {{.Ports}}'"
alias edocker150="docker -H 10.100.0.150"
alias edocker140="docker -H 10.100.0.140"

alias curl_post_json="curl -X POST -H \"Content-Type: application/json\""
alias curl_post_text_plain="curl -X POST -H \"Content-Type: text/plain\""
