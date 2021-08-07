#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SIngleINstance,Force


iniread,Sandbox1,data.ini,Sandbox1,Sandbox
iniread,Growtopia1,data.ini,Growtopia1,Growtopia

Gui,Font,s10
Gui,add,text,x10 y10 ,Sandbox Location :
Gui,add,edit,x+10 w250 r1 gSandbox vSandbox,%Sandbox1%

Gui,add,text,x10 y+10 ,Growtopia Location :
Gui,add,edit,x+10 w250 r1 gGrowtopia vGrowtopia,%growtopia1%

Gui,add,button,x10 w80 gStart,Start

Gui,add,text,x+10,Count
Gui,add,edit,x+10 w60 gUPdate
Gui,add,updown,gUpdate vCount,4

Gui,show,x0 y0,Open With Sandbox
return

count := 1

Start:
loop,%Count% {
run,%Sandbox% %Growtopia%
count++
}
return

Sandbox:
Gui,Submit,Nohide
iniWrite,%Sandbox%,data.ini,Sandbox1,Sandbox
return

Growtopia:
Gui,Submit,Nohide
iniWrite,%Growtopia%,data.ini,Growtopia1,Growtopia
return

UPdate:
Gui,Submit,Nohide
return

GuiClose:
ExitAPp
return