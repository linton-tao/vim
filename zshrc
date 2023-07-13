
#### FIG ENV VARIABLES ####
# Please make sure this block is at the start of this file.
[ -s ~/.fig/shell/pre.sh ] && source ~/.fig/shell/pre.sh
#### END FIG ENV VARIABLES ####
export ZSH="/Users/duoduo/.oh-my-zsh"
ZSH_THEME="powerlevel9k/powerlevel9k"
#POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir_writable vcs  )

POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir vcs)

POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status os_icon time)
POWERLEVEL9K_MODE='nerdfont-complete'


plugins=(git
    zsh-syntax-highlighting
    wd
)

source $ZSH/oh-my-zsh.sh
alias study="ssh -CfN zyb"

# proxy
alias setproxy="export ALL_PROXY=socks5://127.0.0.1:1081"
alias unsetproxy="unset ALL_PROXY"

wd() {
  . /Users/duoduo/bin/wd/wd.sh
}
[[ -s ~/.autojump/etc/profile.d/autojump.zsh ]] && . ~/.autojump/etc/profile.d/autojump.zsh

#export GOPROXY=https://mirrors.aliyun.com/goproxy
#export GOPROXY="http://goproxy.cn,direct"
#export GOPROXY=https://goproxy.io,direct
export GOPROXY=https://goproxy.cn


GO111MODULE=on 
export GOPATH=/Users/duoduo/go
#export GOPATH=/Users/duoduo/go:/Users/duoduo/gocode/go_learning:/Users/duoduo/gocode
export GOBIN=/Users/duoduo/go/bin
export GOROOT_BOOTSTRAP=/usr/local/go
#export GOROOT=/usr/local/go
export PATH=$PATH:$GOBIN:/usr/local/go/bin:$GOPATH:/Users/duoduo/bin
export GOPRIVATE=*.zuoyebang.cc

export PATH="/usr/local/opt/python@3.8/bin:$PATH"

#### FIG ENV VARIABLES ####
# Please make sure this block is at the end of this file.
[ -s ~/.fig/fig.sh ] && source ~/.fig/fig.sh
#### END FIG ENV VARIABLES ####
export PATH="/usr/local/sbin:$PATH"
