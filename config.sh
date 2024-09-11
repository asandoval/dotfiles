#!/bin/zsh

echo "Setting up your Mac..."

function install_homebrew_formula () {
    formulas=(
        fzf
        docker
    )
    for x in ${formulas}; do brew install $x;done
}


confirm_brew() {
  read -q "brew?Install homebrew formula (y/N) "
  if [ $? -eq 0 ]; then
    # Positive confirmation, proceed with action
    install_homebrew_formula
  else
    # Negative confirmation, abort action
    echo "Skipping brew installs."
  fi
}

confirm_brew

if op inject -i zshenv.tmpl -o ./zsh/.zshenv; then
    # currently this prints if "N" is selected
    print "1Password variables injected successfully for .zshenv"
    if stow zsh; then
        print "Zsh environment is set up."
    else
        print "Cannot stow zsh; environment not setup."
    fi
else
    print "Zsh environment is not set up."
fi


if stow ssh; then
    echo "SSH config is set up."
else
    echo "SSH config is not set up."
fi


