
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# ZSH customizations
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)
source $ZSH/oh-my-zsh.sh

# starship is awesome
eval "$(starship init zsh)"
