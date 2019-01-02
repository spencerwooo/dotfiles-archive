```
 ______ _______________________      _____________
 |     \     | |   |______  |  |     |_____|______
 |_____/_____| |   |      __|__|_____|___________|
                                                  
```

# dotfiles

[![forthebadge](https://forthebadge.com/images/badges/built-with-love.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/powered-by-electricity.svg)](https://forthebadge.com)
[![forthebadge](https://forthebadge.com/images/badges/fuck-it-ship-it.svg)](https://forthebadge.com)

*~~Some of my favorite aliases for my .zshrc file.~~ Not anymore.*

> This repo contains my dotfiles for `zsh` and `PowerShell`.

## Looks & Features

- Color Theme: OneHalfDark
- Font: [Iosevka Nerd Font](https://github.com/ryanoasis/nerd-fonts)
- Terminal: [Fluent Terminal](https://github.com/felixse/FluentTerminal)

### PowerShell

- [Oh-My-Posh](https://github.com/JanDeDobbeleer/oh-my-posh)
- Theme: `SpencerTechy.psm1`

![](https://i.loli.net/2019/01/02/5c2c80ca73fc9.png)

Go to [Oh-My-Posh](https://github.com/JanDeDobbeleer/oh-my-posh) for information on how to install `Oh-My-Posh`, then:

```PowerShell
$ThemeSettings
```

![](https://i.loli.net/2019/01/02/5c2c80fa88375.png)

Then check your theme folder, navigate there, and put `SpencerTechy.psm1` there.

Reload theme by:

```PowerShell
Set-Theme SpencerTechy
```

Also, here's my PowerShell configuration profile: [ps_profile.ps1](https://github.com/spencerwooo/dotfiles/blob/master/ps_profile.ps1) for reference.

I use:

- [`Get-ChildItemColor`](https://github.com/joonro/Get-ChildItemColor) for better colored `ls`

![](https://i.loli.net/2019/01/02/5c2c815f3633c.png)

- `scoop` as Windows' package manager

![](https://i.loli.net/2019/01/02/5c2c81f55bede.png)

And I removed PowerShell's default alias via:

```powershell
# Remove curl alias
If (Test-Path Alias:curl) {Remove-Item Alias:curl}
If (Test-Path Alias:curl) {Remove-Item Alias:curl}
```

See [ps_profile.ps1](https://github.com/spencerwooo/dotfiles/blob/master/ps_profile.ps1) for detailed information.

### ZSH

- [Oh-My-Zsh](https://ohmyz.sh/)
- [Powerlevel9k](https://github.com/bhilburn/powerlevel9k)
- [Hyper](https://hyper.is)

**On Linux:**

- ZSH config files: [`_arch_zshrc`](https://github.com/spencerwooo/dotfiles/blob/master/_arch_zshrc)
- Hyper config files: [`_hyper.js`](https://github.com/spencerwooo/dotfiles/blob/master/_hyper.js)

![](https://i.loli.net/2018/12/31/5c29a4c819cab.png)

**On WSL Windows:**

Config files: [`_wsl_zshrc`](https://github.com/spencerwooo/dotfiles/blob/master/_wsl_zshrc)

![](https://i.loli.net/2019/01/02/5c2c7e6e0e165.png)

## License

This is published via the [MIT License](https://github.com/spencerwoo98/awesome-alias/blob/master/LICENSE).
