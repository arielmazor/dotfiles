# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

alias g='git'
alias cc='clear'
alias ezsh='micro ~/.zshrc'
alias astart='scrcpy'
alias ystart='yarn start'
alias cddev='cd /home/ocean/developments/'
alias clonee='git clone'
alias ll='exa -1 -a'
alias tna='cd /home/ariel/Desktop/tutorna'
alias tnap='cd /home/ariel/Desktop/tutorna/mobile-web'
alias egit='micro ~/.gitconfig'
alias start='code . && yarn start'
alias commit='git add -A; git commit -m'
alias push='git push origin'
alias c='xclip -selection clipboard'
alias pac='pacman'
alias fssh='ll ~/.ssh | grep .pub'
alias scr='xrandr -q | grep " connected" | cut -d ' ' -f1'

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
