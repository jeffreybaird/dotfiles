alias brake='bundle exec rake'
alias bruby='bundle exec ruby'
alias testr='bruby -I lib:test'
alias subl='~/bin/subl'
alias bru='bundle exec rake test:units'
alias brails='bundle exec rails'
alias be='bundle exec'

__git_ps1 ()
{
    local b="$(git symbolic-ref HEAD 2>/dev/null)";
    if [ -n "$b" ]; then
        printf " (%s)" "${b##refs/heads/}";
    fi
}

GIT_PS1_SHOWDIRTYSTATE=true

export PS1='\[\033[1;36m\]\u at\[\033[00m\] \[\033[32m\]\W\[\033[33m\]$("__git_ps1")\[\033[00m\]$'

export PATH=$PATH:$HOME/Library/Python/2.7/bin

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export GOPATH=$HOME/go
