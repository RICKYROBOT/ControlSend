if not A_IsAdmin
{
   Run *RunAs "%A_ScriptFullPath%"  ; Requires v1.0.92.01+
   ExitApp
}

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.



SetTitleMatchMode, 2
Target = Naamloos - Kladblok




F5::
$stop := 0

loop{

    Random, var, 1,4
    if var = 1
    {
        ControlSend,,{w down},%Target%
        sleep 1000
        ControlSend,,{w up},%Target%
    }
    else if var = 2
    {
        ControlSend,,{a down},%Target%
        sleep 1000
        ControlSend,,{a up},%Target%
    }
    else if var = 3
    {
        ControlSend,,{s down},%Target%
        sleep 1000
        ControlSend,,{s up},%Target%
    }
    else if var = 4
    {
        ControlSend,,{d down},%Target%
		sleep 1000
        ControlSend,,{d up},%Target%
    }



if ($stop)
{
return
}
}

F6:: $stop := 1