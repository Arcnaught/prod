# Productivity commands
alias t="touch"
alias cl="clear"
alias upd="sudo apt update && sudo apt full-upgrade"

# Git
alias gi="git status"
alias gd="git diff"
alias br="git branch"
alias ch="git checkout"
alias gp="git pull"
alias gl="git log"
alias gr="git rebase"
alias gia="git add *"
alias gf="git reset"
alias stash="git stash"
alias pop="git stash pop"
alias bp="git push origin HEAD"
alias cm="git checkout master && git pull origin master"

# Autocompletion
if [ -f "/usr/share/bash-completion/completions/git" ]; then
  source /usr/share/bash-completion/completions/git
  __git_complete gia _git_add
  __git_complete ch _git_checkout
  __git_complete gp _git_pull
  __git_complete gr _git_rebase
  __git_complete gd _git_diff
  __git_complete gb _git_branch
  __git_complete gi _git_status
  __git_complete gl _git_log
  __git_complete gf _git_reset
  __git_complete stash _git_stash
  __git_complete pop _git_stash
else
  echo "Warning: Couldn't load bash autocompletions!"
fi

# Update, commit, yolo.
# unalias gm
gm() {
    git add -u && git add * && git commit -m "$*"
}
    # local comment="$*"
    # sed -e 's/^"//'  -e 's/"$//' <<< $comment

