# Git aliases

# Delete merged branches
alias gdmb 'git branch --merged master | grep -v master | xargs git branch -d'
alias gddb 'git branch --merged develop | grep -v develop | xargs git branch -d'

alias gadd 'git add -p'

# Open branch on browser
alias go 'git open'


# Push
function gpu
  set -l CURRENTBRANCH (eval 'git rev-parse --abbrev-ref HEAD')
  git push --set-upstream origin $CURRENTBRANCH
end
funcsave gpu
alias gpugo 'gpu; go'
alias gpuf 'git push -f'

# Rebase
alias grdev 'git rebase develop'
alias grcont 'git add . ; git rebase --continue'
alias grskip 'git rebase --skip'
alias grabort 'git rebase --abort'

function grd
  set -l CURRENTBRANCH (eval 'git rev-parse --abbrev-ref HEAD')
  gcd
  git pull
  git co $CURRENTBRANCH
  grdev
end
funcsave grd

alias gst 'git status'

# Pull
alias gcm 'git checkout master; git pull'
alias gcd 'git checkout develop; git pull'

# Yarn
alias yst 'yarn start'
alias ybd 'yarn build'
alias ytt 'yarn test'
alias ytw 'yarn test:watch'
alias ysb 'yarn storybook'
alias ypuma 'yarn vrun:puma'

# Vagrant
alias vu 'vagrant up'
alias vh 'vagrant halt'

alias jks 'jekyll serve --watch'

alias rakem 'bundle exec rake db:migrate'
alias rakes 'bundle exec rake db:seed'
alias rakesl 'bundle exec rake db:schema:load'
alias rakeall 'bundle exec rake db:create db:migrate db:seed db:test:prepare'
alias rs 'spring rails s'
alias rc 'spring rails c'
