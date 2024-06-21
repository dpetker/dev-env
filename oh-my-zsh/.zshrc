# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dpetker"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git dpetker-git-prompt zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh


# User configuration
EDITOR='nvim'

# Useful aliases
alias big-folders="du -k ~/* | awk '\$1 > 500000' | sort -nr"

# Shorten neovim
alias v=nvim

# tmux aliases
#alias tmux='tmx2'
alias work='tmux new -A -s work'

# Git aliases
alias gs='git status'
alias gcam='git commit -a -m'
alias glg='git log --graph'
alias gco='git checkout'

# Because colours are fun!
print_colours() {
  for i in {0..255}; do printf "\x1b[38;5;${i}mcolor%-5i\x1b[0m" $i ; if ! (( ($i + 1 ) % 8 )); then echo ; fi ; done
}

# Set the pane title (for tmux)
case $TERM in
  screen*) # tmux terminals are typically represented as "screen-256color"
      precmd () {
          printf "\033]2;$(basename `pwd`)\033\\"
      }
      ;;
esac

# Base16 Shell
BASE16_SHELL="$HOME/.config/base16-shell/"
[ -n "$PS1" ] && \
    [ -s "$BASE16_SHELL/profile_helper.sh" ] && \
        source "$BASE16_SHELL/profile_helper.sh"

base16_dracula
