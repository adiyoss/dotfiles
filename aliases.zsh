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

alias nvim=$HOME/installations/nvim-osx64/bin/nvim
###############
#   ALIASES   #
###############
alias ll="ls -all"
alias vim=nvim
alias v=nvim
alias top='htop'
alias dot='cd ~/.dotfiles'
alias cp='rsync -ah --progress'
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

# APPS #
alias subl="open -a /Applications/Sublime\ Text.app/Contents/MacOS/Sublime\ Text"
alias praat="open -a /Applications/Praat.app/Contents/MacOS/Praat"

# SERVERS #
# alias planet='ssh adiyoss@planet.cs.biu.ac.il'
# alias u2='ssh adiyoss@u2.cs.biu.ac.il'
# alias r2d2='ssh adiyoss@r2d2.lnx.biu.ac.il'
# alias c3p0='ssh adiyoss@c3po.lnx.biu.ac.il'
# alias jakku='ssh adiyoss@jakku.lnx.biu.ac.il'
# alias mustafar='ssh adiyoss@mustafar.lnx.biu.ac.il'
# alias naboo='ssh adiyoss@naboo.lnx.biu.ac.il'
# alias tatooine='ssh adiyoss@tatooine.lnx.biu.ac.il'
# alias yavin='ssh adiyoss@yavin.lnx.biu.ac.il'
# alias moraband='ssh adiyoss@moraband.lnx.biu.ac.il'
# alias jabba='ssh adiyoss@jabba.lnx.biu.ac.il'
# alias yoda='ssh adiyoss@yoda.lnx.biu.ac.il'
# alias fondor='ssh adiyoss@fondor.lnx.biu.ac.il'
# alias lobot='ssh adiyoss@lobot.lnx.biu.ac.il'
alias jh='ssh snc-fairjmp101'
alias eth2='et adiyoss@devfairH2:8080 --jport 8080 -x -t 8888:8888'
alias eth1='et adiyoss@devfairH1:8080 --jport 8080 -x -t'
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
