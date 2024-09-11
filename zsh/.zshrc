
FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"

# ZSH customizations
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(
    git
    kubectl
    )
source $ZSH/oh-my-zsh.sh

# argggghhhhhh
eval $(thefuck --alias argh)

# starship is awesome
eval "$(starship init zsh)"

# fuzzy finder is a must
source <(fzf --zsh)
