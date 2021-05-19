export PATH=$HOME/bin:/usr/local/bin/:$HOME/.local/bin:/snap/bin/:$PATH
export ZSH="/home/rahul/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

COMPLETION_WAITING_DOTS="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git zsh-autosuggestions zsh-syntax-highlighting node vscode python pip sudo docker postgres django heroku npm ubuntu virtualenv yarn)

source $ZSH/oh-my-zsh.sh
source /etc/profile.d/apps-bin-path.sh
export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vi'
else
  export EDITOR='code'
fi

alias zshconfig="${EDITOR} ~/.zshrc"
alias ohmyzsh="${EDITOR} ~/.oh-my-zsh"
alias desk="cd ~/Desktop"
alias dev="cd ~/dev"
alias cls="clear"
alias unimatrix="unimatrix -c green -u 'TheSkinnyCoder'"
alias la="ls -A"
alias ll="ls -Al"
alias vi="nvim"
alias vim="nvim"

bindkey -s '^l' 'clear\n'

function secret () {
  node -e "console.log(require('crypto').randomBytes(64).toString('hex'));"
}

function showColors () {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/emulator
export PATH=$PATH:$ANDROID_HOME/tools
export PATH=$PATH:$ANDROID_HOME/tools/bin
export PATH=$PATH:$ANDROID_HOME/platform-tools


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export DENO_INSTALL="/home/rahul/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
