# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="powerlevel10k/powerlevel10k"

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
alias ystart='cd ~/Android/Sdk/emulator && ./emulator -avd New_Device_API_30 && expo android && code .'
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
alias cpick='~/./colorpicker.sh'
alias phone='cd ~/Android/Sdk/emulator && ./emulator -avd New_Device_API_30'
alias wifi='nmcli device wifi list | rofi -dmenu'
#alias v='/home/ariel/.local/bin/lvim'
alias v='nvim'
alias t='tmux -u'
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}'

# Prompt Settings
declare -a PROMPTS
PROMPTS=(
    "∮"
    "∯"
    "≎"
#    ""
    ""
#    ""
 #   ""
  #  ""
    ""
)
RANDOM=$$$(date +%s)
ignition=${PROMPTS[$RANDOM % ${#RANDOM[*]}+1]}
PROMPT='%F{yellow}%1~%f %F{green}$ignition%f '

## Git Settings
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
RPROMPT=\$vcs_info_msg_0_
zstyle ':vcs_info:git:*' formats '%F{yellow}(%b)%r%f'
zstyle ':vcs_info:*' enable git
