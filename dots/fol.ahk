#c::
IfWinExist ahk_exe chrome.exe
{
	WinGet, id, list, ahk_exe chrome.exe
	Loop, %id%
	{
	    this_id := id%A_Index%
		WinActivate, ahk_id %this_id%
	}
	return
}
else
	Run C:\Program Files\Google\Chrome\Application\chrome.exe
	WinWait ahk_exe chrome.exe
	WinActivate
return

#b::
IfWinExist ahk_exe BurpSuitePro.exe 

{
	WinGet, id, list, ahk_exe BurpSuitePro.exe
	Loop, %id%
	{
	    this_id := id%A_Index%
		WinActivate, ahk_id %this_id%
	}
	return
}
else
	Run C:\Users\YechielWorenklein\AppData\Local\Programs\BurpSuitePro\BurpSuitePro.exe 
	WinWait ahk_exe BurpSuitePro.exe 
	WinActivate
return
#f::
IfWinExist ahk_exe firefox.exe 

{
	WinGet, id, list, ahk_exe firefox.exe 
	Loop, %id%
	{
	    this_id := id%A_Index%
		WinActivate, ahk_id %this_id%
	}
	return
}
else
	Run C:\Program Files\Mozilla Firefox\firefox.exe 
	WinWait ahk_exe firefox.exe 
	WinActivate
return

#Enter::
IfWinExist ahk_exe alacritty.exe 

{
	WinGet, id, list, ahk_exe alacritty.exe 
	Loop, %id%
	{
	    this_id := id%A_Index%
		WinActivate, ahk_id %this_id%
	}
	return
}
else
	Run C:\Program Files\Alacritty\alacritty.exe 
	WinWait ahk_exe alacritty.exe
	WinActivate
return

#s::
IfWinExist ahk_exe slack.exe 

{
	WinGet, id, list, ahk_exe slack.exe 
	Loop, %id%
	{
	    this_id := id%A_Index%
		WinActivate, ahk_id %this_id%
	}
	return
}
else
	Run C:\Program Files\Slack\slack.exe
	WinWait ahk_exe slack.exe
	WinActivate
return

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

