# Configure XDG directories
# https://specifications.freedesktop.org/basedir-spec/latest/
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"


# Export additional environment variables
prepend_path() {
    p="$1"; shift
    for a in "$@"; do
        case ":$p:" in
            *:"$a":*) ;;
            *) p="$a${p:+:$p}" ;;
        esac
    done
    printf '%s' "$p"
    unset p a
}

source "$XDG_CONFIG_HOME/zsh/exports.zsh"

unset -f prepend_path


# Do not open WSL in system32 directory
if [[ $PWD = /mnt/*/Windows/System32 ]]; then
  cd ~
fi
