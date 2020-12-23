if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

CASE_SENSITIVE="true"
HIST_STAMPS="mm/dd/yyyy"
ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)

alias brewery="brew update && brew upgrade && brew upgrade --cask && brew cleanup"
alias gitconfig="code ~/.gitconfig"
alias ohmyzsh="code ~/.oh-my-zsh"
alias path="tr ':' '\n' <<< \"$PATH\""
alias powerlevel="code ~/.p10k.zsh"
alias zshconfig="code ~/.zshrc"

export UPDATE_ZSH_DAYS=1
export LANG=en_US.UTF-8

export ANDROID_HOME=$HOME/Library/Android/sdk
export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.jdk/Contents/Home
export RVM_HOME=$HOME/.rvm
export SSH_KEY_PATH=$HOME/.ssh/id_rsa
export ZSH=$HOME/.oh-my-zsh

export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$RVM_HOME/bin

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
