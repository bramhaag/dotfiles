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


# Replace WSL hash
hash -d "$WSL_WINDOWS_USER"=/mnt/${WSL_WINDOWS_DRIVE:l}/Users/$WSL_WINDOWS_USER"
hash -d "${WSL_WINDOWS_DRIVE}=/mnt/${WSL_WINDOWS_DRIVE:l}"
