# Remove curl alias
Remove-Item alias:curl -force
Remove-Item alias:ls -force

function GitLogPretty {
  git log --graph --pretty='%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --all
}

function PrettyLS {
  colorls --light -A
}

function GitStat {git status}

function GoBack {Set-Location ..}

function GetMyIp {curl -L tool.lu/ip}

Import-Module posh-git
Import-Module oh-my-posh
$DefaultUser = 'spenc'


# Setup other alias
Set-Alias open Invoke-Item
Set-Alias .. GoBack
Set-Alias glola GitLogPretty
Set-Alias gst GitStat
Set-Alias myip GetMyIp
Set-Alias ls PrettyLS

# Tab completion
Set-PSReadlineKeyHandler -Key Tab -Function MenuComplete

# Set theme
Set-Theme SpencerTechy
