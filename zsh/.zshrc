# If you come from bash you might have to change your $PATH.
# 
# Not needed, this is handled in /etc/paths
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# pdftex, rust stuff - all these were moved to /etc/paths.d/
# export PATH="/Library/TeX/texbin/:/opt/local/bin:/opt/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/opt/local/bin:/opt/local/sbin:/Users/orbanbalage/.cargo/bin"


# spend loading additional stuff with some eye candy
# bullshit, neofetch actually takes longer...
##neofetch &

# Path to your oh-my-zsh installation.
export ZSH="/Users/orbanbalage/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
# original reverted:
ZSH_THEME="robbyrussell"
#ZSH_THEME="powerlevel9k/powerlevel9k"


# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(colorize F-Sy-H)

# removed zsh-syntax-highlighting in favor of F-Sy-H
# never really used: git, macos, sudo, ruby, chruby, python, pip, brew, vscode
# zsh-syntax-highlighting -> this one has to be sourced at the end of this file, they say. but it seems to be working...


# removed pyenv, because it screams and wants to fix pyenv to be properly and fully installed
# added it back on 2024-12-11:
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"


# plugin nice, but no: colored-man-pages



# zsh-completions
##fpath+="${ZSH_CUSTOM:-"$ZSH/custom"}/plugins/zsh-completions/src"
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src


# start OMZ
source $ZSH/oh-my-zsh.sh


# this used to work out of the box, but maybe something changed, so adding:
zstyle ':omz:update' mode auto



ZSH_COLORIZE_STYLE="material"

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# 2022-11-23 - tryin this because manpages started complaining recently that default lang is not set
#export LANG="en_US.UTF-8"
#export LANG=en_US.UTF-8
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"



# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


# moved to oh-my-zsh "$ZSH_CUSTOM/aliases.zsh" as advised above
# vi /Users/orbanbalage/.oh-my-zsh/custom/aliases.zsh

#alias dateUTC='date +"%Y-%m-%d %H:%M:%S"'
#alias ytdl='youtube-dl --cookie ~/cookies.txt'
#alias ytdla='ytdl -f 251'
#alias iapdf='ia download --glob="*.pdf"'
#alias brewfresh='brew update && brew outdated && brew upgrade'
#alias bi='brew install'
#alias gitlog="git log --graph --all --pretty='format:%C(auto)%h %C(cyan)%ar %C(auto)%d %C(magenta)%an %C(auto)%s'"
#alias francinette=/Users/orbanbalage/francinette/tester.sh
#alias paco=/Users/orbanbalage/francinette/tester.sh

# Python:
# Unversioned symlinks `python`, `python-config`, `pip` etc. pointing to
#  `python3`, `python3-config`, `pip3` etc., respectively, have been installed into
#  /usr/local/opt/python@3.10/libexec/bin


# a /usr/local/opt nem kell a PATH-ba, azok brew Cellar directory-k belinkelve, de pl. az zavar be a ZSH-nak, hogy a "python" az ebben egy mappa, de nem binary, és akkor vacakol a shell

# NTSF and other mount tools linked from Cellar in: /usr/local/sbin

# Homebrew Ruby is in: /usr/local/opt/ruby/bin



# Chruby
#
# Add the following to the ~/.bash_profile or ~/.zshrc file:
  source /usr/local/opt/chruby/share/chruby/chruby.sh
#
# To enable auto-switching of Rubies specified by .ruby-version files,
# add the following to ~/.bash_profile or ~/.zshrc:
  source /usr/local/opt/chruby/share/chruby/auto.sh


#!!! Compiling ruby 3.2.2 failed!

# compiled manually with ruby-build. everything else fails.
# ruby-build -v 3.2.2 .rubies/ruby-3.2.2
# Installed ruby-3.2.2 to /Users/orbanbalage/.rubies/ruby-3.2.2
# this downloads for itself OpenSSL 3.1.2 or whatever latest it needs...
#
# testing ruby-install if it succeeds now
# still fails...
# 
# this is then set with chruby:
chruby ruby-3.2.2




# Bison
#
# If you need to have bison first in your PATH, run:
#   echo 'export PATH="/usr/local/opt/bison/bin:$PATH"' >> ~/.zshrc
#
# For compilers to find bison you may need to set:
#   export LDFLAGS="-L/usr/local/opt/bison/lib"



### TODO – itt valahogy elkúrtam, valahová betettem a fucntion-öket és elfelejtettem hová... addig ezt itt kikommentáljuk +
### áttesszük ide: oh-my-zsh ZSH_CUSTOM functions.zsh

### a mana() a .zprofile-ban volt. kitöröltem onnan. maradtak csak a default Z cuccok, mint pl. a mkcd!

# How do I convert a video to GIF using ffmpeg, with reasonable quality?
# https://superuser.com/q/556029/103820
# Convert video to gif file.
# Usage: video2gif video_file (scale) (fps)
#video2gif() {
#  ffmpeg -y -i "${1}" -vf fps=${3:-10},scale=${2:-320}:-1:flags=lanczos,palettegen "${1}.png"
#  ffmpeg -i "${1}" -i "${1}.png" -filter_complex "fps=${3:-10},scale=${2:-320}:-1:flags=lanczos[x];[x][1:v]paletteuse" "${1}".gif
#  rm "${1}.png"
#}



# Open manpages as PDF in Preview
# stopped working in Ventura??
#mana () {
#man -t $@ | open -f -a /System/Applications/Preview.app
#}



#source /usr/local/opt/powerlevel9k/powerlevel9k.zsh-theme

#eval "$(zoxide init zsh)"


# pyenv - a másik guide ezt nem mondja nem értem
#if command -v pyenv 1>/dev/null 2>&1; then
#  eval "$(pyenv init -)"
#fi

# pyenv GitHub page szerint:
#export PYENV_ROOT="$HOME/.pyenv"
#command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
#eval "$(pyenv init -)"



# Commented out all conda stuff with 2 bangs. the rest was already commented out by conda.

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
##__conda_setup="$('/usr/local/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
##if [ $? -eq 0 ]; then
##   eval "$__conda_setup"
##else
##    if [ -f "/usr/local/anaconda3/etc/profile.d/conda.sh" ]; then
##        . "/usr/local/anaconda3/etc/profile.d/conda.sh"
##    else
##        export PATH="/usr/local/anaconda3/bin:$PATH"
##    fi
##fi
##unset __conda_setup
# <<< conda initialize <<<

# Remove this because it has an infinite amount of functions that slows down shell startup, and there are better alternatives
# TODO: move to Volta...

# removed NVM by deleting .nvm directory...

##export NVM_DIR="$HOME/.nvm"
##[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
##[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# TextMate as editor for git changes, etc.
# 2025-09-15 - removed this, as I don't use TextMate anymore.
# not sure what the default will be, I'd like nano or vim probably...
# export EDITOR="/usr/local/bin/mate -w"


# Enable default autocompletions (like for git):
# kikommenteltem, mert a ZICOMPINIT ott lent ezt betolja szerintem
#autoload -Uz compinit && compinit


# zsh parameter completion for the dotnet CLI

_dotnet_zsh_complete() 
{
  local completions=("$(dotnet complete "$words")")

  # If the completion list is empty, just continue with filename selection
  if [ -z "$completions" ]
  then
    _arguments '*::arguments: _normal'
    return
  fi

  # This is not a variable assigment, don't remove spaces!
  _values = "${(ps:\n:)completions}"
}

compdef _dotnet_zsh_complete dotnet


# load ZI – swiss army knife for zsh
# WTF élőben loadoljuk a netről??? ez nagyon veszélyes...
##source <(curl -sL git.io/zi-loader); zzinit
##if [[ ! -f $HOME/.zi/bin/zi.zsh ]]; then
##  print -P "%F{33}▓▒░ %F{160}Installing (%F{33}z-shell/zi%F{160})…%f"
##  command mkdir -p "$HOME/.zi" && command chmod go-rwX "$HOME/.zi"
##  command git clone -q --depth=1 --branch "main" https://github.com/z-shell/zi "$HOME/.zi/bin" && \
##    print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
##    print -P "%F{160}▓▒░ The clone has failed.%f%b"
##fi
##source "$HOME/.zi/bin/zi.zsh"
##autoload -Uz _zi
##(( ${+_comps} )) && _comps[zi]=_zi

# examples here -> https://wiki.zshell.dev/ecosystem/category/-annexes
##zicompinit # <- https://wiki.zshell.dev/docs/guides/commands

# kikommenteltem, mert oh-my-zsh pluginként loadoljuk már
#??? – # nem, nem értem a plugin akkor mit csinál
# ja OK az OMZ az csak egy fancy "source"-oló... plugin manager...
#zi load z-shell/F-Sy-H # <- https://wiki.zshell.dev/docs/guides/commands

source ~/perl5/perlbrew/etc/bashrc


# commented out from .bashrc:
# moved to /etc/paths.d, on 2025-10-29:
#export VOLTA_HOME="$HOME/.volta"
#export PATH="$VOLTA_HOME/bin:$PATH"



# GIT branch & username
function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1] /p'
}

COLOR_DEF=$'%f'
COLOR_USR=$'%F{243}'
COLOR_DIR=$'%F{197}'
COLOR_GIT=$'%F{39}'
setopt PROMPT_SUBST
export PROMPT='${COLOR_USR}%n ${COLOR_DIR}%2~ ${COLOR_GIT}$(parse_git_branch)${COLOR_DEF}$ '

# bun completions
[ -s "/Users/orbanbalage/.bun/_bun" ] && source "/Users/orbanbalage/.bun/_bun"

# bun
# moved to /etc/paths.d, on 2025-10-29:
#export BUN_INSTALL="$HOME/.bun"
#export PATH="$BUN_INSTALL/bin:$PATH"

# doom emacs
# ~/.config/emacs/bin
# deleted on 2025-10-29
# source: https://github.com/doomemacs/doomemacs
#export DOOM_EMACS="$HOME/.config/emacs"
#export PATH="$DOOM_EMACS/bin:$PATH"

# for 42 Header:
#export USER="borban" ### this breaks Ruby, and thereby brew... "Error: User borban doesn't exist"
#export MAIL="borban@student.42.fr"


# this is not set automatically, caused issues with sbt, as it was set to an old Cellar location
export JAVA_HOME=$(/usr/libexec/java_home)

# moved to /etc/paths.d, and the bin dir, not this load script, on 2025-10-29:
#. "/Users/orbanbalage/.deno/env"


# moved to /etc/paths.d, and the ghcup bin dir only, not this load script, and not the .cabal dir in it either, as cabal is now in .ghcup, on 2025-10-29:
#[ -f "/Users/orbanbalage/.ghcup/env" ] && . "/Users/orbanbalage/.ghcup/env" # ghcup-env
