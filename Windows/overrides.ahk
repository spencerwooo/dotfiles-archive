#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

; Windows and Q closes active window
#q::
if !WinActive("ahk_class WorkerW")
	WinClose, A
return

; Alt + Enter changes Window between maximized and minimized
!Enter::
WinGet, maximized, MinMax, A
if (maximized)
	WinRestore, A
else
	WinMaximize, A
return
