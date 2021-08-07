#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#singleinstance,off
detecthiddenwindows,on
Gui,Color,696969,EAEAEA

Gui,font,s10
Gui,add,button,x10 y10 w100 h30 gChoose,Select
Gui,add,edit,x+10 w150 gupdate vWindow1,
Gui,add,edit,x10 y+10 w250  gupdatecount1 limit120 vcounters1,

Gui,font,s15 cWhite
Gui,add,text,x+10 w80 vCount1,0`/120
Gui,font,s10 cWhite
Gui,add,text,x10 y+15,Delay
Gui,font,s10 cBlack
Gui,add,edit,x+10  vdelay1 w100 gUpdate,3500
Gui,font,s10 cBlack
Gui,add,edit,x10 y+10 w250 gupdatecount2 limit120 vcounters2,

Gui,font,s15 cWHite
Gui,add,text,x+10 w80 vCount2,0`/120
Gui,font,s10 cWhite
Gui,add,text,x10 y+10 ,Delay
Gui,font,s10 cBlack
Gui,add,edit,x+10 vdelay2 w100 gupdate,3500

Gui,font,s8
Gui,add,button,x10 w100 h30 y+10 gStart,Start
Gui,add,button,x+10 w100 h30 gStop,Stop
Gui,add,button,x+10 w100 h30 gReload,Reload

Gui,add,button,x10 y+10 w100 h30 gHide_Window,Hide
Gui,add,button,x+10 w100 h30 gShow_Window,Show
Gui,add,button,x+10 w100 h30,

Gui,Show,x0 y0 w340 h280,Auto Spammer GT
return

Update:
Gui,Submit,Nohide
return

updatecount1:
Gui,Submit,NOhide
GuiControlGet,string,,counters1
hitung := strlen(string)
GuiControl,,Count1,%hitung%`/120
return

updatecount2:
Gui,Submit,NOhide
GuiControlGet,string,,counters2
hitung := strlen(string)
GuiControl,,Count2,%hitung%`/120
return

Choose:
target_window:=Set(Target_window)
GuiControl,,Window1,% Target_Window
Gui,Submit,NoHide
return

Hide_WIndow:
WinHide,ahk_pid %window1%
return

Show_Window:
WinShow,ahk_pid %window1%
return

Set(target_Window)
{
i:= 0,k:=0
Loop
{
	Klik := GetKeyState("Lbutton")
	Wingettitle,Temp_Window,A
	Tooltip,klik 2 kali pada window
 	if (klik==false&&k==0)
	k:=1
	else if (klik==true&&k==1)
	{
	i++,k:=0
	if(i>=2)
	{
	winget,Target_Window,Pid,A
	tooltip,
	break
}
}
}
return Target_Window
}
return

Start:
Mulai:=1
while (mulai != 0){
if (mulai != 0){
ControlSend,,{Enter},ahk_pid %Window1%
}
if (mulai != 0){
ControlSend,,%counters1%,Ahk_pid %window1%
}
if (mulai != 0){
ControlSend,,{Enter},ahk_pid %Window1%
}
if (mulai != 0){
sleep,%delay1%
}

if (mulai != 0){
ControlSend,,{Enter},ahk_pid %Window1%
}
if (mulai != 0){
ControlSend,,%counters2%,Ahk_pid %window1%
}
if (mulai != 0){
ControlSend,,{Enter},ahk_pid %Window1%
}
if (mulai != 0){
sleep,%delay2%
}
}
return

Stop:
Mulai:=0
return

GuiClose:
Exitapp
return

Reload:
reload
return
