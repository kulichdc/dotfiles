#   -----------------------------
#   4.  ALIASES
#   -----------------------------

    alias cp='nocorrect cp -iv'                 # preferred 'cp' implementation
    alias mv='nocorrect mv -iv'                 # preferred 'mv' implementation
    alias rm='nocorrect rm -iv'                 # preferred 'rm' implementation
    alias mkdir='nocorrect mkdir -pv'           # preferred 'mkdir' implementation
    alias ll='ls -FlAhp'                        # preferred 'll' implementation
    alias less='less -FSRX'                     # preferred 'less' implementation

    alias hist='history'                        # shortcut for history
    alias path='echo -e ${PATH//:/\\n}'         # path: echo all executable paths

    alias sudo=$'sudo\t'                        # this tricks allows using other aliases with sudo
                                                # $'sudo\t' is to prevent "sudo: nocorrect: command not found" error

    case "${DOTFILES_OS}" in
        linux|aix)
            alias ls='ls --color'               # preferred 'ls' implementation
        ;;
    esac

    alias tree='tree -a -I .git'                # preferred 'tree' implementation

#   -----------------------------
#   5.  FUNCTIONS
#   -----------------------------

    cd () { builtin cd "${@}" && ll; }          # always list directory contents upon 'cd'
    ccd () { builtin cd "${@}" }                # cdd: buildin cd command (used for directories with huge number of files inside)
    mcd () { mkdir -p "${1}" && cd "${1}"; }    # mcd: makes new dir and jumps inside
    mvcd () { mv "${1}" "${2}" && cd "${2}" }   # mvcd moves directory to target and cd into it

#   -----------------------------
#   6.  CUSTOM
#   -----------------------------

#
# Directories
#

# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias -- -='cd -'
alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias md='mkdir -p'
alias rd=rmdir
alias d='dirs -v | head -10'

# List directory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

## super user alias
alias _='sudo'
alias please='sudo'