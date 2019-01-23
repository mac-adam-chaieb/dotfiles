export ZSH="/Users/moe/.oh-my-zsh"
touch ~/.hushlogin
ZSH_THEME=""

source $ZSH/oh-my-zsh.sh

# User configuration

autoload -U promptinit; promptinit
prompt pure

export GOPATH=$HOME
export PATH=$GOPATH/bin:$PATH
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export VISUAL="sublime --wait"
export EDITOR="$VISUAL"

alias k="kubectl"
alias subl="sublime"
alias hack="subl ."
alias whatsmyip="curl ifconfig.me"
alias g="git"

alias gc="g checkout"
alias gcm="gc master"

alias gp="g pull"
alias gpm="gp origin master"
alias gpmrb="gpm --rebase"

alias grb="g rebase"
alias grbi="grb -i"
alias grbm="grb master"

alias gcom="g commit"
alias gcoma="gcom -C HEAD --amend"
alias gcomaa="gcom -aC HEAD --amend"

alias gb="g branch"
alias gbn="gc -b"
alias gbr="gb -M"
alias gbc="g rev-parse --abbrev-ref HEAD"
alias gbd="gb -D"
alias gbda="gb | grep -v "master" | xargs git branch -D"

alias ga="g add"
alias gd="g diff"

alias gs="g status"
alias gsp="gs --porcelain"

alias gr="g reset"
alias grh="gr --hard"
alias grhh="grh HEAD"

alias grm="g rm"

alias gl="g log"

first-push() { g push --set-upstream origin $(gbc); dev open pr }
alias force-push="g push origin +HEAD"
alias yolo-push="gcom -am 'One step at a time' && g push"

[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

export DISABLE_SPRING=1

source /Users/moe/src/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
eval "$(pyenv init -)"

for file in /Users/moe/src/github.com/Shopify/cloudplatform/workflow-utils/*.bash; do source ${file}; done

# cloudplatform: add Shopify clusters to your local kubernetes config
export KUBECONFIG=${KUBECONFIG:+$KUBECONFIG:}$HOME/.kube/config:$HOME/.kube/config.shopify.cloudplatform
