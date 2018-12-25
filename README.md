<!-- ![img](https://i.loli.net/2018/05/31/5b0ff51dc2bf9.png) -->

# dotfiles

![love](https://img.shields.io/badge/Made%20with-LOVE-ff69b4.svg)
[![license](https://img.shields.io/badge/license-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![zsh](https://img.shields.io/badge/configured%20for-zsh-brightgreen.svg)](https://github.com/robbyrussell/oh-my-zsh)

> ~~Some of my favorite aliases for my .zshrc file.~~ Not anymore.

This repo contains my dotfiles for `zsh` and `PowerShell`.

## Looks & Features

- Color Theme: OneHalfDark
- Font: [Iosevka Nerd Font](https://github.com/ryanoasis/nerd-fonts)
- Terminal: [Fluent Terminal](https://github.com/felixse/FluentTerminal)

### PowerShell

- [Oh-My-Posh](https://github.com/JanDeDobbeleer/oh-my-posh)
- Theme: `SpencerTechy.psm1`

![](https://i.loli.net/2018/12/25/5c21bbf5b6033.png)

![](https://i.loli.net/2018/12/25/5c21bbbcd6f3e.png)

Go to [Oh-My-Posh](https://github.com/JanDeDobbeleer/oh-my-posh) for information on how to install `Oh-My-Posh`, then:

```PowerShell
$ThemeSettings
```

![](https://i.loli.net/2018/12/25/5c21bdfd65394.png)

Then check your theme folder, navigate there, and put `SpencerTechy.psm1` there.

Reload theme by:

```PowerShell
Set-Theme SpencerTechy
```

Also, here's my PowerShell configuration profile: [ps_profile.ps1](https://github.com/spencerwooo/dotfiles/blob/master/ps_profile.ps1) for reference.

I use:

- [`Get-ChildItemColor`](https://github.com/joonro/Get-ChildItemColor) for better colored `ls`

![](https://i.loli.net/2018/12/25/5c21bd0e11860.png)

- `scoop` as Windows' package manager

![](https://i.loli.net/2018/12/25/5c21bd842c7e5.png)

And I removed PowerShell's default alias via:

```powershell
# Remove curl alias
If (Test-Path Alias:curl) {Remove-Item Alias:curl}
If (Test-Path Alias:curl) {Remove-Item Alias:curl}
```

See [ps_profile.ps1](https://github.com/spencerwooo/dotfiles/blob/master/ps_profile.ps1) for detailed information.

### ZSH

- [Oh-My-Zsh](https://ohmyz.sh/)
- Theme: kolo

![](https://i.loli.net/2018/12/07/5c0a81679fa5a.png)

**Change according to your own configs:**

1. `alias fuckgfw`, change proxy configs according to your own system proxy ports.
2. `alias gocode`, change `$PATH_TO_YOUR_CODE` to your code repo path.
3. `alias sshsvr`, change `$PATH_TO_KEY` and `$SERVER_IP` according to your own configs. This `alias` is used to ssh onto a remote server you own. If you don't have said server, you can ignore this.

4. `alias gocode`'s dependencies:

- `fortune`: Generate a random quote by a random person.

<div align="center"><img src="https://i.loli.net/2018/05/31/5b0fdd7abdb6c.jpg" alt="img" width="600px"></div>
 
- `cowsay`: Draws a cow in ascii, and says something.

<div align="center"><img src="https://i.loli.net/2018/05/31/5b0fddea0f161.jpg" alt="img" width="600px"></div>

Both are available via package managers on your devices.

**Oh-my-zsh default alias**

A complete list of oh-my-zsh default alias can be found [here](https://github.com/robbyrussell/oh-my-zsh/blob/master/plugins/git/git.plugin.zsh), but below are some of my favorites.

`gst`: is short for `git status`.

`gaa`: is short for `git add --all`.

`glola`: prints a nice commit history. I really like this BTW. :star:

<div align="center"><img src="https://i.loli.net/2018/05/31/5b0fdfd7a21e4.jpg" alt="img" width="600px"></div>

## License

This is published via the [MIT License](https://github.com/spencerwoo98/awesome-alias/blob/master/LICENSE).
