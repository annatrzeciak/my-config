# git

gco() {
  git checkout "${1:-master}" && git pull
}
grb() {
  git rebase -i HEAD~"${1:-1}"
}

gnb() {
  git checkout -b "$1"
}

gsa() {              
  git stash apply "${1:-0}" 
}

alias gp='git push origin $(git symbolic-ref --short HEAD)'
alias gpl='git pull origin $(git symbolic-ref --short HEAD)'
alias gmm='git fetch && git merge origin/master'
alias gclean='git clean -fd'  
alias gca='git commit -a -m'  
alias gl='git log --oneline --graph --decorate'  
alias gs='git stash'  

# npm
alias ni='npm i'
alias ns='npm run serve'
alias nb='npm run build'
alias nd='npm run dev' 
alias nsr='npm run server' 
alias nl='npm run lint' 
alias nt='npm test' 
alias np='npm run production' 

