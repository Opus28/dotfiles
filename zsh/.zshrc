export EDITOR=/usr/local/bin/nvim
export SSH_KEY_PATH=/Users/leon/.ssh/id_rsa
export SSH_PUB_KEY_PATH=/Users/leon/.ssh/id_rsa.pub

if command -v pyenv 1>/dev/null 2>&1; then
      eval "$(pyenv init -)"
fi

alias lf=lfcd

lfcd() {
    tmp="$(mktemp)"
    command lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        if [ -d "$dir" ]; then
            if [ "$dir" != "$(pwd)" ]; then
                cd "$dir"
            fi
        fi
    fi
}

# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

path=('/Users/leon/.juliaup/bin' $path)
export PATH

# <<< juliaup initialize <<<

# path=('/Users/leon/.deno/bin' $path)
# export PATH
