case `uname` in
  Darwin)
    # commands for OS X go here
    PATH=$HOME/anaconda3/bin:usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/texbin:/opt/local/bin:/opt/local/sbin::$PATH
  ;;
  Linux)
    # commands for Linux go here
    PATH=$HOME/anaconda3/bin:$PATH
  ;;
esac

# alias nvim=$HOME/installations/nvim-osx64/bin/nvim
alias nvim=$HOME/.local/bin/lvim
###############
#   ALIASES   #
###############
alias ll="ls -all"
alias vim=nvim
alias v=nvim
alias top='htop'
alias dot='cd ~/.dotfiles'
# alias cp='rsync -ah --progress'
alias cp='xcp'
alias g='git'
alias gcap='git cap'
alias gs='git s'
alias gpl='git pull'

alias dd='cd ~/.dotfiles && gcap "update" && cd && source ~/.zshrc'
alias rr='source ~/.zshrc'

################
#  MY ALIASES  # 
################
alias ..="cd .."
alias home="cd /Users/adiyoss/Documents/"
alias count="ls -l | wc -l"
alias c='clear'
alias h='history'
alias hs='history | grep $1'
alias tgz='tar -xzvf'
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'
alias f='open -a Finder ./'
alias ls='exa'
alias cat='bat'

# # APPS #
# alias subl="open -a /Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text"
# alias praat="open -a /Applications/Praat.app/Contents/MacOS/Praat"

# SERVERS #
alias jh='ssh snc-fairjmp101'
alias eth2='et adiyoss@devfairH2:8080 --jport 8080 -x -t 8888:8888'
alias etazure='et adiyoss@azure:8080 --jport 8080 -x -t 8888:8888'
alias eth1='et adiyoss@devfairH1:8080 --jport 8080 -x -t'
alias huji='ssh -i ~/.ssh/huji_id adiyoss@phoenix.cs.huji.ac.il'
alias huji_home='ssh -l adiyoss -J adiyoss@bava.cs.huji.ac.il blakey.cs.huji.ac.il'
# alias cw_login='cloud_corp cw login'
alias cw_login='ssh cw'
#alias devfair='ssh 100.97.17.132'

###############
#  FUNCTIONS  #
###############
function qpush() {
    git add .
    git commit -m "$1"
    git push origin master
}

function tunnel() {
    echo Tunneling from localhost:$1 to $3:$2;
    ssh -N -f -L "$1":localhost:"$2" "$3"
}

function ch() {
    curl cht.sh/$1
}
