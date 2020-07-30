#!/bin/bash

# --- ------------------------------------------------------------------------------------------------
# --- config
# --- ------------------------------------------------------------------------------------------------
BREW_HOME="/home/linuxbrew/.linuxbrew"

# --- ------------------------------------------------------------------------------------------------
# --- functions
# --- ------------------------------------------------------------------------------------------------
print_header() {
    local message=$1

    local BOLD_BLUE='\033[1;34m'
    local NO_COLOR='\033[0m'
    echo -e ""
    echo -e "${BOLD_BLUE}=== ============================================================================${NO_COLOR}"
    echo -e "${BOLD_BLUE}=== ${message}${NO_COLOR}"
    echo -e "${BOLD_BLUE}=== ============================================================================${NO_COLOR}"
    echo -e ""
}

load_brew() {
    [[ -f "${BREW_HOME}/bin/brew" ]] && eval $("${BREW_HOME}/bin/brew" shellenv) || return 1
}

is_installed() {
    local tool=$1
    load_brew
    if brew list ${tool} >/dev/null 2>&1 || command -v ${tool} >/dev/null 2>&1 || type ${tool} >/dev/null 2>&1 || hash ${tool} 2>/dev/null; then
        echo "${tool} already installed"
        return 0
    else
        return 1
    fi
}

install_with_brew() {
    local tool=$1
    print_header "$tool installation"

    if ! load_brew; then
        echo "brew could not be loaded"
        return 1
    fi

    brew install "$tool"
}
