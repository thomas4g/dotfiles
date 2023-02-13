if [ -f ~/.bashrc ]; then
    . ~/.bashrc
fi

export PATH="$HOME/.poetry/bin:$PATH"
complete -C /usr/local/bin/bitcomplete bit
