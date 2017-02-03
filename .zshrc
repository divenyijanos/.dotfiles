#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# set Path
# export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/usr/local/sbin:/sbin:/opt/X11/bin:/Library/TeX/texbin:$HOME/bin:/Applications/Stata/StataMP.app/Contents/MacOS"
PATH=$PATH:$HOME/bin:/Applications/Stata/StataMP.app/Contents/MacOS


source $HOME/.aliases

# keybinding
bindkey "^U" "backward-kill-line"


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
    mv ~/.rstudio-desktop ~/.backup-rstudio-desktop
    mv ~/.Rprofile ~/.backup-rprofile
    echo 'Rstudio uses default settings'
}

function use_my_rstudio_settings 
{
    rm -r ~/.rstudio-desktop
    mv ~/.backup-rstudio-desktop ~/.rstudio-desktop
    mv ~/.backup-rprofile ~/.Rprofile
    echo 'Rstudio uses my personal settings'
}


# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

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
