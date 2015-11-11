export PATH=/Applications/Racket\ v6.2/bin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/usr/local/MacGPG2/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:$HOME/bin:$PATH

# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)

# Customize to your needs...
plugins=(git brew vagrant encode64 urltools zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

alias l='ls -lha'
alias quit='exit'
alias nc='netcat'
alias :q='exit'

export LC_ALL="en_US.UTF-8"

export PINENTRY_USER_DATA="USE_CURSES=1"

# vi-mode improvements
# function zle-line-init zle-keymap-select {
#     VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]%  %{$reset_color%}"
#     RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
#     zle reset-prompt
# }
# 
# vi-search-fix() {
#     zle vi-cmd-mode
#     zle .vi-history-search-backward
# }

# autoload vi-search-fix
# bindkey -M viins '\e/' vi-search-fix
# bindkey -v
bindkey '^P' up-history
bindkey '^N' down-history
bindkey '^?' backward-delete-char
bindkey '^h' backward-delete-char
bindkey '^w' backward-kill-word
bindkey '^r' history-incremental-search-backward
bindkey "^R" history-incremental-search-backward
bindkey "^U" kill-line  
bindkey "^W" backward-kill-word 
bindkey "^H" backward-delete-char      # Control-h also deletes the previous char

# zle -N vi-search-fix
# zle -N zle-line-init
# zle -N zle-keymap-select
export KEYTIMEOUT=1

# making GNU fileutils more verbose
for c in cp chmod chown rename; do
    alias $c="$c -v"
done
alias rm="rm -iv"

set completion-ignore-case on
set completion-prefix-display-length 2
set show-all-if-ambiguous on
set show-all-if-unmodified on
set completion-map-case on

alias grep="/usr/bin/grep $GREP_OPTIONS"
unset GREP_OPTIONS

source /Users/ivangoncharov/.iterm2_shell_integration.zsh

## Prompt configuration.
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
ZSH_THEME_GIT_PROMPT_CLEAN=""

export PS1="${PWD/#$HOME/~} ($(git_prompt_info)) %{$fg[cyan]%}λ%{$reset_color%}"
