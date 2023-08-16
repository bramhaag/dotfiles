# XDG paths
export XDG_DATA_HOME=$HOME/.local/share
export XDG_CONFIG_HOME=$HOME/.config
export XDG_STATE_HOME=$HOME/.local/state
export XDG_CACHE_HOME=$HOME/.cache

# Do not open WSL in system32 directory
if [[ $PWD = /mnt/c/Windows/System32 ]]; then
  cd ~
fi

# WSL paths to replace 
export WSL_WINDOWS_DRIVE=C
export WSL_WINDOWS_USER=bramh
