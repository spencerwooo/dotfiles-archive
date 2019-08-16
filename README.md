# Dotfiles

![](https://flat.badgen.net/badge/platform/macOS,Windows,Linux?list=|)

*Dotfiles for all.*

## macOS

### iTerm2

![](https://i.loli.net/2019/08/16/DpztirnBE6yvqh7.png)

Color Scheme: [manta.itermcolors](./manta.itermcolors)

> ⚠️ Please upgrade iTerm2 to the latest 3.3 version in order to achieve the customizable "Minimal Titlebar" and "Status bar".

Recommend:

- Set "Tab bar height (points) for minimal theme" to 22, under "Preference - Advanced".

![](https://i.loli.net/2019/08/16/dr7Kp2SvsW6xGDt.png)

- Set "Transparency" to near "Opaque", under "Preference - Profiles - Default - Window".

### Hyper

![](https://i.loli.net/2019/08/15/Nt9HMKlpJxLaE3Y.png)

Fully customized color scheme, see [_hyper_macos.js](./_hyper_macos.js)

#### Shell

- [Oh-My-Zsh](https://ohmyz.sh/)

#### ZSH Themes

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [Pure](https://github.com/sindresorhus/pure)

> Powerlevel10k can generate the same prompt as Pure given the right configuration options. But P10K is able to deal with large git repositories much much faster. See: [romkatv/Pure style for Powerlevel10k.md](https://gist.github.com/romkatv/7cbab80dcbc639003066bb68b9ae0bbf)

### WM - yabai

![](https://i.loli.net/2019/08/15/PcK2W8JXs4xQgdw.png)

[Yabai](https://github.com/koekeishiya/yabai) - a macOS Tiling WM.

- [.yabairc](./_yabairc)
- [.skhdrc](./_skhdrc)

## Windows

- Color Theme: Nord Theme
- Font: [Fantasque Sans Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FantasqueSansMono)
- Terminal:
  - Option 1: [Fluent Terminal](https://github.com/felixse/FluentTerminal)
  - Option 2: [Windows Terminal](https://github.com/microsoft/terminal), available as an early preview on the Windows Store.

### PowerShell

- [Oh-My-Posh](https://github.com/JanDeDobbeleer/oh-my-posh)
- Theme: `SpencerTechy.psm1`

![](https://i.loli.net/2019/06/27/5d1452db79b6664465.png)

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

### Windows Terminal

![](https://i.loli.net/2019/06/27/5d144eea7d44e73696.png)

#### Prerequisites

1. Set Windows Theme: DARK

![](https://i.loli.net/2019/06/27/5d144f87a841628789.png)

2. Set Windows theme color: `#171717`
3. Show theme colors on title bar and window frame:

![](https://i.loli.net/2019/06/27/5d144f879a93534999.png)

#### Windows Terminal icon files

|                    Command Prompt                    |                         PowerShell                          |                      Arch Linux                       |
| :--------------------------------------------------: | :---------------------------------------------------------: | :---------------------------------------------------: |
| <img src="wt_icons/cmd.ico" alt="CMD" width="100px"> | <img src="wt_icons/powershell.png" alt="CMD" width="100px"> | <img src="wt_icons/arch.png" alt="CMD" width="100px"> |

Put icons under folder:

```
C:\<USER_NAME>\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\RoamingState
```

Set icon in profile:

```json
"icon": "ms-appdata:///roaming/cmd.ico"
```

#### Windows Terminal themes

Nord Theme:

```json
{
  "name": "Nord",
  "background": "#2e3440",
  "foreground": "#eceff4",
  "brightBlack": "#2e3440",
  "brightBlue": "#5e81ac",
  "brightCyan": "#8fbcbb",
  "brightGreen": "#a3be8c",
  "brightPurple": "#b48ead",
  "brightRed": "#bf616a",
  "brightWhite": "#eceff4",
  "brightYellow": "#ebcb8b",
  "black": "#2e3440",
  "blue": "#5e81ac",
  "cyan": "#8fbcbb",
  "green": "#a3be8c",
  "purple": "#b48ead",
  "red": "#bf616a",
  "white": "#eceff4",
  "yellow": "#ebcb8b"
}
```

> ❗ Windows Terminal does not yet work with ColorTool, so you need to convert your desired theme configurations into json. Solarized Dark and Solarized Light are included as default options in Windows Terminal, but for other themes you'll need to apply them manually. The Nord Theme above is an example.

For more information, see [wt_profiles.json](https://github.com/spencerwooo/dotfiles/blob/master/wt_profiles.json).

## Linux

### Manjaro

- ZSH config files: [`_arch_zshrc`](https://github.com/spencerwooo/dotfiles/blob/master/_arch_zshrc)
- Hyper config files: [`_hyper.js`](https://github.com/spencerwooo/dotfiles/blob/master/_hyper.js)

![](https://i.loli.net/2018/12/31/5c29a4c819cab.png)

### Arch Linux WSL (for use on Windows)

Config files: [`_wsl_zshrc`](https://github.com/spencerwooo/dotfiles/blob/master/_wsl_zshrc)

![](https://i.loli.net/2019/06/27/5d1452db6b26815195.png)

## License

This is published via the [MIT License](https://github.com/spencerwoo98/awesome-alias/blob/master/LICENSE).

---

🚯 **Dotfiles** ©Spencer Woo. Released under the MIT License.

Authored and maintained by Spencer Woo.

[@Blog](https://spencerwoo.com/) - [ⒿJike](https://web.okjike.com/user/4DDA0425-FB41-4188-89E4-952CA15E3C5E/post) - [@GitHub](https://github.com/spencerwooo)
