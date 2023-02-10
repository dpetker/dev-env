# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dpetker"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git dpetker-git-prompt zsh-autosuggestions)

# User configuration
EDITOR='vim'

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

source $ZSH/oh-my-zsh.sh

# Useful aliases
alias big-folders="du -k ~/* | awk '\$1 > 500000' | sort -nr"

# Shorten vim and gvim
alias v=vim
alias gv=gvim

# tmux aliases
alias tmux='tmx2'
alias work='tmx2 new -A -s work'

# Because colours are fun!
print_colours() {
  for i in {0..255}; do printf "\x1b[38;5;${i}mcolor%-5i\x1b[0m" $i ; if ! (( ($i + 1 ) % 8 )); then echo ; fi ; done
}

# Set the pane title (for tmux)
case $TERM in
  screen*) # tmux terminals are typically represented as "screen-256color"
      precmd () {
        if [[ $PWD =~ '/google/src/cloud/[^/]+/(.+)/google3(.*)' ]]; then
          printf "\033]2;$match[1]\033\\"
        else
          printf "\033]2;$(basename `pwd`)\033\\"
        fi
      }
      ;;
esac

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        eval "$("$BASE16_SHELL/profile_helper.sh")"

base16_materia
