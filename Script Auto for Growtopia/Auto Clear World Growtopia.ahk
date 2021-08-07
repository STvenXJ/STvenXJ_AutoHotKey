#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance,Force
DetectHiddenWindows,On

Gui,Font,s8
Gui,add,button,x10 y10 h30 w95 gSetWin,Set Window
Gui,Font,s15
Gui,add,edit,x+10 r1 w120 vWindow gUpdate

Gui,Font,s10
Gui,add,text,x10 y+5,Click Pada Kiri World
Gui,add,button,y+5 w150 gPosleft,Set Pojok Kiri
Gui,add,edit,x+5 w70 vPosleft gUPdate

Gui,add,text,x10 y+5,Click Pada Kanan World
Gui,add,button,y+5 w150 gPosright,Set Pojok Kanan
Gui,add,edit,x+5 w70 vPosRight gUPdate

Gui,add,text,x10 y+10,HitCount:
Gui,Font,s9
Gui,add,edit,x+10 w50 number gUpdate vHitCount
Gui,add,updown,range1-50 gUpdate,4

Gui,add,button,x10 y+10 h30 w100 gPunch vPunch,Punch
Gui,add,button,x+10 h30 w100 gReload,Reload
Gui,add,button,x10 y+10 w100 h30 gStop vStop,Stop
Gui,add,button,x+10 h30 w100 gHideShow,Hide/Show

Gui,Show,x0 y0,Auto Clear World GT
return

GuiClose:
ExitApp
return

Punch:
GuiControl,Disable,Punch
GuiControl,Enable,Stop

Mulai := 1
loop 25 {
loop 60 {
if (Mulai == 1){
ControlSend,,{Space Down},AHk_pid %Window%
}
if (Mulai == 1){
sleep,3000
}
if (Mulai == 1){
ControlSEnd,,{d down},Ahk_Pid %Window%
}
if (Mulai == 1){
sleep,250
}
if (Mulai == 1){
Controlsend,,{d up},Ahk_Pid %Window%
}
}

if (Mulai == 1){
ControlSEnd,,{Space Up},Ahk_Pid %Window%
}

Loop,%HitCount% {
if (Mulai == 1){
ControlClick,,Ahk_Pid %Window%,,LEft,,NA x%x2% y%y2%
}
if (Mulai == 1){
sleep,250
}
}

loop 60 {
if (Mulai == 1){
ControlSend,,{Space Down},AHk_pid %Window%
}
if (Mulai == 1){
sleep,3000
}
if (Mulai == 1){
ControlSEnd,,{a down},Ahk_Pid %Window%
}
if (Mulai == 1){
sleep,250
}
if (Mulai == 1){
Controlsend,,{a up},Ahk_Pid %Window%
}
}
if (Mulai == 1){
ControlSEnd,,{Space Up},Ahk_Pid %Window%
}

Loop,%HitCount% {
if (Mulai == 1){
ControlClick,,Ahk_Pid %Window%,,LEft,,NA x%x1% y%y1%
}
if (Mulai == 1){
sleep,250
}
}
}
return

Stop:
Mulai := 0
GuiControl,Disable,Stop
GuiControl,Enable,Punch

ControlSEnd,,{Space Up},AHk_Pid %Window%
return

HideShow:

return

Reload:
reload
return

Update:
Gui,Submit,Nohide
return

SetWin:
TargetWin := Window(Target)
GuiControl,,Window,% TargetWin
Gui,Submit,Nohide
return

Window(Target)
{
	klik := 0
	A := 0
	loop {
		klik_kiri := GetKeyState("LButton")
		WinGEtTitle := Temp_Window,A
		tooltip,Klik 2 kali pada Window
		if (klik_kiri == false && klik == 0)
		klik := 1
		else if (klik_kiri == true && klik == 1)
		{
		A++,klik := 0
		if (A >= 2)
		{
		WinGet,TargetWin,Pid,A
		tooltip,
		break
		}
}
}
return targetWin
}

Posleft:
Pos(x1,y1)
GuiControl,,PosLeft,%x1% %y1%
return

Posright:
Pos(x2,y2)
GuiControl,,PosRight,%x2% %y2%
return

Pos(Byref X,Byref Y)
{
	klik := 0
	A := 0
	loop {
		klik_kiri := GetKeyState("LButton")
		MouseGetPos,X,Y
		tooltip,Klik kiri untuk set Posisi`n`nX = %x%`nY = %y%
		If (klik_kiri == true)
		{
		MouseGetPos,X,Y
		tooltip,
		break

}
}
return targetWin
}