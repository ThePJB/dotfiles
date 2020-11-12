
# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

alias vi=vim
alias sync='git add * && git commit -m "sync $(date)" && git push'
alias unfuck-audio='pulseaudio -k && sudo alsa force-reload'
alias vps='ssh -i .ssh/pats_server_rsa root@192.243.100.204'

alias config='/usr/bin/git --git-dir=/$HOME/.cfg --work-tree=$HOME'
alias ls='ls -lh --color --group-directories-first'

alias rm='rm -i'
alias mv='mv -i'
alias cp='cp -i'

xrdb ~/.Xresources

# Bash Prompt
PS1='\[\033[1;32m\][\[\033[1;91m\]\u\[\033[1;93m\]@\[\033[1;32m\]\h\[\033[1;93m\]:\[\033[1;96m\]\w\[\033[1;32m\]]$\[\033[00m\] '

export PATH=$PATH:/usr/local/go/bin
export PATH=$PATH:/home/pat/.local/bin
export PATH=$PATH:/home/pat/repo/scripts

goose() {
    search=""
    for term in $@; do
        search="$search%20$term"
    done
    (surf "http://www.google.com/search?q=$search" > /dev/null 2>/dev/null & )
}

grab() {
  xwd | convert xwd:- png:- > "Pictures/screenshots/$1.png"
}

snip() {
    xwd | convert xwd:- png:- | xclip -selection clipboard -t image/png
}

export EDITOR='vim'
export VISUAL='vim'
