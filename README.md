[macOS](#macos) | [Windows](#windows) | [Linux](#linux)

# 🚯 Dotfiles

![](https://flat.badgen.net/badge/platform/macOS,Windows,Linux?list=|)

> ri • cing /ry-sing/
>
> - Making visual improvements and customization to your desktop and/or phone that can simplify your desktop environment but (generally) are completely pointless.

> 好看是第一生产力。
>
> —— @SpencerWoo

## macOS

### iTerm2

![](https://i.loli.net/2019/08/16/DpztirnBE6yvqh7.png)

Color Scheme: [manta.itermcolors](./macOS/manta.itermcolors)

> ⚠️ Please upgrade iTerm2 to the latest 3.3 version in order to achieve the customizable "Minimal Titlebar" and "Status bar".

Recommend:

- Set "Tab bar height (points) for minimal theme" to 22, under "Preference - Advanced".

![](https://i.loli.net/2019/08/16/dr7Kp2SvsW6xGDt.png)

- Set "Transparency" to near "Opaque", under "Preference - Profiles - Default - Window".

### Hyper

![](https://i.loli.net/2019/08/15/Nt9HMKlpJxLaE3Y.png)

Fully customized color scheme, see [_hyper_macos.js](./macOS/_hyper_macos.js)

#### Shell

- [Oh-My-Zsh](https://ohmyz.sh/)

#### ZSH Themes

- [Powerlevel10k](https://github.com/romkatv/powerlevel10k)
- [Pure](https://github.com/sindresorhus/pure)

> Powerlevel10k can generate the same prompt as Pure given the right configuration options. But P10K is able to deal with large git repositories much much faster. See: [romkatv/Pure style for Powerlevel10k.md](https://gist.github.com/romkatv/7cbab80dcbc639003066bb68b9ae0bbf)

### WM - yabai

![](https://i.loli.net/2019/08/15/PcK2W8JXs4xQgdw.png)

[Yabai](https://github.com/koekeishiya/yabai) - a macOS Tiling WM.

- [.yabairc](./macOS/_yabairc)
- [.skhdrc](./macOS/_skhdrc)

## Windows

- Color Theme: Nord Theme
- Font: [Fantasque Sans Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/tree/master/patched-fonts/FantasqueSansMono)
- Terminal:
  - Option 1: [Fluent Terminal](https://github.com/felixse/FluentTerminal)
  - Option 2: [Windows Terminal](https://github.com/microsoft/terminal), available as an early preview on the Windows Store.

### PowerShell

- [Oh-My-Posh](https://github.com/JanDeDobbeleer/oh-my-posh)
- Theme: [SpencerTechy.psm1](./Windows/SpencerTechy.psm1)

![](https://i.loli.net/2019/06/27/5d1452db79b6664465.png)

Go to [Oh-My-Posh](https://github.com/JanDeDobbeleer/oh-my-posh) for information on how to install `Oh-My-Posh`, then:

```PowerShell
$ThemeSettings
```

Then check your theme folder, navigate there, and put [SpencerTechy.psm1](./Windows/SpencerTechy.psm1) there.

Reload theme by:

```PowerShell
Set-Theme SpencerTechy
```

Also, here's my PowerShell configuration profile: [ps_profile.ps1](./Windows/ps_profile.ps1) for reference.

I use:

- [`Get-ChildItemColor`](https://github.com/joonro/Get-ChildItemColor) for better colored `ls`
- `scoop` as Windows' package manager

And I removed PowerShell's default alias via:

```powershell
# Remove curl alias
If (Test-Path Alias:curl) {Remove-Item Alias:curl}
If (Test-Path Alias:curl) {Remove-Item Alias:curl}
```

See [ps_profile.ps1](./Windows/ps_profile.ps1) for detailed information.

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
| <img src="./Windows/wt_icons/cmd.ico" alt="CMD" width="100px"> | <img src="./Windows/wt_icons/powershell.png" alt="CMD" width="100px"> | <img src="./Windows/wt_icons/arch.png" alt="CMD" width="100px"> |

Put icons under folder:

```
C:\<USER_NAME>\AppData\Local\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\RoamingState
```

Set icon in profile:

```json
"icon": "ms-appdata:///roaming/cmd.ico"
```

#### Windows Terminal themes

[Windows Terminal Themes](https://github.com/mbadolato/iTerm2-Color-Schemes/tree/master/windowsterminal) at iTerm Color Schemes, GitHub.

> ❗ You cannot use `colortool` to apply a theme to Windows Terminal. Instead, you'll need to manually add the theme (which is in `JSON`) to WT's configuration file.

For more information, see [wt_profiles.json](./Windows/wt_profiles.json).

## Linux

> ❗I don't use Linux (or Manjaro) any more. I recommend using WSL on Windows. (Or just buy a Mac for god sake.)

### Arch Linux WSL (for use on Windows)

Config files: [`_wsl_zshrc`](./Windows/_wsl_zshrc)

![](https://i.loli.net/2019/06/27/5d1452db6b26815195.png)

<details>

### Manjaro

- ZSH config files: [`_arch_zshrc`](./Linux/_arch_zshrc)
- Hyper config files: [`_hyper.js`](./Linux/_hyper.js)

![](https://i.loli.net/2018/12/31/5c29a4c819cab.png)

</details>

## scripts

> Handy scripts for ricing screenshots.

### Neofetch

> Fetch system information (with `--iterm2` option to display wallpaper.)

```shell
neofetch --iterm2
```

![](https://i.loli.net/2019/08/16/bDNKLBGAok65xZ9.png)

*Depends on `imagemagick`, only works with Terminals who support displaying inline images.*

### Colortest - [pablopunk/colortest](https://github.com/pablopunk/colortest)

> Quickly show all your terminal colors

```shell
curl -s https://raw.githubusercontent.com/pablopunk/colortest/master/colortest | bash
```

![](https://i.loli.net/2019/08/16/rHUa3Qs6bDFv7LV.png)

### `color.sh` - [color.sh](./scripts/color.sh)

> Minimal script to show terminal colors.

```shell
curl -s https://raw.githubusercontent.com/spencerwooo/dotfiles/master/scripts/color.sh | bash
```

![](https://i.loli.net/2019/08/16/ZOnMBPUSQcIrsk5.png)

### 256 Color Test

> Print out all 256 colors in your console. See: [Print a 256-color test pattern in the terminal](https://askubuntu.com/questions/821157/print-a-256-color-test-pattern-in-the-terminal/821163#821163)

```shell
curl -s https://gist.githubusercontent.com/HaleTom/89ffe32783f89f403bba96bd7bcd1263/raw/ | bash
```

![](https://i.loli.net/2019/08/16/ZzWE4xriOKXUB6e.png)

### gotop

> Terminal based task manager.

GitHub: [cjbassi/gotop: A terminal based graphical activity monitor inspired by gtop and vtop](https://github.com/cjbassi/gotop)

![](https://i.loli.net/2019/08/16/7dyNAfjPQgeRsl3.png)

### tty-clock

> Terminal based clock.

GitHub: [xorg62/tty-clock](https://github.com/xorg62/tty-clock)

![](https://i.loli.net/2019/08/16/eRdUtOZcIa31Gf2.png)

## Special Thanks

- [elenapan/dotfiles](https://github.com/elenapan/dotfiles)
- [reddit/r/unixporn](https://www.reddit.com/r/unixporn/)

## License

This is published via the [MIT License](https://github.com/spencerwoo98/awesome-alias/blob/master/LICENSE).

---

🚯 **Dotfiles** ©Spencer Woo. Released under the MIT License.

Authored and maintained by Spencer Woo.

[@Blog](https://spencerwoo.com/) - [ⒿJike](https://web.okjike.com/user/4DDA0425-FB41-4188-89E4-952CA15E3C5E/post) - [@GitHub](https://github.com/spencerwooo)
