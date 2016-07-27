MsgBox, 
(
Welcome to Spam Bot!

Press F1 to Configure
Press F2 to Restart
Press F3 to Exit
)

F1::spam()
F2::
MsgBox, Restart Spam Bot! 
Reload
F3::
MsgBox, Exit Spam Bot! 
exitapp

spam()
{
    InputBox, text, Spam bot, What would you like to spam?	
    InputBox, number, Spam bot, Spam how many time per second?
    if ErrorLevel
    {
         MsgBox, Exit Spamming Bot!
         exitapp	
    }
    else if number is not number
    {
        MsgBox, Insert only NUMBER in [Spam how many time per second]!
        spam()
    }
    else
    {
	numbers:= (1000/number)
	MsgBox,
        (
Spam Bot Executed!
Please move tab to destination before clicking OK

Press F2 to Restart
Press F3 to Exit!
        )

        Loop,
        {
            SendInput %text%
            Send {enter}
            sleep %numbers%
			
        }
    }
}








