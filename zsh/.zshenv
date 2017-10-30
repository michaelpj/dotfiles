# let's use XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# XDG for applications
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export TIGRC_USER="$XDG_CONFIG_HOME/tig/tigrc"
#export SPACEMACSDIR="$XDG_CONFIG_HOME/spacemacs"
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh_auth_sock"

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export PATH=$HOME/bin:$PATH
export PATH=$HOME/.local/bin:$PATH

fpath+="${ZDOTDIR:-$HOME}/zfunctions"
