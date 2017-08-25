# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

# PS1
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


# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

# phpenv
export PATH=$HOME/.phpenv/bin:$PATH
eval "$(phpenv init -)"

# docker
export DOCKER_HOST=tcp://localhost:2375

# aliases
alias g='git'
alias rm="rm -i"
alias cp="cp -i"
alias mv="mv -i"
