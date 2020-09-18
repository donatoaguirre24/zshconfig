if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

ZSH_THEME="powerlevel10k/powerlevel10k"
HIST_STAMPS="mm/dd/yyyy"

plugins=(git zsh-nvm zsh-autosuggestions zsh-syntax-highlighting)

export UPDATE_ZSH_DAYS=1
export LANG=en_US.UTF-8

export ANDROID_HOME=$HOME/Library/Android/sdk
export JAVA_HOME=Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
export NVM_DIR=$HOME/.nvm
export SSH_KEY_PATH=$HOME/.ssh/id_rsa
export ZSH=$HOME/.oh-my-zsh

export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/.rvm/bin
export PATH=$PATH:$HOME/.yarn/bin

alias code="/Applications/Visual\ Studio\ Code.app/Contents/Resources/app/bin/code"
alias brewery="brew update && brew upgrade && brew upgrade --cask && brew cleanup"
alias ohmyzsh="code ~/.oh-my-zsh"
alias path="tr ':' '\n' <<< \"$PATH\""
alias powerlevel="code ~/.p10k.zsh"
alias zshconfig="code ~/.zshrc"

source $ZSH/oh-my-zsh.sh

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
