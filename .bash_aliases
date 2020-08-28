alias ll="ls -lha"

alias gib="git branch"
alias gitc="git checkout"
alias gits="git status"
alias gimp="git checkout master && git pull"
alias gitamend="git commit -a --amend --no-edit"
complete -o bashdefault -o default -o nospace -F __git_wrap__git_main gitc gitb

alias tf="terraform"
complete -C '/usr/bin/terraform' tf

alias xx='/usr/bin/setxkbmap -option "caps:swapescape"'

alias xcopy="xclip -selection c"
alias xpaste="xclip -selection c -o"  
