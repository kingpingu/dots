# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=10000
SAVEHIST=10000
setopt autocd extendedglob
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/odin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Set Prompt
PROMPT='%F{cyan}%n@%m %1~ %f$ '

# Set Timezone
TZ=/etc/localtime

# Load aliases from ~/.aliases
source $HOME/.aliases

# Automatically list on change directory
cd() {
	builtin cd "$@" && la
}
