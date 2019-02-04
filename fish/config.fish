set -g fish_greeting ''

set -x EDITOR (which vim)
set -x FZF_DEFAULT_COMMAND find

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

[ -f /usr/local/share/autojump/autojump.fish ]; and . /usr/local/share/autojump/autojump.fish

egrep "^export " ~/.profile | while read e
  set var (echo $e | sed -E "s/^export ([A-Z_]+)=(.*)\$/\1/")
  set value (echo $e | sed -E "s/^export ([A-Z_]+)=(.*)\$/\2/")

  # remove surrounding quotes if existing
  set value (echo $value | sed -E "s/^\"(.*)\"\$/\1/")

  if test $var = "PATH"
    # replace ":" by spaces. this is how PATH looks for Fish
    set value (echo $value | sed -E "s/:/ /g")

    # use eval because we need to expand the value
    eval set -xg $var $value

    continue
  end

  # evaluate variables. we can use eval because we most likely just used "$var"
  set value (eval echo $value)

  #echo "set -xg '$var' '$value' (via '$e')"
  set -xg $var $value
end
