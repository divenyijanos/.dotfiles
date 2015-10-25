
# Programs
alias gopen='gnome-open'
alias gvim='gvim -f'
alias stata='/usr/local/stata13/stata'
alias xstata='/usr/local/stata13/xstata'
alias Rstudio='/usr/lib/rstudio/bin/rstudio'
alias matlab='/usr/local/MATLAB/R2012a/bin/matlab -desktop'
alias R='R --no-save'

# Frequent commands
alias e='exit'
alias cd..='cd ..'
alias rm=trash
alias lt='ls -lt'
alias lss='ls -sh'

# Special commands
alias rmspaces="rename 'y/ /_/' *"
alias gen_shiny='touch app.R global.R server.R ui.R'
alias inventory='sort | uniq -c | sort -n'

# SSH
alias ssh_percheron='ssh divenyi@pure.percheron.ceu.edu -p 2222'
alias ssh_r='ssh jdivenyi@10.40.0.44'
alias hds_sql='psql -h 10.22.0.210 -p 5432 -U hds -d hds'
alias si_sql='psql -h 10.22.0.210 -p 5432 -U si_implementations -d smart_insight'
