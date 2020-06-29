# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export UPDATE_ZSH_DAYS=1
export LANG=en_US.UTF-8
export EDITOR='code'

ZSH_THEME="powerlevel10k/powerlevel10k"
HIST_STAMPS="mm/dd/yyyy"

# Disable marking untracked files under VCS as dirty.
# This makes repository status check for large repositories much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git zsh-nvm zsh-autosuggestions zsh-syntax-highlighting)

jdk() {
  version=$1
  export JAVA_HOME=$(/usr/libexec/java_home -v"$version");
}

# default to Java 11
jdk 11

export ANDROID_HOME=$HOME/Library/Android/sdk
export NVM_DIR=$HOME/.nvm
export SSH_KEY_PATH=$HOME/.ssh/id_rsa
export ZSH=$HOME/.oh-my-zsh
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=$PATH:$HOME/.rvm/bin
export PATH=$PATH:$HOME/.pyenv/bin
export PATH=$PATH:$HOME/.yarn/bin
export PATH=$PATH:/usr/local/sbin
export PATH=$PATH:/usr/local/opt/sqlite/bin

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

alias brewery="brew update && brew upgrade && brew cask upgrade && brew cleanup"
alias ohmyzsh="code ~/.oh-my-zsh"
alias path="tr ':' '\n' <<< \"$PATH\""
alias powerlevel="code ~/.p10k.zsh"
alias zshconfig="code ~/.zshrc"

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
