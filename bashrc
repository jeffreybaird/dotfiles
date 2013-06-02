alias brake='bundle exec rake'
alias bruby='bundle exec ruby'
alias testr='bruby -I lib:test'
alias subl='~/bin/subl'
alias bru='bundle exec rake test:units'

[ -f /opt/boxen/env.sh ] && source /opt/boxen/env.sh

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
export GOPATH=$HOME/go