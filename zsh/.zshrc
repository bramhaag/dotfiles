# zsh history
HISTSIZE=10000
SAVEHIST=10000


# p10k instant prompt
[[ ! -f "$XDG_CACHE_HOME/p10k-instant-prompt-${(%):-%n}.zsh" ]] || source "$XDG_CACHE_HOME/p10k-instant-prompt-${(%):-%n}.zsh"


# zshoptions
setopt extended_glob \
    glob_dots \
    chase_dots \
    hist_ignore_space \
    hist_ignore_dups \
    share_history

unsetopt beep

# zap
source "$XDG_DATA_HOME/zap/zap.zsh"


# aliases
plug "$XDG_CONFIG_HOME/zsh/aliases.zsh"


# theme
plug 'romkatv/powerlevel10k'
plug "$XDG_CONFIG_HOME/zsh/p10k.zsh"


# auto completion
plug 'zsh-users/zsh-autosuggestions'


# misc
plug 'zap-zsh/fzf'
plug 'zap-users/zsh-syntax-highlighting'


# key bindings
bindkey -v
bindkey '^[[C' autosuggest-accept  # right arrow
bindkey '^J'   autosuggest-execute # ctrl + enter


# Shorten WSL paths
if command -v cmd.exe &> /dev/null; then 
  win_username="$(winvar username)"
  win_user_path="$(winvar userprofile)"

  hash -d "$win_username=$(wslpath $win_user_path)"

  for win_drive in ""a b c d e f g h i j k l m n o p q r s t u v w x y z""; do
    [[ ! -r "/mnt/$win_drive" ]] || hash -d "$win_drive=/mnt/${win_drive}"
  done

  unset win_username win_user_path win_drive
fi