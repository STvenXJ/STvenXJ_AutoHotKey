#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

Gui,+AlwaysOntop
DetectHiddenWindows,ON
#SingleInstance,On
CoordMode,Mouse,Client

Gui,Font,s9
Gui,add,button,x10 y10 gMaster,Master Window
Gui,add,edit,x+5 w155 gUpdate vMasterWindow

Gui,add,Checkbox,x10 y+5 Checked vBox1 gUpdate,1
Gui,add,button,x+5 w50 gWindow1 ,Set 1
Gui,add,edit,x+5 gUpdate w80 vWindow1,
Gui,add,button,x+5 w40 gHide1,Hide
Gui,add,button,x+5 w40 gShow1,Show

Gui,add,Checkbox,x10 y+5 Checked vBox2 gUpdate,2
Gui,add,button,x+5 w50 gWindow2 ,Set 2
Gui,add,edit,x+5 gUpdate w80 vWindow2,
Gui,add,button,x+5 w40 gHide2,Hide
Gui,add,button,x+5 w40 gShow2,Show

Gui,add,Checkbox,x10 y+5 Checked vBox3 gUpdate,3
Gui,add,button,x+5 w50 gWindow3 ,Set 3
Gui,add,edit,x+5 gUpdate w80 vWindow3,
Gui,add,button,x+5 w40 gHide3,Hide
Gui,add,button,x+5 w40 gShow3,Show

Gui,add,Checkbox,x10 y+5 Checked vBox4 gUpdate,4
Gui,add,button,x+5 w50 gWindow4 ,Set 4
Gui,add,edit,x+5 gUpdate w80 vWindow4,
Gui,add,button,x+5 w40 gHide4,Hide
Gui,add,button,x+5 w40 gShow4,Show

Gui,add,Checkbox,x10 y+5 Checked vBox5 gUpdate,5
Gui,add,button,x+5 w50 gWindow5 ,Set 5
Gui,add,edit,x+5 gUpdate w80 vWindow5,
Gui,add,button,x+5 w40 gHide5,Hide
Gui,add,button,x+5 w40 gShow5,Show

Gui,add,Checkbox,x10 y+5 Checked vBox6 gUpdate,6
Gui,add,button,x+5 w50 gWindow6 ,Set 6
Gui,add,edit,x+5 gUpdate w80 vWindow6,
Gui,add,button,x+5 w40 gHide6,Hide
Gui,add,button,x+5 w40 gShow6,Show

Gui,add,Checkbox,x10 y+5 Checked vBox7 gUpdate,7
Gui,add,button,x+5 w50 gWindow7 ,Set 7
Gui,add,edit,x+5 gUpdate w80 vWindow7,
Gui,add,button,x+5 w40 gHide7,Hide
Gui,add,button,x+5 w40 gShow7,Show

Gui,add,Checkbox,x10 y+5 Checked vBox8 gUpdate,8
Gui,add,button,x+5 w50 gWindow8 ,Set 8
Gui,add,edit,x+5 gUpdate w80 vWindow8,
Gui,add,button,x+5 w40 gHide8,Hide
Gui,add,button,x+5 w40 gShow8,Show

Gui,add,Checkbox,x10 y+5 Checked vBox9 gUpdate,9
Gui,add,button,x+5 w50 gWindow9 ,Set 9
Gui,add,edit,x+5 gUpdate w80 vWindow9,
Gui,add,button,x+5 w40 gHide9,Hide
Gui,add,button,x+5 w40 gShow9,Show

Gui,add,Checkbox,x10 y+5 Checked vBox10 gUpdate,10
Gui,add,button,x+5 w50 gWindow10 ,Set 10
Gui,add,edit,x+5 gUpdate w80 vWindow10,
Gui,add,button,x+5 w40 gHide10,Hide
Gui,add,button,x+5 w40 gShow10,Show

Gui,add,button,x10 y+5 w80 h30 vStart gStart,Start
Gui,add,button,x+8 w80 h30 vStop gStop,Stop
Gui,add,button,x+8 w80 h30 ;disabled

Gui,add,button,x10 y+5 w80 h30 vShowAll gShowAll,Show All
Gui,add,button,x+8 w80 h30 vHideAll gHideALl,Hide All
Gui,add,button,x+8 w80 h30 gCloseAll ,Close All

Gui,Show,x0 y0 ,STvenXJ MultiBoxing
return

Start:
Mulai := 1
GuiControl,Disable,Start
GuiControl,Enable,Stop
Suspend,Off
return

Stop:
Mulai := 0
GuiControl,Disable,Stop
GuiControl,Enable,Start
Suspend,On
return

ShowAll:
GuiControl,Disable,ShowALl
GuiControl,Enable,HIdeAll

WinShow,Growtopia 1
WinShow,Growtopia 2
WinShow,Growtopia 3
WinShow,Growtopia 4
WinShow,Growtopia 5
WinShow,Growtopia 6
WinShow,Growtopia 7
WinShow,Growtopia 8
WinShow,Growtopia 9
WinShow,Growtopia 10
return

Hideall:
GuiControl,Disable,Hideall
GuiControl,Enable,ShowAll

WinHIde,Growtopia 1
WinHIde,Growtopia 2
WinHIde,Growtopia 3
WinHIde,Growtopia 4
WinHIde,Growtopia 5
WinHIde,Growtopia 6
WinHIde,Growtopia 7
WinHIde,Growtopia 8
WinHIde,Growtopia 9
WinHIde,Growtopia 10
return

CloseAll:
WInClose,Growtopia 1
WInClose,Growtopia 2
WInClose,Growtopia 3
WInClose,Growtopia 4
WInClose,Growtopia 5
WInClose,Growtopia 6
WInClose,Growtopia 7
WInClose,Growtopia 8
WInClose,Growtopia 9
WInClose,Growtopia 10
return

Hide1:
WinHide,Growtopia 1
return

Hide2:
WinHide,Growtopia 2
return

Hide3:
WinHide,Growtopia 3
return

Hide4:
WinHide,Growtopia 4
return

Hide5:
WinHide,Growtopia 5
return

Hide6:
WinHide,Growtopia 6
return

Hide7:
WinHide,Growtopia 7
return

Hide8:
WinHide,Growtopia 8
return

Hide9:
WinHide,Growtopia 9
return

Hide10:
WinHide,Growtopia 10
return

Show1:
WinShow,Growtopia 1
return

Show2:
WinShow,Growtopia 2
return

Show3:
WinShow,Growtopia 3
return

Show4:
WinShow,Growtopia 4
return

Show5:
WinShow,Growtopia 5
return

Show6:
WinShow,Growtopia 6
return

Show7:
WinShow,Growtopia 7
return

Show8:
WinShow,Growtopia 8
return

Show9:
WinShow,Growtopia 9
return

Show10:
WinShow,Growtopia 10
return

GuiClose:
ExitApp
return

Update:
Gui,Submit,Nohide
return

Master:
Target := Set(Window)
GuiControl,,MasterWindow,% Target
Gui,SUbmit,Nohide
return

Window1:
Target := Sets(Window,1)
GuiControl,,Window1,% Target
Gui,SUbmit,Nohide
return

Window2:
Target := Sets(Window,2)
GuiControl,,Window2,% Target
Gui,SUbmit,Nohide
return

Window3:
Target := Sets(Window,3)
GuiControl,,Window3,% Target
Gui,SUbmit,Nohide
return

Window4:
Target := Sets(Window,4)
GuiControl,,Window4,% Target
Gui,SUbmit,Nohide
return

Window5:
Target := Sets(Window,5)
GuiControl,,Window5,% Target
Gui,SUbmit,Nohide
return

Window6:
Target := Sets(Window,6)
GuiControl,,Window6,% Target
Gui,SUbmit,Nohide
return

Window7:
Target := Sets(Window,7)
GuiControl,,Window7,% Target
Gui,SUbmit,Nohide
return

Window8:
Target := Sets(Window,8)
GuiControl,,Window8,% Target
Gui,SUbmit,Nohide
return

Window9:
Target := Sets(Window,9)
GuiControl,,Window9,% Target
Gui,SUbmit,Nohide
return

Window10:
Target := Sets(Window,10)
GuiControl,,Window10,% Target
Gui,SUbmit,Nohide
return

Set(Window)
{
	i := 0
	k := 0
		loop
		{
		klik := GetKeyState("LButton")
		tooltip,Klik 2 kali pada Windows
		if (klik == false && k == 0)
		k := 1
		else if (klik == true && k == 1)
		{
		i++,k:=0
		if (i >= 2)
		{
		WinSetTitle,A,,Master Window
		WInGetTitle,Target,A
		tooltip
		break
}
}
}
return Target
}

Sets(Window,value)
{
	i := 0
	k := 0
		loop
		{
		klik := GetKeyState("LButton")
		tooltip,Klik 2 kali pada Windows
		if (klik == false && k == 0)
		k := 1
		else if (klik == true && k == 1)
		{
		i++,k:=0
		if (i >= 2)
		{
		WinSetTitle,A,,Growtopia %value%
		WInGetTitle,Target,A
		tooltip
		break
}
}
}
return Target
}

~Lbutton::
WinGetTitle,WindowNow,A
MouseGetPos,X,Y
if (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlClick,,%Window1%,,Left,,X%x% Y%y% NA D
	}
	if (box2 == 1)
	{
	ControlClick,,%Window2%,,Left,,X%x% Y%y% NA D
	}
	if (box3 == 1)
	{
	ControlClick,,%Window3%,,Left,,X%x% Y%y% NA D
	}
	if (box4 == 1)
	{
	ControlClick,,%Window4%,,Left,,X%x% Y%y% NA D
	}
	if (box5 == 1)
	{
	ControlClick,,%Window5%,,Left,,X%x% Y%y% NA D
	}
	if (box6 == 1)
	{
	ControlClick,,%Window6%,,Left,,X%x% Y%y% NA D
	}
	if (box7 == 1)
	{
	ControlClick,,%Window7%,,Left,,X%x% Y%y% NA D
	}
	if (box8 == 1)
	{
	ControlClick,,%Window8%,,Left,,X%x% Y%y% NA D
	}
	if (box9 == 1)
	{
	ControlClick,,%Window9%,,Left,,X%x% Y%y% NA D
	}
	if (box10 == 1)
	{
	ControlClick,,%Window10%,,Left,,X%x% Y%y% NA D
	}

}
}
return

~Lbutton Up::
ControlClick,,%Window1%,,Left,,X%x% Y%y% NA U
ControlClick,,%Window2%,,Left,,X%x% Y%y% NA U
ControlClick,,%Window3%,,Left,,X%x% Y%y% NA U
ControlClick,,%Window4%,,Left,,X%x% Y%y% NA U
ControlClick,,%Window5%,,Left,,X%x% Y%y% NA U
ControlClick,,%Window6%,,Left,,X%x% Y%y% NA U
ControlClick,,%Window7%,,Left,,X%x% Y%y% NA U
ControlClick,,%Window8%,,Left,,X%x% Y%y% NA U
ControlClick,,%Window9%,,Left,,X%x% Y%y% NA U
ControlClick,,%Window10%,,Left,,X%x% Y%y% NA U
return

~Enter::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{enter Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{enter Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{enter Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{enter Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{enter Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{enter Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{enter Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{enter Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{enter Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{enter Down},%Window10%
	}
}
}
return

~Enter up::
ControlSEnd,,{Enter up},%Window1%
ControlSEnd,,{Enter up},%Window2%
ControlSEnd,,{Enter up},%Window3%
ControlSEnd,,{Enter up},%Window4%
ControlSEnd,,{Enter up},%Window5%
ControlSEnd,,{Enter up},%Window6%
ControlSEnd,,{Enter up},%Window7%
ControlSEnd,,{Enter up},%Window8%
ControlSEnd,,{Enter up},%Window9%
ControlSEnd,,{Enter up},%Window10%
return

~BackSpace::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{BackSpace Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{BackSpace Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{BackSpace Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{BackSpace Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{BackSpace Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{BackSpace Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{BackSpace Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{BackSpace Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{BackSpace Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{BackSpace Down},%Window10%
	}
}
}
return

~BackSpace up::
ControlSEnd,,{BackSpace up},%Window1%
ControlSEnd,,{BackSpace up},%Window2%
ControlSEnd,,{BackSpace up},%Window3%
ControlSEnd,,{BackSpace up},%Window4%
ControlSEnd,,{BackSpace up},%Window5%
ControlSEnd,,{BackSpace up},%Window6%
ControlSEnd,,{BackSpace up},%Window7%
ControlSEnd,,{BackSpace up},%Window8%
ControlSEnd,,{BackSpace up},%Window9%
ControlSEnd,,{BackSpace up},%Window10%
return

~1::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{1 Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{1 Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{1 Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{1 Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{1 Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{1 Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{1 Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{1 Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{1 Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{1 Down},%Window10%
	}
}
}
return

~1 up::
ControlSEnd,,{1 up},%Window1%
ControlSEnd,,{1 up},%Window2%
ControlSEnd,,{1 up},%Window3%
ControlSEnd,,{1 up},%Window4%
ControlSEnd,,{1 up},%Window5%
ControlSEnd,,{1 up},%Window6%
ControlSEnd,,{1 up},%Window7%
ControlSEnd,,{1 up},%Window8%
ControlSEnd,,{1 up},%Window9%
ControlSEnd,,{1 up},%Window10%
return

~2::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{2 Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{2 Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{2 Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{2 Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{2 Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{2 Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{2 Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{2 Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{2 Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{2 Down},%Window10%
	}
}
}
return

~2 up::
ControlSEnd,,{2 up},%Window1%
ControlSEnd,,{2 up},%Window2%
ControlSEnd,,{2 up},%Window3%
ControlSEnd,,{2 up},%Window4%
ControlSEnd,,{2 up},%Window5%
ControlSEnd,,{2 up},%Window6%
ControlSEnd,,{2 up},%Window7%
ControlSEnd,,{2 up},%Window8%
ControlSEnd,,{2 up},%Window9%
ControlSEnd,,{2 up},%Window10%
return

~3::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{3 Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{3 Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{3 Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{3 Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{3 Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{3 Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{3 Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{3 Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{3 Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{3 Down},%Window10%
	}
}
}
return

~3 up::
ControlSEnd,,{3 up},%Window1%
ControlSEnd,,{3 up},%Window2%
ControlSEnd,,{3 up},%Window3%
ControlSEnd,,{3 up},%Window4%
ControlSEnd,,{3 up},%Window5%
ControlSEnd,,{3 up},%Window6%
ControlSEnd,,{3 up},%Window7%
ControlSEnd,,{3 up},%Window8%
ControlSEnd,,{3 up},%Window9%
ControlSEnd,,{3 up},%Window10%
return

~4::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{4 Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{4 Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{4 Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{4 Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{4 Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{4 Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{4 Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{4 Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{4 Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{4 Down},%Window10%
	}
}
}
return

~4 up::
ControlSEnd,,{4 up},%Window1%
ControlSEnd,,{4 up},%Window2%
ControlSEnd,,{4 up},%Window3%
ControlSEnd,,{4 up},%Window4%
ControlSEnd,,{4 up},%Window5%
ControlSEnd,,{4 up},%Window6%
ControlSEnd,,{4 up},%Window7%
ControlSEnd,,{4 up},%Window8%
ControlSEnd,,{4 up},%Window9%
ControlSEnd,,{4 up},%Window10%
return

~5::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{5 Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{5 Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{5 Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{5 Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{5 Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{5 Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{5 Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{5 Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{5 Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{5 Down},%Window10%
	}
}
}
return

~5 up::
ControlSEnd,,{5 up},%Window1%
ControlSEnd,,{5 up},%Window2%
ControlSEnd,,{5 up},%Window3%
ControlSEnd,,{5 up},%Window4%
ControlSEnd,,{5 up},%Window5%
ControlSEnd,,{5 up},%Window6%
ControlSEnd,,{5 up},%Window7%
ControlSEnd,,{5 up},%Window8%
ControlSEnd,,{5 up},%Window9%
ControlSEnd,,{5 up},%Window10%
return

~6::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{6 Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{6 Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{6 Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{6 Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{6 Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{6 Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{6 Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{6 Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{6 Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{6 Down},%Window10%
	}
}
}
return

~6 up::
ControlSEnd,,{6 up},%Window1%
ControlSEnd,,{6 up},%Window2%
ControlSEnd,,{6 up},%Window3%
ControlSEnd,,{6 up},%Window4%
ControlSEnd,,{6 up},%Window5%
ControlSEnd,,{6 up},%Window6%
ControlSEnd,,{6 up},%Window7%
ControlSEnd,,{6 up},%Window8%
ControlSEnd,,{6 up},%Window9%
ControlSEnd,,{6 up},%Window10%
return

~7::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{7 Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{7 Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{7 Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{7 Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{7 Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{7 Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{7 Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{7 Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{7 Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{7 Down},%Window10%
	}
}
}
return

~7 up::
ControlSEnd,,{7 up},%Window1%
ControlSEnd,,{7 up},%Window2%
ControlSEnd,,{7 up},%Window3%
ControlSEnd,,{7 up},%Window4%
ControlSEnd,,{7 up},%Window5%
ControlSEnd,,{7 up},%Window6%
ControlSEnd,,{7 up},%Window7%
ControlSEnd,,{7 up},%Window8%
ControlSEnd,,{7 up},%Window9%
ControlSEnd,,{7 up},%Window10%
return

~8::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{8 Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{8 Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{8 Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{8 Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{8 Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{8 Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{8 Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{8 Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{8 Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{8 Down},%Window10%
	}
}
}
return

~8 up::
ControlSEnd,,{8 up},%Window1%
ControlSEnd,,{8 up},%Window2%
ControlSEnd,,{8 up},%Window3%
ControlSEnd,,{8 up},%Window4%
ControlSEnd,,{8 up},%Window5%
ControlSEnd,,{8 up},%Window6%
ControlSEnd,,{8 up},%Window7%
ControlSEnd,,{8 up},%Window8%
ControlSEnd,,{8 up},%Window9%
ControlSEnd,,{8 up},%Window10%
return

~9::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{9 Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{9 Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{9 Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{9 Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{9 Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{9 Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{9 Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{9 Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{9 Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{9 Down},%Window10%
	}
}
}
return

~9 up::
ControlSEnd,,{9 up},%Window1%
ControlSEnd,,{9 up},%Window2%
ControlSEnd,,{9 up},%Window3%
ControlSEnd,,{9 up},%Window4%
ControlSEnd,,{9 up},%Window5%
ControlSEnd,,{9 up},%Window6%
ControlSEnd,,{9 up},%Window7%
ControlSEnd,,{9 up},%Window8%
ControlSEnd,,{9 up},%Window9%
ControlSEnd,,{9 up},%Window10%
return

~0::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{0 Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{0 Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{0 Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{0 Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{0 Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{0 Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{0 Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{0 Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{0 Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{0 Down},%Window10%
	}
}
}
return

~0 up::
ControlSEnd,,{0 up},%Window1%
ControlSEnd,,{0 up},%Window2%
ControlSEnd,,{0 up},%Window3%
ControlSEnd,,{0 up},%Window4%
ControlSEnd,,{0 up},%Window5%
ControlSEnd,,{0 up},%Window6%
ControlSEnd,,{0 up},%Window7%
ControlSEnd,,{0 up},%Window8%
ControlSEnd,,{0 up},%Window9%
ControlSEnd,,{0 up},%Window10%
return

~a::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{a Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{a Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{a Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{a Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{a Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{a Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{a Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{a Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{a Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{a Down},%Window10%
	}
}
}
return

~a up::
ControlSEnd,,{a up},%Window1%
ControlSEnd,,{a up},%Window2%
ControlSEnd,,{a up},%Window3%
ControlSEnd,,{a up},%Window4%
ControlSEnd,,{a up},%Window5%
ControlSEnd,,{a up},%Window6%
ControlSEnd,,{a up},%Window7%
ControlSEnd,,{a up},%Window8%
ControlSEnd,,{a up},%Window9%
ControlSEnd,,{a up},%Window10%
return


~q::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{q Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{q Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{q Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{q Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{q Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{q Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{q Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{q Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{q Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{q Down},%Window10%
	}
}
}
return

~q up::
ControlSEnd,,{q up},%Window1%
ControlSEnd,,{q up},%Window2%
ControlSEnd,,{q up},%Window3%
ControlSEnd,,{q up},%Window4%
ControlSEnd,,{q up},%Window5%
ControlSEnd,,{q up},%Window6%
ControlSEnd,,{q up},%Window7%
ControlSEnd,,{q up},%Window8%
ControlSEnd,,{q up},%Window9%
ControlSEnd,,{q up},%Window10%
return

~e::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{e Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{e Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{e Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{e Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{e Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{e Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{e Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{e Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{e Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{e Down},%Window10%
	}
}
}
return

~e up::
ControlSEnd,,{e up},%Window1%
ControlSEnd,,{e up},%Window2%
ControlSEnd,,{e up},%Window3%
ControlSEnd,,{e up},%Window4%
ControlSEnd,,{e up},%Window5%
ControlSEnd,,{e up},%Window6%
ControlSEnd,,{e up},%Window7%
ControlSEnd,,{e up},%Window8%
ControlSEnd,,{e up},%Window9%
ControlSEnd,,{e up},%Window10%
return

~`::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{`` Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{`` Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{`` Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{`` Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{`` Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{`` Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{`` Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{`` Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{`` Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{`` Down},%Window10%
	}
}
}
return

~` up::
ControlSEnd,,{`` up},%Window1%
ControlSEnd,,{`` up},%Window2%
ControlSEnd,,{`` up},%Window3%
ControlSEnd,,{`` up},%Window4%
ControlSEnd,,{`` up},%Window5%
ControlSEnd,,{`` up},%Window6%
ControlSEnd,,{`` up},%Window7%
ControlSEnd,,{`` up},%Window8%
ControlSEnd,,{`` up},%Window9%
ControlSEnd,,{`` up},%Window10%
return

~d::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{d Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{d Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{d Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{d Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{d Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{d Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{d Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{d Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{d Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{d Down},%Window10%
	}
}
}
return

~d up::
ControlSEnd,,{d up},%Window1%
ControlSEnd,,{d up},%Window2%
ControlSEnd,,{d up},%Window3%
ControlSEnd,,{d up},%Window4%
ControlSEnd,,{d up},%Window5%
ControlSEnd,,{d up},%Window6%
ControlSEnd,,{d up},%Window7%
ControlSEnd,,{d up},%Window8%
ControlSEnd,,{d up},%Window9%
ControlSEnd,,{d up},%Window10%
return

~w::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{w Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{w Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{w Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{w Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{w Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{w Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{w Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{w Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{w Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{w Down},%Window10%
	}
}
}
return

~w up::
ControlSEnd,,{w up},%Window1%
ControlSEnd,,{w up},%Window2%
ControlSEnd,,{w up},%Window3%
ControlSEnd,,{w up},%Window4%
ControlSEnd,,{w up},%Window5%
ControlSEnd,,{w up},%Window6%
ControlSEnd,,{w up},%Window7%
ControlSEnd,,{w up},%Window8%
ControlSEnd,,{w up},%Window9%
ControlSEnd,,{w up},%Window10%
return

~r::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{r Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{r Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{r Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{r Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{r Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{r Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{r Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{r Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{r Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{r Down},%Window10%
	}
}
}
return

~r up::
ControlSEnd,,{r up},%Window1%
ControlSEnd,,{r up},%Window2%
ControlSEnd,,{r up},%Window3%
ControlSEnd,,{r up},%Window4%
ControlSEnd,,{r up},%Window5%
ControlSEnd,,{r up},%Window6%
ControlSEnd,,{r up},%Window7%
ControlSEnd,,{r up},%Window8%
ControlSEnd,,{r up},%Window9%
ControlSEnd,,{r up},%Window10%
return

~t::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{t Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{t Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{t Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{t Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{t Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{t Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{t Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{t Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{t Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{t Down},%Window10%
	}
}
}
return

~t up::
ControlSEnd,,{t up},%Window1%
ControlSEnd,,{t up},%Window2%
ControlSEnd,,{t up},%Window3%
ControlSEnd,,{t up},%Window4%
ControlSEnd,,{t up},%Window5%
ControlSEnd,,{t up},%Window6%
ControlSEnd,,{t up},%Window7%
ControlSEnd,,{t up},%Window8%
ControlSEnd,,{t up},%Window9%
ControlSEnd,,{t up},%Window10%
return

~y::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{y Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{y Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{y Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{y Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{y Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{y Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{y Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{y Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{y Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{y Down},%Window10%
	}
}
}
return

~y up::
ControlSEnd,,{y up},%Window1%
ControlSEnd,,{y up},%Window2%
ControlSEnd,,{y up},%Window3%
ControlSEnd,,{y up},%Window4%
ControlSEnd,,{y up},%Window5%
ControlSEnd,,{y up},%Window6%
ControlSEnd,,{y up},%Window7%
ControlSEnd,,{y up},%Window8%
ControlSEnd,,{y up},%Window9%
ControlSEnd,,{y up},%Window10%
return

~u::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{u Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{u Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{u Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{u Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{u Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{u Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{u Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{u Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{u Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{u Down},%Window10%
	}
}
}
return

~u up::
ControlSEnd,,{u up},%Window1%
ControlSEnd,,{u up},%Window2%
ControlSEnd,,{u up},%Window3%
ControlSEnd,,{u up},%Window4%
ControlSEnd,,{u up},%Window5%
ControlSEnd,,{u up},%Window6%
ControlSEnd,,{u up},%Window7%
ControlSEnd,,{u up},%Window8%
ControlSEnd,,{u up},%Window9%
ControlSEnd,,{u up},%Window10%
return

~i::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{i Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{i Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{i Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{i Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{i Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{i Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{i Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{i Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{i Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{i Down},%Window10%
	}
}
}
return

~i up::
ControlSEnd,,{i up},%Window1%
ControlSEnd,,{i up},%Window2%
ControlSEnd,,{i up},%Window3%
ControlSEnd,,{i up},%Window4%
ControlSEnd,,{i up},%Window5%
ControlSEnd,,{i up},%Window6%
ControlSEnd,,{i up},%Window7%
ControlSEnd,,{i up},%Window8%
ControlSEnd,,{i up},%Window9%
ControlSEnd,,{i up},%Window10%
return

~o::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{o Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{o Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{o Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{o Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{o Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{o Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{o Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{o Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{o Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{o Down},%Window10%
	}
}
}
return

~o up::
ControlSEnd,,{o up},%Window1%
ControlSEnd,,{o up},%Window2%
ControlSEnd,,{o up},%Window3%
ControlSEnd,,{o up},%Window4%
ControlSEnd,,{o up},%Window5%
ControlSEnd,,{o up},%Window6%
ControlSEnd,,{o up},%Window7%
ControlSEnd,,{o up},%Window8%
ControlSEnd,,{o up},%Window9%
ControlSEnd,,{o up},%Window10%
return

~p::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{p Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{p Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{p Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{p Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{p Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{p Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{p Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{p Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{p Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{p Down},%Window10%
	}
}
}
return

~p up::
ControlSEnd,,{p up},%Window1%
ControlSEnd,,{p up},%Window2%
ControlSEnd,,{p up},%Window3%
ControlSEnd,,{p up},%Window4%
ControlSEnd,,{p up},%Window5%
ControlSEnd,,{p up},%Window6%
ControlSEnd,,{p up},%Window7%
ControlSEnd,,{p up},%Window8%
ControlSEnd,,{p up},%Window9%
ControlSEnd,,{p up},%Window10%
return

~f::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{f Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{f Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{f Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{f Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{f Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{f Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{f Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{f Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{f Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{f Down},%Window10%
	}
}
}
return

~f up::
ControlSEnd,,{f up},%Window1%
ControlSEnd,,{f up},%Window2%
ControlSEnd,,{f up},%Window3%
ControlSEnd,,{f up},%Window4%
ControlSEnd,,{f up},%Window5%
ControlSEnd,,{f up},%Window6%
ControlSEnd,,{f up},%Window7%
ControlSEnd,,{f up},%Window8%
ControlSEnd,,{f up},%Window9%
ControlSEnd,,{f up},%Window10%
return

~s::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{s Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{s Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{s Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{s Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{s Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{s Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{s Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{s Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{s Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{s Down},%Window10%
	}
}
}
return

~s up::
ControlSEnd,,{s up},%Window1%
ControlSEnd,,{s up},%Window2%
ControlSEnd,,{s up},%Window3%
ControlSEnd,,{s up},%Window4%
ControlSEnd,,{s up},%Window5%
ControlSEnd,,{s up},%Window6%
ControlSEnd,,{s up},%Window7%
ControlSEnd,,{s up},%Window8%
ControlSEnd,,{s up},%Window9%
ControlSEnd,,{s up},%Window10%
return

~g::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{g Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{g Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{g Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{g Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{g Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{g Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{g Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{g Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{g Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{g Down},%Window10%
	}
}
}
return

~g up::
ControlSEnd,,{g up},%Window1%
ControlSEnd,,{g up},%Window2%
ControlSEnd,,{g up},%Window3%
ControlSEnd,,{g up},%Window4%
ControlSEnd,,{g up},%Window5%
ControlSEnd,,{g up},%Window6%
ControlSEnd,,{g up},%Window7%
ControlSEnd,,{g up},%Window8%
ControlSEnd,,{g up},%Window9%
ControlSEnd,,{g up},%Window10%
return

~h::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{h Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{h Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{h Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{h Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{h Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{h Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{h Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{h Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{h Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{h Down},%Window10%
	}
}
}
return

~h up::
ControlSEnd,,{h up},%Window1%
ControlSEnd,,{h up},%Window2%
ControlSEnd,,{h up},%Window3%
ControlSEnd,,{h up},%Window4%
ControlSEnd,,{h up},%Window5%
ControlSEnd,,{h up},%Window6%
ControlSEnd,,{h up},%Window7%
ControlSEnd,,{h up},%Window8%
ControlSEnd,,{h up},%Window9%
ControlSEnd,,{h up},%Window10%
return

~j::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{j Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{j Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{j Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{j Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{j Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{j Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{j Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{j Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{j Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{j Down},%Window10%
	}
}
}
return

~j up::
ControlSEnd,,{j up},%Window1%
ControlSEnd,,{j up},%Window2%
ControlSEnd,,{j up},%Window3%
ControlSEnd,,{j up},%Window4%
ControlSEnd,,{j up},%Window5%
ControlSEnd,,{j up},%Window6%
ControlSEnd,,{j up},%Window7%
ControlSEnd,,{j up},%Window8%
ControlSEnd,,{j up},%Window9%
ControlSEnd,,{j up},%Window10%
return

~k::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{k Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{k Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{k Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{k Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{k Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{k Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{k Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{k Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{k Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{k Down},%Window10%
	}
}
}
return

~k up::
ControlSEnd,,{k up},%Window1%
ControlSEnd,,{k up},%Window2%
ControlSEnd,,{k up},%Window3%
ControlSEnd,,{k up},%Window4%
ControlSEnd,,{k up},%Window5%
ControlSEnd,,{k up},%Window6%
ControlSEnd,,{k up},%Window7%
ControlSEnd,,{k up},%Window8%
ControlSEnd,,{k up},%Window9%
ControlSEnd,,{k up},%Window10%
return

~l::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{l Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{l Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{l Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{l Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{l Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{l Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{l Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{l Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{l Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{l Down},%Window10%
	}
}
}
return

~l up::
ControlSEnd,,{l up},%Window1%
ControlSEnd,,{l up},%Window2%
ControlSEnd,,{l up},%Window3%
ControlSEnd,,{l up},%Window4%
ControlSEnd,,{l up},%Window5%
ControlSEnd,,{l up},%Window6%
ControlSEnd,,{l up},%Window7%
ControlSEnd,,{l up},%Window8%
ControlSEnd,,{l up},%Window9%
ControlSEnd,,{l up},%Window10%
return

~z::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{z Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{z Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{z Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{z Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{z Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{z Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{z Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{z Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{z Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{z Down},%Window10%
	}
}
}
return

~z up::
ControlSEnd,,{z up},%Window1%
ControlSEnd,,{z up},%Window2%
ControlSEnd,,{z up},%Window3%
ControlSEnd,,{z up},%Window4%
ControlSEnd,,{z up},%Window5%
ControlSEnd,,{z up},%Window6%
ControlSEnd,,{z up},%Window7%
ControlSEnd,,{z up},%Window8%
ControlSEnd,,{z up},%Window9%
ControlSEnd,,{z up},%Window10%
return

~x::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{x Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{x Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{x Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{x Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{x Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{x Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{x Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{x Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{x Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{x Down},%Window10%
	}
}
}
return

~x up::
ControlSEnd,,{x up},%Window1%
ControlSEnd,,{x up},%Window2%
ControlSEnd,,{x up},%Window3%
ControlSEnd,,{x up},%Window4%
ControlSEnd,,{x up},%Window5%
ControlSEnd,,{x up},%Window6%
ControlSEnd,,{x up},%Window7%
ControlSEnd,,{x up},%Window8%
ControlSEnd,,{x up},%Window9%
ControlSEnd,,{x up},%Window10%
return

~c::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{c Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{c Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{c Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{c Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{c Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{c Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{c Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{c Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{c Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{c Down},%Window10%
	}
}
}
return

~c up::
ControlSEnd,,{c up},%Window1%
ControlSEnd,,{c up},%Window2%
ControlSEnd,,{c up},%Window3%
ControlSEnd,,{c up},%Window4%
ControlSEnd,,{c up},%Window5%
ControlSEnd,,{c up},%Window6%
ControlSEnd,,{c up},%Window7%
ControlSEnd,,{c up},%Window8%
ControlSEnd,,{c up},%Window9%
ControlSEnd,,{c up},%Window10%
return

~b::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{b Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{b Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{b Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{b Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{b Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{b Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{b Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{b Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{b Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{b Down},%Window10%
	}
}
}
return

~b up::
ControlSEnd,,{b up},%Window1%
ControlSEnd,,{b up},%Window2%
ControlSEnd,,{b up},%Window3%
ControlSEnd,,{b up},%Window4%
ControlSEnd,,{b up},%Window5%
ControlSEnd,,{b up},%Window6%
ControlSEnd,,{b up},%Window7%
ControlSEnd,,{b up},%Window8%
ControlSEnd,,{b up},%Window9%
ControlSEnd,,{b up},%Window10%
return

~n::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{n Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{n Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{n Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{n Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{n Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{n Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{n Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{n Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{n Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{n Down},%Window10%
	}
}
}
return

~n up::
ControlSEnd,,{n up},%Window1%
ControlSEnd,,{n up},%Window2%
ControlSEnd,,{n up},%Window3%
ControlSEnd,,{n up},%Window4%
ControlSEnd,,{n up},%Window5%
ControlSEnd,,{n up},%Window6%
ControlSEnd,,{n up},%Window7%
ControlSEnd,,{n up},%Window8%
ControlSEnd,,{n up},%Window9%
ControlSEnd,,{n up},%Window10%
return

~m::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{m Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{m Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{m Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{m Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{m Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{m Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{m Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{m Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{m Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{m Down},%Window10%
	}
}
}
return

~m up::
ControlSEnd,,{m up},%Window1%
ControlSEnd,,{m up},%Window2%
ControlSEnd,,{m up},%Window3%
ControlSEnd,,{m up},%Window4%
ControlSEnd,,{m up},%Window5%
ControlSEnd,,{m up},%Window6%
ControlSEnd,,{m up},%Window7%
ControlSEnd,,{m up},%Window8%
ControlSEnd,,{m up},%Window9%
ControlSEnd,,{m up},%Window10%
return

~,::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{, Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{, Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{, Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{, Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{, Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{, Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{, Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{, Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{, Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{, Down},%Window10%
	}
}
}
return

~, up::
ControlSEnd,,{, up},%Window1%
ControlSEnd,,{, up},%Window2%
ControlSEnd,,{, up},%Window3%
ControlSEnd,,{, up},%Window4%
ControlSEnd,,{, up},%Window5%
ControlSEnd,,{, up},%Window6%
ControlSEnd,,{, up},%Window7%
ControlSEnd,,{, up},%Window8%
ControlSEnd,,{, up},%Window9%
ControlSEnd,,{, up},%Window10%
return

~.::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{. Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{. Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{. Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{. Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{. Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{. Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{. Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{. Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{. Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{. Down},%Window10%
	}
}
}
return

~. up::
ControlSEnd,,{. up},%Window1%
ControlSEnd,,{. up},%Window2%
ControlSEnd,,{. up},%Window3%
ControlSEnd,,{. up},%Window4%
ControlSEnd,,{. up},%Window5%
ControlSEnd,,{. up},%Window6%
ControlSEnd,,{. up},%Window7%
ControlSEnd,,{. up},%Window8%
ControlSEnd,,{. up},%Window9%
ControlSEnd,,{. up},%Window10%
return

~/::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{/ Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{/ Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{/ Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{/ Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{/ Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{/ Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{/ Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{/ Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{/ Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{/ Down},%Window10%
	}
}
}
return

~/ up::
ControlSEnd,,{/ up},%Window1%
ControlSEnd,,{/ up},%Window2%
ControlSEnd,,{/ up},%Window3%
ControlSEnd,,{/ up},%Window4%
ControlSEnd,,{/ up},%Window5%
ControlSEnd,,{/ up},%Window6%
ControlSEnd,,{/ up},%Window7%
ControlSEnd,,{/ up},%Window8%
ControlSEnd,,{/ up},%Window9%
ControlSEnd,,{/ up},%Window10%
return

~Tab::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{Tab Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{Tab Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{Tab Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{Tab Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{Tab Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{Tab Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{Tab Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{Tab Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{Tab Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{Tab Down},%Window10%
	}
}
}
return

~Tab up::
ControlSEnd,,{Tab up},%Window1%
ControlSEnd,,{Tab up},%Window2%
ControlSEnd,,{Tab up},%Window3%
ControlSEnd,,{Tab up},%Window4%
ControlSEnd,,{Tab up},%Window5%
ControlSEnd,,{Tab up},%Window6%
ControlSEnd,,{Tab up},%Window7%
ControlSEnd,,{Tab up},%Window8%
ControlSEnd,,{Tab up},%Window9%
ControlSEnd,,{Tab up},%Window10%
return

~'::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{' Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{' Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{' Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{' Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{' Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{' Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{' Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{' Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{' Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{' Down},%Window10%
	}
}
}
return

~' up::
ControlSEnd,,{' up},%Window1%
ControlSEnd,,{' up},%Window2%
ControlSEnd,,{' up},%Window3%
ControlSEnd,,{' up},%Window4%
ControlSEnd,,{' up},%Window5%
ControlSEnd,,{' up},%Window6%
ControlSEnd,,{' up},%Window7%
ControlSEnd,,{' up},%Window8%
ControlSEnd,,{' up},%Window9%
ControlSEnd,,{' up},%Window10%
return

~Space::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{Space Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{Space Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{Space Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{Space Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{Space Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{Space Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{Space Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{Space Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{Space Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{Space Down},%Window10%
	}
}
}
return

~Space up::
ControlSEnd,,{Space up},%Window1%
ControlSEnd,,{Space up},%Window2%
ControlSEnd,,{Space up},%Window3%
ControlSEnd,,{Space up},%Window4%
ControlSEnd,,{Space up},%Window5%
ControlSEnd,,{Space up},%Window6%
ControlSEnd,,{Space up},%Window7%
ControlSEnd,,{Space up},%Window8%
ControlSEnd,,{Space up},%Window9%
ControlSEnd,,{Space up},%Window10%
return

~Esc::
WinGetTitle,WindowNow,A
If (Mulai == 1){
If (WindowNow == "Master Window")
{
	if (box1 == 1)
	{
	ControlSend,,{Esc Down},%Window1%
	}
	if (box2 == 1)
	{
	ControlSend,,{Esc Down},%Window2%
	}
	if (box3 == 1)
	{
	ControlSend,,{Esc Down},%Window3%
	}
	if (box4 == 1)
	{
	ControlSend,,{Esc Down},%Window4%
	}
	if (box5 == 1)
	{
	ControlSend,,{Esc Down},%Window5%
	}
	if (box6 == 1)
	{
	ControlSend,,{Esc Down},%Window6%
	}
	if (box7 == 1)
	{
	ControlSend,,{Esc Down},%Window7%
	}
	if (box8 == 1)
	{
	ControlSend,,{Esc Down},%Window8%
	}
	if (box9 == 1)
	{
	ControlSend,,{Esc Down},%Window9%
	}
	if (box10 == 1)
	{
	ControlSend,,{Esc Down},%Window10%
	}
}
}
return

~Esc up::
ControlSEnd,,{Esc up},%Window1%
ControlSEnd,,{Esc up},%Window2%
ControlSEnd,,{Esc up},%Window3%
ControlSEnd,,{Esc up},%Window4%
ControlSEnd,,{Esc up},%Window5%
ControlSEnd,,{Esc up},%Window6%
ControlSEnd,,{Esc up},%Window7%
ControlSEnd,,{Esc up},%Window8%
ControlSEnd,,{Esc up},%Window9%
ControlSEnd,,{Esc up},%Window10%
return