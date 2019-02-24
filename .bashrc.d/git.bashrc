git_branch() {
  CMD=$(git describe --contains --all HEAD 2>/dev/null)
  [[ -n $CMD ]] && echo " ($CMD)"
}

acolor() {
  [[ -n $(git status --porcelain=v2 2>/dev/null) ]] && echo 31 || echo 33
}

export PS1="\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[\$(acolor)m\]\$(git_branch)\[\033[00m\]\$ "
