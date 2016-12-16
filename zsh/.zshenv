#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# let's use XDG
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

# XDG for applications
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
export TIGRC_USER="$XDG_CONFIG_HOME/tig/tigrc"
export SPACEMACSDIR="$XDG_CONFIG_HOME/spacemacs"

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

export PATH=/home/$USER/bin:$PATH
export PATH=/home/$USER/.local/bin:$PATH
