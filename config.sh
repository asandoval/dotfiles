#!/bin/zsh

echo "Setting up your Mac..."

if op inject -i zshenv.tmpl -o ./zsh/.zshenv; then
    # currently this prints if "N" is selected
    echo "1Password variables injected successfully for .zshenv"
    if stow zsh; then
        echo "Zsh environment is set up."
    else
        echo "Cannot stow zsh; environment not setup."
    fi
else
    echo "Zsh environment is not set up."
fi


if stow ssh; then
    echo "SSH config is set up."
else
    echo "SSH config is not set up."
fi
