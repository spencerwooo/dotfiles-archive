![](assets/banner.png)

# dotfiles

*~~Some of my favorite aliases for my .zshrc file.~~ Not anymore.*

> This repo contains my dotfiles for `zsh` and `PowerShell`.

## Looks & Features

- Color Theme: Snazzy
- Font: [Fantasque Sans Mono](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FantasqueSansMono)
- Terminal:
  - Option 1: [Fluent Terminal](https://github.com/felixse/FluentTerminal)
  - Option 2: [Windows Terminal](https://github.com/microsoft/terminal), coming this fall

### PowerShell

- [Oh-My-Posh](https://github.com/JanDeDobbeleer/oh-my-posh)
- Theme: `SpencerTechy.psm1`

![](https://i.loli.net/2019/06/17/5d06f4276012f12742.png)

Go to [Oh-My-Posh](https://github.com/JanDeDobbeleer/oh-my-posh) for information on how to install `Oh-My-Posh`, then:

```PowerShell
$ThemeSettings
```

Then check your theme folder, navigate there, and put `SpencerTechy.psm1` there.

Reload theme by:

```PowerShell
Set-Theme SpencerTechy
```

Also, here's my PowerShell configuration profile: [ps_profile.ps1](https://github.com/spencerwooo/dotfiles/blob/master/ps_profile.ps1) for reference.

I use:

- [`Get-ChildItemColor`](https://github.com/joonro/Get-ChildItemColor) for better colored `ls`
- `scoop` as Windows' package manager

And I removed PowerShell's default alias via:

```powershell
# Remove curl alias
If (Test-Path Alias:curl) {Remove-Item Alias:curl}
If (Test-Path Alias:curl) {Remove-Item Alias:curl}
```

See [ps_profile.ps1](https://github.com/spencerwooo/dotfiles/blob/master/ps_profile.ps1) for detailed information.

### ZSH

- [Oh-My-Zsh](https://ohmyz.sh/)
- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [Hyper](https://hyper.is)

#### Manjaro

- ZSH config files: [`_arch_zshrc`](https://github.com/spencerwooo/dotfiles/blob/master/_arch_zshrc)
- Hyper config files: [`_hyper.js`](https://github.com/spencerwooo/dotfiles/blob/master/_hyper.js)

![](https://i.loli.net/2018/12/31/5c29a4c819cab.png)

#### Arch Linux WSL

Config files: [`_wsl_zshrc`](https://github.com/spencerwooo/dotfiles/blob/master/_wsl_zshrc)

![](https://i.loli.net/2019/06/17/5d06f4a7f117954043.png)

## License

This is published via the [MIT License](https://github.com/spencerwoo98/awesome-alias/blob/master/LICENSE).
