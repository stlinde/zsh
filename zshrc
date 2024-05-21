# Sebastian Hempel Linde's ZSH config
###############################################################################
#
# Alias
#
###############################################################################

alias vi=nvim

###############################################################################
#
# History
#
###############################################################################

export HISTFILE="$DOTFILES/zsh/.zhistory"
export HISTSIZE=10000
export SAVEHIST=10000

setopt hist_ignore_all_dups

source "$HOME/.rye/env"

###############################################################################
#
# Completion
#
###############################################################################

# Builtin
autoload -U compinit; compinit
_comp_options+=(globdots)       # Include hidden files

source $DOTFILES/zsh/completions.zsh

# Plugin
fpath=($DOTFILES/zsh/plugins/zsh-completions/src $fpath)

. $HOME/.rye/env

###############################################################################
#
# Prompt
#
###############################################################################

fpath+=($DOTFILES/zsh/plugins/pure)

autoload -U promptinit; promptinit
prompt pure

###############################################################################
#
# Syntax Highlighting
#
###############################################################################

# Must be sourced at the buttom
source $DOTFILES/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
