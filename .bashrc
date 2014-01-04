# alias
alias ll="ls -la"
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
alias gw="ssh -t hisamori@202.232.238.65 'source /home/hisamori/.bash_profile; LD_LIBRARY_PATH=/home/hisamori/local/lib /home/hisamori/local/bin/tmux attach'"

# PATH
export PATH=$HOME/bin:$HOME/local/bin:"$PATH":/usr/local/sbin

# PS1
#export PS1="`perlbrew list | grep '*' | awk '{print $2}'`:\h:\W \u\$ "
function ps_exit() {
    a=$?
    if [ $a -ne 0 ]; then
        echo "/(^o^)\\"
    else
        echo "\\(^o^)/"
    fi
    exit $a;
}
PS_EXIT="\$(ps_exit)"
PS1="[\h \W ${PS_EXIT}]\\$ "

## for plenv
#eval "$(plenv init -)"
## for rbenv
#eval "$(rbenv init -)"
#export PATH="$HOME/.rbenv/shims:$PATH"
