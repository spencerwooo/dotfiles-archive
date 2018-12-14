#requires -Version 2 -Modules posh-git

function Write-Theme {
    param(
        [bool]
        $lastCommandFailed,
        [string]
        $with
    )

    $lastColor = $sl.Colors.PromptBackgroundColor

    #check for elevated prompt
    If (Test-Administrator) {
        $prompt += Write-Prompt -Object "$($sl.PromptSymbols.ElevatedSymbol) " -ForegroundColor $sl.Colors.AdminIconForegroundColor -BackgroundColor $sl.Colors.SessionInfoBackgroundColor
    }

    $prompt = Write-Prompt -Object $sl.PromptSymbols.StartSymbol -ForegroundColor $sl.Colors.StartSymbolForegroundColor -BackgroundColor $sl.Colors.StartSymbolBackgroundColor
    $user = [System.Environment]::UserName
    $computer = [System.Environment]::MachineName
    # $path = Get-FullPath -dir $pwd
    $path = Get-ShortPath -dir $pwd
    if (Test-NotDefaultUser($user)) {
        $prompt += Write-Prompt -Object "$user@$computer " -ForegroundColor $sl.Colors.SessionInfoForegroundColor -BackgroundColor $sl.Colors.SessionInfoBackgroundColor
    }

    if (Test-VirtualEnv) {
        $prompt += Write-Prompt -Object "$($sl.PromptSymbols.SegmentForwardSymbol) " -ForegroundColor $sl.Colors.SessionInfoBackgroundColor -BackgroundColor $sl.Colors.VirtualEnvBackgroundColor
        $prompt += Write-Prompt -Object "$($sl.PromptSymbols.VirtualEnvSymbol) $(Get-VirtualEnvName) " -ForegroundColor $sl.Colors.VirtualEnvForegroundColor -BackgroundColor $sl.Colors.VirtualEnvBackgroundColor
        $prompt += Write-Prompt -Object "$($sl.PromptSymbols.SegmentForwardSymbol) " -ForegroundColor $sl.Colors.VirtualEnvBackgroundColor -BackgroundColor $sl.Colors.PromptBackgroundColor
    }
    else {
        $prompt += Write-Prompt -Object "$($sl.PromptSymbols.SegmentForwardSymbol) " -ForegroundColor $sl.Colors.StartSymbolBackgroundColor -BackgroundColor $sl.Colors.PromptBackgroundColor
    }


    # Writes the drive portion
    $prompt += Write-Prompt -Object "$path " -ForegroundColor $sl.Colors.PromptForegroundColor -BackgroundColor $sl.Colors.PromptBackgroundColor

    $status = Get-VCSStatus
    if ($status) {
        $themeInfo = Get-VcsInfo -status ($status)
        $lastColor = $themeInfo.BackgroundColor
        $prompt += Write-Prompt -Object $($sl.PromptSymbols.SegmentForwardSymbol) -ForegroundColor $sl.Colors.PromptBackgroundColor -BackgroundColor $lastColor
        $prompt += Write-Prompt -Object " $($themeInfo.VcInfo) " -BackgroundColor $lastColor -ForegroundColor $sl.Colors.GitForegroundColor
    }

    # Writes the postfix to the prompt
    $prompt += Write-Prompt -Object $sl.PromptSymbols.SegmentForwardSymbol -ForegroundColor $lastColor

    # $timeStamp = Get-Date -UFormat %r
    $timeStamp = Get-Date -UFormat %T
    $timestamp = " $timeStamp"
    $rightPromptLength = "$($sl.PromptSymbols.FailedCommandSymbol) ".Length + $timeStamp.Length + " $($sl.PromptSymbols.TimeStampSymbol.Length)".Length + " $($sl.PromptSymbols.SegmentBackwardSymbol)".Length

    $prompt += Set-CursorForRightBlockWrite -textLength $rightPromptLength #$timestamp.Length

    #check the last command state and indicate if failed
    If ($lastCommandFailed) {
        $prompt += Write-Prompt -Object "$($sl.PromptSymbols.FailedCommandSymbol) " -ForegroundColor $sl.Colors.CommandFailedIconForegroundColor -BackgroundColor $sl.Colors.SessionInfoBackgroundColor
    } else {
        $prompt += Write-Prompt -Object "$($sl.PromptSymbols.SuccessCommandSymbol) " -ForegroundColor $sl.Colors.CommandSucceededIconForegroundColor -BackgroundColor $sl.Colors.SessionInfoBackgroundColor
    }

    $prompt += Write-Prompt -Object "$($sl.PromptSymbols.SegmentBackwardSymbol)" -ForegroundColor $sl.Colors.PromptForegroundColor -BackgroundColor $sl.Colors.SessionInfoBackgroundColor
    $prompt += Write-Prompt " $($sl.PromptSymbols.TimeStampSymbol)" -ForegroundColor $sl.Colors.RightPromptForegroundColor -BackgroundColor $sl.Colors.RightPromptBackgroundColor
    $prompt += Write-Prompt "$($timeStamp)" -ForegroundColor $sl.Colors.RightPromptForegroundColor -BackgroundColor $sl.Colors.RightPromptBackgroundColor

    $prompt += Set-Newline

    if ($with) {
        $prompt += Write-Prompt -Object "$($with.ToUpper()) " -BackgroundColor $sl.Colors.WithBackgroundColor -ForegroundColor $sl.Colors.WithForegroundColor
    }

    $prompt += Write-Prompt -Object $sl.PromptSymbols.PromptIndicator -ForegroundColor $sl.Colors.PromptBackgroundColor
    $prompt += ' '
    $prompt
}

$sl = $global:ThemeSettings #local settings
$sl.PromptSymbols.StartSymbol = ' ' + [char]::ConvertFromUtf32(0xE70F) + ' '
$sl.PromptSymbols.PromptIndicator = [char]::ConvertFromUtf32(0x276F)
$sl.PromptSymbols.SegmentForwardSymbol = [char]::ConvertFromUtf32(0xE0B4) #(0xE0B0)
$sl.PromptSymbols.SegmentBackwardSymbol = [char]::ConvertFromUtf32(0xE0B6) #(0xE0B2)
$sl.PromptSymbols.TimeStampSymbol = [char]::ConvertFromUtf32(0xF017)
$sl.PromptSymbols.FailedCommandSymbol = [char]::ConvertFromUtf32(0x2718)
$sl.PromptSymbols.SuccessCommandSymbol = [char]::ConvertFromUtf32(0x2714)
$sl.Colors.PromptForegroundColor = [ConsoleColor]::White
$sl.Colors.StartSymbolForegroundColor = [ConsoleColor]::Black
$sl.Colors.StartSymbolBackgroundColor = [ConsoleColor]::Magenta
$sl.Colors.PromptSymbolColor = [ConsoleColor]::White
$sl.Colors.PromptHighlightColor = [ConsoleColor]::DarkBlue
$sl.Colors.GitForegroundColor = [ConsoleColor]::Black
$sl.Colors.WithForegroundColor = [ConsoleColor]::DarkRed
$sl.Colors.WithBackgroundColor = [ConsoleColor]::Magenta
$sl.Colors.VirtualEnvBackgroundColor = [System.ConsoleColor]::Red
$sl.Colors.VirtualEnvForegroundColor = [System.ConsoleColor]::White
$sl.Colors.RightPromptForegroundColor = [ConsoleColor]::Black
$sl.Colors.RightPromptBackgroundColor = [ConsoleColor]::Gray
$sl.Colors.CommandFailedIconForegroundColor = [ConsoleColor]::Red
$sl.Colors.CommandSucceededIconForegroundColor = [ConsoleColor]::Green
