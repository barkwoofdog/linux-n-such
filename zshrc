#prompt config
PROMPT='%F{121}%n@%m%f in dir %F{069}%~%f %# '

#history config
export HISTSIZE=2500
export SAVEHIST=10000

#alias for colors on basic ls or ll
export CLICOLOR=1
alias ls="ls -G"
alias ll="ls -lhG"
alias lsh="ls -lhG"

#various aliases for common actions
alias videodownload="cd /Users/dog/Developer/scripts/ytdlp/"
alias hg='history | grep'
alias e="vim"
