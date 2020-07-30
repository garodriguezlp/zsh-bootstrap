#!/bin/bash

# --- ------------------------------------------------------------------------------------------------
# --- commons loading
# --- ------------------------------------------------------------------------------------------------
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
source "$script_dir/commons.sh"

# --- ------------------------------------------------------------------------------------------------
# --- functions
# --- ------------------------------------------------------------------------------------------------
install_brew() {
    echo ""
    echo "==> Installing brew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

    echo ""
    echo "==> installing build-essential"
    sudo apt-get install -y build-essential patch ruby-dev zlib1g-dev liblzma-dev

    echo ""
    echo "installing gcc"
    load_brew
    brew install gcc
}

# --- ------------------------------------------------------------------------------------------------
# --- main
# --- ------------------------------------------------------------------------------------------------
print_header "brew installation"

if ! load_brew; then
    install_brew
else
    echo "brew is already installed"
fi
