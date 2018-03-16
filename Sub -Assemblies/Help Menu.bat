::****************************************************
::*Program......: Help Menu.bat                      *
::*Written By...: Joshua Ciffer                      *
::*Date.........: 5/2/2017                           *
::*Build........: 5.2.17.1                           *
::****************************************************
@Echo off

REM Add more help

::Help Menu:: (Help Menu.bat Build: 5.2.17.1)
:HelpMenu
	Cls
	Title Help Menu
	Echo -----Help Menu-----
	Echo -If you are typing commands on the main menu and you are recieving an error, make sure you are typing them as stated. Commands are case sensetive.
	Echo -The Debug Menu Password is only given to those working or debugging the program. It is not for you to play around with.
	Echo -
	Echo.
	Echo Returning to the main menu...
	Echo.
	Pause
	Cls
	Goto :MainMenu
::Fatal Error Prevention
	Else (
		Cls
		Title FATAL ERROR!
		Echo Something went wrong... Press any key to Re-Initialize the program.
		Echo.
		Pause
		Cls
		Goto :ProgramInitialization
		Pause
		Exit
	)