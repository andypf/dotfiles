function fish_prompt
  set -gx __fish_git_prompt_showdirtystate true
  set -gx __fish_git_prompt_showcolorhints true

  echo -n -s (set_color -o cyan)(basename (prompt_pwd)) (__fish_git_prompt) (set_color normal) " "
end
