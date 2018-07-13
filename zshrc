# ----------------------------------------
# ZSH(Oh-my-zsh) aliases I find attractive
# ----------------------------------------

## Below are default alias for using git in oh-my-zsh that I find useful
## `glola` is a magic alias!!!
# alias gst="git status"
# alias gaa='git add --all'
# alias glola="git log --graph --pretty='%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all"

# Bypass firewall in network-poverty areas (Mainland CN)
# Do change the proxy ports according to your own configurations
alias fuckgfw="export http_proxy=127.0.0.1:8001 https_proxy=127.0.0.1:8001 && echo '> You are out!'"
alias unfuckgfw="unset http_proxy https_proxy && echo '> Welcome inside ;)'"

# Jump straight to my Code folder and say something cute via cowsay
# Do change $PATH_TO_YOUR_CODE according to your own configurations
# Refer to README for installations of cowsay and fortune
alias gocode="cd $HOME/$PATH_TO_YOUR_CODE && fortune | cowsay"

# Config .zshrc via world's greatest text editor VIM!
# And then reload the configurations
alias tweakzsh="vim $HOME/.zshrc"
alias reload="source $HOME/.zshrc && echo '>> OH MY, ZSH configurations are reloaded!'"

# Update all packages via Homebrew (If you use a Mac)
alias buu="brew update && brew upgrade"

# SSH to remote server
# Change $PATH_TO_KEY and $SERVER_IP according to your configurations
# For example: alias sshaws="ssh -i ~/.ssh/rsa_id ubuntu@x.x.x.x"
alias sshsvr="ssh -i $PATH_TO_KEY $SERVER_IP"

# Check current ip (When running `fuckgfw` you want to know whether you are out or not.)
alias whatsmyip="curl ip.cn"