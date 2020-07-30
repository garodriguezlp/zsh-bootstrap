#!/bin/bash

# --- ------------------------------------------------------------------------------------------------
# --- commons loading
# --- ------------------------------------------------------------------------------------------------
script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" &>/dev/null && pwd)"
source "$script_dir/commons.sh"

# --- ------------------------------------------------------------------------------------------------
# --- installation
# --- ------------------------------------------------------------------------------------------------
print_header "setting up secrets"
SECRETS_FILE="$HOME/.secrets"

if [[ -e "$SECRETS_FILE"  ]]; then
    echo "==> Secrets file has already been created"
else
    echo "==> Creating secrets file"
    read -s -p "GITHUB_TOKEN: " github_token
    echo "# A convenient and unsecured place to store sensitive info \_(ツ)_/¯  BE CAREFUL!!" >> $SECRETS_FILE
    echo "" >> $SECRETS_FILE
    echo "export GITHUB_TOKEN=$github_token" >> $SECRETS_FILE
    chmod 755 $SECRETS_FILE
fi