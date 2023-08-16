#!/bin/sh
export WSL_WINDOWS_DRIVE=c
export WSL_WINDOWS_USER=bramh


# add user-specific executables to PATH
export PATH="$(prepend_path "$PATH" "$HOME/.local/bin")"