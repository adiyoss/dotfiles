set -gx LC_ALL en_US.UTF-8
set -gx LANG en_US.UTF-8
set -gx PATH /Users/felixkreuk/anaconda3/bin $PATH

# --- mv, rm, cp ---
alias mv='mv -v'
alias rm='rm -v'
alias cp='cp -v'

# --- CUSTOM PLACES ---
alias w='cd ~/Workspace'
alias wc='cd ~/Workspace/code'
alias wpa='cd ~/Workspace/papers'
alias wpr='cd ~/Workspace/presentations'
alias wd='cd ~/Workspace/datasets'
alias d='cd ~/Downloads'
alias t='cd ~/Tmp'

# --- PROGRAMS ---
alias vim='nvim'
alias v='nvim'
alias a='/Applications/Atom.app/Contents/Resources/app/atom.sh'
alias g='git'

# --- GIT ---
alias gps='g ps'
alias gpl='g pl'
alias gd='g d'
alias gdd='g dd'
alias gl='g l'
alias gs='g s'
alias gca='g ca'
alias gcap='g cap'
alias gcl='g c'

# --- FILES ---
alias rr='source ~/.zshrc'
alias zshrc='vim ~/.zshrc'

# --- SHORTCUTS ---
alias c='clear'
alias h='history'
alias lla="ls -lAF"
alias sizes="du -sh * | sort -n"
alias top="htop"
alias dot="~/Workspace/code/dotfiles/dot_backup.sh" # update dotfiles repo
alias jn='jupyter lab'
alias gpu='python ~/Workspace/code/gpu.py'

# tunnel ssh 1-local port 2-remote host 3-remote port
function tunnel
    echo Tunneling from localhost:$1 to $3:$2;
    ssh -N -f -L localhost:$argv[1]:localhost:$argv[2] $argv[3]
end

# Copy w/ progress
function cp_p
  rsync -WavP --human-readable --progress $argv[1] $argv[2]
end

function md --wraps mkdir -d "Create a directory and cd into it"
  command mkdir -p $argv
  if test $status = 0
    switch $argv[(count $argv)]
      case '-*'
      case '*'
        cd $argv[(count $argv)]
        return
    end
  end
end

function f --description "find shorthand"
	find . -iname "$argv" 2>&1 | grep -v 'Permission denied'
end

function busy ; cat /dev/urandom | hexdump -C | grep --color "ca fe" ; end
