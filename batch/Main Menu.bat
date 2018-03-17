::****************************************************
::*Program......: Main Menu.bat                      *
::*Written By...: Joshua Ciffer                      *
::*Date.........: 5/2/2017                           *
::*Build........: 5.2.17.2                           *
::****************************************************
@Echo off

REM Bug - When user goes to one menu, then back to main menu, then presses enter, it brings them to the previous
REM menu they were on. 
REM Bug - Debug User input spaces, and returns

::Main Menu:: (Main Menu.bat Build: 5.2.17.2)
:MainMenu
	Cls
	Title Main Menu
	Echo -----Main Menu-----
	Echo -Type "Encrypt" to Encrypt a string of text.
	Echo -Type "Decrypt" to Decrypt a string of text.
	Echo -Type "Help" for more information.
	Echo -Type "Exit" to close the program.
	Echo -Type "Debug" for developer options.
	Echo.
	Set /P MainMenu=Enter a Command: 
	If /I %MainMenu%==Encrypt (
			Goto :Encrypt 
		) Else If /I %MainMenu%==Decrypt (
			Goto :Decrypt
		) Else If /I %MainMenu%==Help (
			Goto :HelpMenu
		) Else If /I %MainMenu%==Debug (
			Goto :DebugPassword
		) Else If /I %MainMenu%==Exit (
			Exit
		) Else (
			Cls
			Title Main Menu Error!
			Echo Error! Enter one of the given commands. Returning to the Main Menu...
			Echo.
			Pause
			Cls
			Goto :MainMenu
		)
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