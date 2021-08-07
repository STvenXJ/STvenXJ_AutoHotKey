;~ https://www.autohotkey.com/boards/viewtopic.php?t=35737  by scriptor2016 ; For voice recognition to work you need Microsoft SAPI installed in your PC, some versions of Windows don't support voice recognition though.
; You may also need to train voice recognition in Windows so that it will understand your voice.
#Persistent
#SingleInstance, Force
SetKeyDelay,0

global pspeaker := ComObjCreate("SAPI.SpVoice") ;plistener := ComObjCreate("SAPI.SpSharedRecognizer") 
plistener:= ComObjCreate("SAPI.SpInprocRecognizer") ; For not showing Windows Voice Recognition widget.
paudioinputs := plistener.GetAudioInputs() ; For not showing Windows Voice Recognition widget.
plistener.AudioInput := paudioinputs.Item(0)   ; For not showing Windows Voice Recognition widget.
ObjRelease(paudioinputs) ; Release object from memory, it is not needed anymore.
pcontext := plistener.CreateRecoContext()
pgrammar := pcontext.CreateGrammar()
pgrammar.DictationSetState(0)
prules := pgrammar.Rules()
prulec := prules.Add("wordsRule", 0x1|0x20)
prulec.Clear()
pstate := prulec.InitialState()

;Object of Text responses and their Labels to jump to when detected
global responses:={"right":"kanan","left":"kiri","off":"off","Stop":"berhenti","jump":"jump","punch":"pukul"}
for Text, v in Responses ;Need to add e ach text to the pstate object and watch for them
	pstate.AddWordTransition( ComObjParameter(13,0),Text) ; ComObjParemeter(13,0) is value Null for AHK_L




prules.Commit()
pgrammar.CmdSetRuleState("wordsRule",1)
prules.Commit()
ComObjConnect(pcontext, "On")
If (pspeaker && plistener && pcontext && pgrammar && prules && prulec && pstate){	
	SplashTextOn,300,50,,Voice recognition initialisation succeeded
}Else { 
	MsgBox, Sorry, voice recognition initialisation FAILED  
	pspeaker.speak("Starting voice recognition initialisation failed")
}
;sleep,2000
SplashTextOff

Gui,add,button,x10 y10 w120 h30 gWindow,Set Window
Gui,font,s12
Gui,add,edit,x+10 w120 vWindow gUpdate,

Gui,Font,cWhite
Gui,add,text,x10 y+10 ,Kata2 `t`t| `tFungsi
Gui,add,text,x10 y+10 ,Right `t`t= `tkanan
Gui,add,text,x10 y+10 ,Left `t`t= `tkiri
Gui,add,text,x10 y+10 ,Jump `t`t= `tLompat
Gui,add,text,x10 y+10 ,Punch `t`t= `tPukul
Gui,add,text,x10 y+10 ,Stop `t`t= `tberhenti
Gui,add,text,x10 y+10 ,Off `t`t= `tScript Off
Gui,add,button,x10 y+10 vStart gStart w120 h30,Start
Gui,add,button,x+10 w120 h30 vStop gStop,Stop

Gui,Color,696969
gui,show,x0 y0,Auto Voice Growtopia Respon

Pause

return
;********************On recognition function***********************************
OnRecognition(StreamNum,StreamPos,RecogType,Result){
	sText:= Result.PhraseInfo().GetText() ; Grab the text we just spoke and go to that subroutine
		;~ pspeaker.Speak("You love maria very much sir. " sText) 	
		;~ MsgBox, Command is %sText%
	if (Responses[sText]) ;If text is found as a key in the object then... 
		gosub % Responses[sText] ;jump to the gosub
	ObjRelease(sText)
}

;********************Voice command labels***********************************
reload:
reload
return

pukul:
if (Window != "")
{
Controlsend,,{Space Down},ahk_Pid %Window%
} else {
msgbox,Set Window Dahulu
}
return

^r::
reload
return

Update:
Gui,Submit,Nohide
return

off:
GuiControl,Disable,Stop
GuiControl,Enable,Start
Soundplay,*-1
Pause,On
return

jump:
if (Window != "")
{
Controlsend,,{w Down},ahk_Pid %Window%
} else {
msgbox,Set Window Dahulu
}
return

berhenti:
if (Window != "")
{
Controlsend,,{d Up},ahk_Pid %Window%
Controlsend,,{a Up},ahk_Pid %Window%
Controlsend,,{w Up},ahk_Pid %Window%
Controlsend,,{Space Up},ahk_Pid %Window%
} else {
msgbox,Set Window Dahulu
}
return

kanan:
if (Window != "")
{
Controlsend,,{d Down},ahk_Pid %Window%
} else {
msgbox,Set Window Dahulu
}
return

kiri:
if (Window != "")
{
Controlsend,,{a Down},ahk_Pid %Window%
} else {
msgbox,Set Window Dahulu
}
return

Start:
if (Window != "")
{
Pause,Off
GuiControl,Disable,Start
GuiControl,Enable,Stop
} else {
msgbox,Set Window Dahulu
}
return

stop:
GuiControl,Disable,Stop
GuiControl,Enable,Start
Pause,On
return

Window:
Gui,Submit,Nohide
Target := Set()
Set()
{
	i := 0
	k := 0
	loop {
	tooltip,Klik untuk Set Pada Window
	if (klik := (GetKeyState("LButton")) == true)
	{
	WinGet,Target,PID,A
	GuiControl,,Window,% Target
	tooltip
	break
	}
	}
}
return

GuiClose:
ExitApp
return




