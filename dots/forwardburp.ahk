#t::
SetTitleMatchMode, 2
WinGetTitle, PreviousActiveWindow, A
IfWinExist ahk_exe BurpSuitePro.exe
{

    WinActivate
    ControlSend, , ^t, ahk_exe BurpSuitePro.exe
    WinActivate, %PreviousActiveWindow%

}
return

