#!/bin/bash

# --- ------------------------------------------------------------------------------------------------
# --- commons loading
# --- ------------------------------------------------------------------------------------------------
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
source "$script_dir/commons.sh"

# --- ------------------------------------------------------------------------------------------------
# --- installation
# --- ------------------------------------------------------------------------------------------------
echo "==> Installing zsh..."
install_with_brew zsh

echo ""
echo "==> Setting zsh as login shell..."
zsh_location=$(which zsh)
[[ -z $(grep "$zsh_location" /etc/shells) ]] && sudo sh -c "echo ${zsh_location} >> /etc/shells"
sudo sh -c "chsh -s ${zsh_location} $(whoami)"
