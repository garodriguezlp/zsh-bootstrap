FZF_DEFAULT_OPTS='--layout=reverse --border --no-height'
FZF_TMUX=1

FZF_CTRL_R_OPTS="--sort --preview 'echo {}' --preview-window down:3:hidden:wrap --bind '?:toggle-preview'"
FZF_CTRL_T_OPTS="--select-1 --exit-0 --preview '(bat --style=numbers --color=always {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
FZF_ALT_C_OPTS="--select-1 --exit-0 --preview '(tree -C {}) 2> /dev/null | head -200'"
