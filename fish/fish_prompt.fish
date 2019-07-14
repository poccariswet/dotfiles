# Fish git prompt
set __fish_git_prompt_showdirtystate 'yes'
set __fish_git_prompt_showstashstate 'yes'
set __fish_git_prompt_showuntrackedfiles 'yes'
set __fish_git_prompt_showupstream 'yes'
set __fish_git_prompt_color_branch red

# Status Chars
set __fish_git_prompt_char_stagedstate (set_color brwhite)'✔︎'(set_color normal)
set __fish_git_prompt_char_dirtystate (set_color green)'✔︎'(set_color normal)
set __fish_git_prompt_char_untrackedfiles (set_color magenta)'✔︎'(set_color normal)
set __fish_git_prompt_char_stashstate (set_color yellow)'✔︎'(set_color normal)
set __fish_git_prompt_char_upstream_ahead (set_color bryellow)'✔︎'(set_color normal)

function fish_prompt
  set _status $status

  echo -n (set_color cff)(prompt_pwd) '❯❯❯❯'
  if [ $_status -eq 0 ]
    echo -n (set_color blue)'❯ '(set_color normal)
  else
    echo -n (set_color red)'❯ '(set_color normal)
  end
  #git
  set last_status $status
    printf '%s ' (set_color cff)(__fish_git_prompt)
    set_color normal
end
