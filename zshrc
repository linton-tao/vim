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

wd() {
  . /Users/duoduo/bin/wd/wd.sh
}
[[ -s ~/.autojump/etc/profile.d/autojump.zsh ]] && . ~/.autojump/etc/profile.d/autojump.zsh

#export GOPROXY=https://mirrors.aliyun.com/goproxy
#export GOPROXY="http://goproxy.cn,direct"
#export GOPROXY=https://goproxy.io,direct
export GOPROXY=https://goproxy.cn


GO111MODULE=on 
export GOPATH=/Users/duoduo/go:/Users/duoduo/gocode/go_learning
#export GOPATH=/Users/duoduo/go:/Users/duoduo/gocode/go_learning:/Users/duoduo/gocode
export GOBIN=/Users/duoduo/go/bin
export GOROOT=/usr/local/go
export PATH=$PATH:$GOBIN:$GOROOT/bin:$GOPATH:/Users/duoduo/bin
export GOPRIVATE=*.zuoyebang.cc

export PATH="/usr/local/opt/python@3.8/bin:$PATH"
