#!/bin/sh

# add user-specific executables to PATH
export PATH="$(prepend_path "$PATH" "$HOME/.local/bin")"