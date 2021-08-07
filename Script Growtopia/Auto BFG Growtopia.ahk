#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


#SingleINstance,Off
DetectHIddenWindows,On
Gui,+AlwaysONTop

Gui,add,Button,x10 y10 w110 h25 gSelect_Window,Select Window
Gui,Font,s8
Gui,add,Edit,x+10 w90 gUPdate vWindow,

Gui,Add,Button,x10 y+10 gTarget1 ,Position 1
Gui,ADd,Edit,x+10 w130 vTArget1 gUpdate,

Gui,Add,Button,x10 y+10 gTarget2 ,Position 2
Gui,ADd,Edit,x+10 w130 vTArget2 gUpdate,

Gui,Add,Button,x10 y+10 gTarget3 ,Position 3
Gui,ADd,Edit,x+10 w130 vTArget3 gUpdate,

Gui,add,TExt,x10 y+10 ,Block Hit
Gui,add,Edit,x+10 w60 gUpdate,
Gui,add,updown,gUpdate vHitung,4

Gui,add,Radio,x10 y+10 vPickaxe gUpdate Checked, Pickaxe
Gui,add,Radio,x+10 vrayman gUpdate,Rayman

Gui,add,Button,x10 y+10 w100 h30 gStart vStart,Start
Gui,add,Button,x+10 w100 h30 gStop vStop,Stop

Gui,add,Button,x10 y+10 w100 h30 ghide vhide,Hide
Gui,add,Button,x+10 w100 h30 gShow vShow,Show




gui,Show,x0 y0,STvenXJ Auto BFG
return

Hide:
GuiControl,Disable,HIde
GuiControl,Enable,Show
WinHide,AHk_Pid %Window%
return

Show:
GuiControl,Disable,Show
GuiControl,Enable,Hide
WinShow,AHk_Pid %Window%
return

Start:
Mulai := 1
GuiControl,Disable,Start
GuiControl,Enable,Stop

While (Mulai == 1)
{

if (Pickaxe == 1)
{
ControlClick,x%x1% y%y1% ,Ahk_Pid %Window%,,,, NA x%x1% y%y1%
sleep,100
ControlClick,x%x2% y%y2% ,Ahk_Pid %Window%,,,, NA x%x2% y%y2%
sleep,100

loop,%HItung%
{
ControlSend,,{Space Down},Ahk_Pid %Window%
sleep,500
}
ControlSend,,{space Up},Ahk_Pid %WIndow%
sleep,175
}

if (Rayman == 1)
{
ControlClick,x%x1% y%y1% ,Ahk_Pid %Window%,,,, NA x%x1% y%y1%
sleep,80
ControlClick,x%x2% y%y2% ,Ahk_Pid %Window%,,,, NA x%x2% y%y2%
sleep,80
ControlClick,x%x3% y%y3% ,Ahk_Pid %Window%,,,, NA x%x3% y%y3%
sleep,80

loop,%HItung%
{
ControlSend,,{Space Down},Ahk_Pid %Window%
sleep,250
ControlSend,,{space Up},Ahk_Pid %WIndow%
}
}
}
return

Stop:
Mulai := 0
GuiControl,Disable,Stop
GuiControl,Enable,Start
return

Target1:
Set_POsition(x1,y1)
GuiControl,,Target1,%x1% %y1%
return

Target2:
Set_POsition(x2,y2)
GuiControl,,Target2,%x2% %y2%
return

Target3:
Set_POsition(x3,y3)
GuiControl,,Target3,%x3% %y3%
return

Set_Position(Byref X,Byref Y)
{
	i := 0
	k := 0
	loop {
		klik := GetKeyState("Lbutton")
		tooltip,Klik untuk set posisi
		if (Klik == False && k == 0)
		k := 1
		else if (klik == True && k == 1)
		{
		MouseGetPOs,x,y,
		tooltip,
		break
		{
}
}
}
Return TArget_Window
}

Select_Window:
Target_Window:=Set(Window)
Guicontrol,,Window,% Target_Window
Gui,Submit,Nohide
return

Set(Window)
{
	i := 0
	k := 0
	loop {
		klik := GetKeyState("Lbutton")
		tooltip,Klik 2 kali pada windows
		if (Klik == False && k == 0)
		k := 1
		else if (klik == True && k == 1)
		{
		i++ ,K:=0
		if (i>=2)
		{
		Winget,Target_Window,PID,A
		tooltip,
		break
}
}
}
Return TArget_Window
}

UPdate:
Gui,Submit,NOhide
return

GuiClose:
ExitAPp
return