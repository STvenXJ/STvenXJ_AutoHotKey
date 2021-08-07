#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#SingleInstance,Force
DetectHiddenWindows,On
Gui,Color,696969

Gui,font,s8
Gui,add,button,x10 y10 gWindow, Set Window
Gui,add,edit,x+10 vWindow w80,

Gui,font,s8 cWhite
Gui,add,text,x10 y+5,=======================================
Gui,font,s8 cBlack

Gui,add,button,x10 y+8 gWrench,1. Wrench
Gui,add,edit,x+10 vWrench gUpdate w60,

Gui,add,button,x10 y+8 gBlock,2. Target Block
Gui,add,edit,x+10 vBlock gUpdate w60,

Gui,add,button,x10 y+8 gRetrive1,3. Retrive 1
Gui,add,edit,x+10 vRetrive1 gUpdate w60,

Gui,add,button,x10 y+8 gRetrive2,4. Retrive 2
Gui,add,edit,x+10 vRetrive2 gUpdate w60,

Gui,add,button,x10 y+8 gInventory,5. Inventory
Gui,add,edit,x+10 vInventory gUpdate w60,

Gui,add,button,x10 y+8 gDrop,6. Drop
Gui,add,edit,x+10 vDrop gUpdate w60,

Gui,add,button,x10 y+8 gOK,7. Ok
Gui,add,edit,x+10 vOk gUpdate w60,

Gui,font,s8 cWhite
Gui,add,Text,x10 y+10 ,Delay
Gui,font,s8 cBlack
Gui,add,edit,x+10 gUPdate w50 vDelay,1800

gui,add,button,x10 y+10 w100 h30 gStart vStart,Start
gui,add,button,x+10 w100 h30 vStop gStop,Stop

gui,add,button,x10 y+10 w100 h30 gShow vShow,Show
gui,add,button,x+10 w100 h30 vHide gHide,Hide

Gui,Show,x0 y0,Auto Drop
return

Start:
Mulai := 1
GuiControl,Disable,start
GuiControl,Enable,Stop

While (mulai == 1){
if (mulai == 1){
ControlClick,x%x1% y%y1%,Ahk_Pid %Window%,,,,NA x%x1% y%y1%
sleep,%delay%
}

if (mulai == 1){
ControlClick,x%x2% y%y2%,Ahk_Pid %Window%,,,,NA x%x2% y%y2%
sleep,%delay%
}

if (mulai == 1){
ControlClick,x%x3% y%y3%,Ahk_Pid %Window%,,,,NA x%x3% y%y3%
sleep,%delay%
}

if (mulai == 1){
ControlClick,x%x4% y%y4%,Ahk_Pid %Window%,,,,NA x%x4% y%y4%
sleep,%delay%
}

if (mulai == 1){
ControlClick,x%x5% y%y5%,Ahk_Pid %Window%,,,,NA x%x5% y%y5%
sleep,%delay%
}

if (mulai == 1){
ControlClick,x%x6% y%y6%,Ahk_Pid %Window%,,,,NA x%x6% y%y6%
sleep,%delay%
}

if (mulai == 1){
ControlClick,x%x7% y%y7%,Ahk_Pid %Window%,,,,NA x%x7% y%y7%
sleep,%delay%
}
}
return

Window:
TargetWindow:=Set(Win)
GuiControl,,Window ,% TargetWindow
Gui,Submit,Nohide
return

Set(Win)
{
	i := 0
	k := 0
	loop
	{
	klik := GetKeyState("LButton")
	tooltip,Klik 2 kali pada Window
	if (klik == false && k == 0)
	k := 1
	else if (klik == true && k == 1)
	{
	i++,k:=0
	if (i>=2)
	{
	Winget,TargetWindow,PID,A
	tooltip,
	break
}
}
}
return TargetWindow
	
}

Stop:
GuiControl,Disable,Stop
GuiControl,Enable,Start
Mulai := 0
return

Wrench:
Setpos(x1,y1,1)
GuiControl,,Wrench,%x1% %y1%
return

Block:
Setpos(x2,y2,2)
GuiControl,,Block,%x2% %y2%
return

REtrive1:
Setpos(x3,y3,3)
GuiControl,,REtrive1,%x3% %y3%
return

Retrive2:
Setpos(x4,y4,4)
GuiControl,,Retrive2,%x4% %y4%
return

Inventory:
Setpos(x5,y5,5)
GuiControl,,Inventory,%x5% %y5%
return

Drop:
Setpos(x6,y6,6)
GuiControl,,Drop,%x6% %y6%
return

ok:
Setpos(x7,y7,7)
GuiControl,,ok,%x7% %y7%
return

Setpos(Byref X,byref Y,Var)
{
	i := 0
	k := 0
	loop
	{
	klik := GetKeyState("LButton")
	tooltip,Set Posisi ke %Var%
	if (klik == false && k == 0)
	k := 1
	else if (klik == true && k == 1)
	{
	mouseGetPOs,x,y,
	tooltip,
	break
	{
}
}
}
return TargetWindow
	
}

Show:
GuiControl,Disable,Show
GuiControl,Enable,Hide

WinShow,AHk_Pid %Window%
return

Hide:
GuiControl,Disable,HIde
GuiControl,Enable,Show

WinHide,AHk_Pid %Window%
return

update:
Gui,Submit,Nohide
return

GuiClose:
ExitApp
return
