# moved from .zshrc on 2022-11-23
alias dateUTC='date +"%Y-%m-%d %H:%M:%S"'
alias ytdl='yt-dlp --cookies ~/www.youtube.com_cookies.txt --remote-components ejs:github'
alias ytdla='ytdl -f 251 --remote-components ejs:github'
alias gdlaid='gallery-dl --filesize-min 30K --directory $id "r:https://amaterky.sk/$id"'
alias iapdf='ia download --glob="*.pdf"'
alias brewfresh='brew update && brew outdated && brew upgrade && brew cleanup'
alias bi='brew install'
alias gitlog="git log --graph --all --pretty='format:%C(auto)%h %C(cyan)%ar %C(auto)%d %C(magenta)%an %C(auto)%s'"
alias francinette=/Users/orbanbalage/francinette/tester.sh
alias paco=/Users/orbanbalage/francinette/tester.sh
alias ccc='cc -Wall -Wextra -Werror'
