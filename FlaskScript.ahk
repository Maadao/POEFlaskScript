;This line makes the script only work when Path of Exile is the active window
#IfWinActive, ahk_class POEWindowClass

;Actual code to activate flasks. Script currently activates flasks 2-5.
;If you want to activate all flasks, set both instances of number 2 below to number 1.
FlaskToPress := 2

;I've set the script to be triggered by the 'F' key. Change the F in the next line to the key of your choosing.
F::
{
	send, %FlaskToPress%
	
	If FlaskToPress = 5
	{
		FlaskToPress := 2
		sleep, 3000	
		exit
	}
	
	FlaskToPress := FlaskToPress + 1 
}
return


;Press F11 to turn the script on and off - for example when needing to chat
F11::
Hotkey, F, toggle
return
