set -g fish_greeting ''

set -x EDITOR (which vim)

set -g fish_user_paths "/usr/local/bin" $fish_user_paths
set -g fish_user_paths "/usr/local/sbin" $fish_user_paths

alias ls='ls -A'

alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gd='git diff'
alias gpull='git pull --rebase'

function fish_user_key_bindings
  bind \e.       'history-token-search-backward'
  bind \e\[1\;9A 'history-token-search-backward'
  bind \e\[1\;9B 'history-token-search-forward'
  bind \e\[1\;9C 'forward-word'
  bind \e\[1\;9D 'backward-word'
end
