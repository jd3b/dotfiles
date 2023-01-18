 # If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Allow UTF-8 input and output, instead of showing stuff like $'\0123\0456'
set input-meta on
set output-meta on
set convert-meta off

# Echo the current date in "Weekday, year-month-day" format
echo "Today is $(date +"%a, %F %T")"
echo ""

export PS1='\[\033]0;Bash \007\]'
# full user info
export PS1='\[\e[01;32m\]jd3b\[\e[01;00m\]:\[\e[01;36m\]\w\[\e[00;32m\] `echo $(__git_ps1 "(%s)")`\n\[\e[01;35m\]\$\[\e[01;00m\] '
export PS2='>'

# fzf - Website: https://github.com/junegunn/fzf
# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
