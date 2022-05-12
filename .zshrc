# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:/Applications/Sublime\ Merge.app/Contents/SharedSupport/bin

# Path to your oh-my-zsh installation.
# export ZSH="/Users/jdivenyi/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# ZSH_THEME="af-magic"
ZSH_THEME="simple"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  brew
  z
  virtualenvwrapper
)

source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="subl ~/.zshrc"
alias ohmyzsh="subl ~/.oh-my-zsh"


# My aliases ------------------------------------------------------------------

source $HOME/.aliases

# Key binding -----------------------------------------------------------------
bindkey "^U" backward-kill-line

# My functions -----------------------------------------------------------------

# packrat Rprofile
function gen_packrat_rprofile
{
    printf 'if (file.exists("~/.Rprofile")) source("~/.Rprofile")

    #### -- Packrat Autoloader -- ####
    source("packrat/init.R")
    #### -- End Packrat Autoloader -- ####' > .Rprofile
}

function use_default_rstudio_settings
{
    mv ~/.config/rstudio/rstudio-prefs.json ~/.backup-rstudio-prefs.json
    mv ~/.Rprofile ~/.backup-rprofile
    echo 'Rstudio uses default settings'
}

function use_my_rstudio_settings
{
    mv ~/.backup-rstudio-prefs.json ~/.config/rstudio/rstudio-prefs.json
    mv ~/.backup-rprofile ~/.Rprofile
    echo 'Rstudio uses my personal settings'
}

function link_db_configs
{
    ln -s ../db_config.yml .
    ln -s ../meta_db_config.yml .
    echo '*.yml' >> .gitignore
}

function update_dotfiles
{
    /bin/cp -r ~/.hammerspoon ~/.R ~/.rstudio-desktop ~/bin/.dotfiles/
    /bin/cp ~/.zshrc ~/.aliases ~/.zpreztorc ~/.gitconfig ~/.Rprofile ~/bin/.dotfiles/
    /bin/cp ~/.zprezto/modules/prompt/functions/prompt_jerome_setup ~/bin/.dotfiles/
}

# Settings ---------------------------------------------------------------------
export PATH=$PATH:~/bin
setopt rm_star_silent
export SRVB=divenyi@pure.percheron.ceu.hu:/srv/dropbox/divenyi_sandbox
export SRVE=divenyi@pure.percheron.ceu.hu:/home/divenyi/education

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# node
export NVM_DIR="$HOME/.nvm"

# R locale fix (http://stackoverflow.com/questions/9689104/installing-r-on-mac-warning-messages-setting-lc-ctype-failed-using-c)
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# virtualenv
export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python3
export WORKON_HOME=$HOME/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

# multiple mv
autoload -U zmv
alias mmv='noglob zmv -W'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
