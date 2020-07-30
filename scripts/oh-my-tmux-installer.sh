#!/bin/bash

# --- ------------------------------------------------------------------------------------------------
# --- commons loading
# --- ------------------------------------------------------------------------------------------------
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
source "${script_dir}/commons.sh"

# --- ------------------------------------------------------------------------------------------------
# --- functions
# --- ------------------------------------------------------------------------------------------------
install_oh_my_tmux() {
    local oh_my_tmux_location=$1
    git clone https://github.com/gpakosz/.tmux.git "$oh_my_tmux_location"
    ln -s -f "$oh_my_tmux_location/.tmux.conf" "$HOME/.tmux.conf"
}
# --- ------------------------------------------------------------------------------------------------
# --- script
# --- ------------------------------------------------------------------------------------------------
print_header "oh-my-tmux"

oh_my_tmux_location="$HOME/.tmux"
if is_installed "tmux" && [[ ! -d "$oh_my_tmux_location" ]]; then
    install_oh_my_tmux "$oh_my_tmux_location"
fi
