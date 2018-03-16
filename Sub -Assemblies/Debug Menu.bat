::****************************************************
::*Program......: Debug Menu.bat                     *
::*Written By...: Joshua Ciffer                      *
::*Date.........: 5/3/2017                           *
::*Build........: 5.3.17.1                           *
::****************************************************
@Echo off

rem

::Debug Menu:: (Debug Menu.bat Build: 5.3.17.1)
:DebugPassword
	Cls
	Title Debug Menu
	Echo -----Debug Menu-----
	Echo.
	Set /P DebugPassword=Enter the developer password to access the Debug Menu: 
	If %DebugPassword%==Cypher (
		Cls
		Title Debug Menu
		Echo -----Debug Menu-----
		Echo.
		Echo Access granted. Continuing to the Debug Menu...
		Echo.
		Pause
		Cls
		Goto :DebugMenu
	) Else (
		Cls
		Title Debug Menu
		Echo -----Debug Menu-----
		Echo.
		Echo Access denied. Returning to the Main Menu...
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

:DebugMenu
	Cls
	Title Debug Menu
	Echo -----Debug Menu-----
	Echo -Type "Menu" to return to the Main Menu.
	Echo -Type "Initialize" to Re-Initialize the program.
	Echo -Type "Off" to turn Echo off.
	Echo -Type "On" to turn Echo on.	
	Echo -Type "EE" to Enable Extensions.
	Echo -Type "DE" to Disable Extensions.
	Echo -Type "EDE" to Enable Delayed Expansion.
	Echo -Type "DDE" to Disable Delayed Expansion.
	Echo -Type "CMD" to launch an instance of Command Prompt.
	Echo -Type "PS" to launch an instance of Power Shell.
	Echo -Type "Exit" to exit the program.
	Echo.
	Set /P DebugMenu=Enter a command: 
	If /I %DebugMenu%==Menu (
		Goto :MainMenu
	) Else If /I %DebugMenu%==Initialize (
		Goto :ProgramInitialization
	) Else If /I %DebugMenu%==Off (
		@Echo off
		Echo.
		Echo Echo Off
		Echo.
		Pause
		Goto :DebugMenu
	) Else If /I %DebugMenu%==On (
		@Echo on
		Echo.
		Echo Echo On
		Echo.
		Pause
		Goto :DebugMenu
	) Else If /I %DebugMenu%==EE (
		SetLocal ENABLEEXTENSIONS
		Echo.
		Echo Extensions Enabled
		Echo.
		Pause
		Goto :DebugMenu
	) Else If /I %DebugMenu%==DE (
		SetLocal DISABLEEXTENSIONS
		Echo.
		Echo Extensions Disabled
		Echo.
		Pause
		Goto :DebugMenu
	) Else If /I %DebugMenu%==EDE (
		SetLocal ENABLEDELAYEDEXPANSION
		Echo.
		Echo Delayed Expansion Enabled
		Echo.
		Pause
		Goto :DebugMenu
	) Else If /I %DebugMenu%==DDE (
		SetLocal DISABLEDELAYEDEXPANSION
		Echo.
		Echo Delayed Expansion Disabled
		Echo.
		Pause
		Goto :DebugMenu
	) Else If /I %DebugMenu%==CMD (
		Goto :DebugCMD
	) Else If /I %DebugMenu%==PS (
		Goto :DebugPS
	) Else If /I %DebugMenu%==Exit (
		Exit
	) Else (
		Cls
		Title Debug Menu Error!
		Echo Error! Enter one of the listed commands. Returning to the Debug Menu...
		Echo.
		Pause
		Cls
		Goto :DebugMenu
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

:DebugCMD
	Cls
	Title Debug Command Prompt
	Echo -----Debug Menu Command Prompt-----
	Echo -Type "Back" to return to the Debug Menu.
	Echo -Type any Command Prompt Batch command to run that command.
	Echo.
	Set /P CMD=Enter a command: 
	If /I "%~1%CMD%"=="Back" (
		Goto :DebugMenu
	) Else (
		Echo.
		%CMD%
		::%~1%CMD%
		Echo.
		Pause
		Goto :DebugCMD
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
	
:DebugPS
	Cls
	Title Debug Power Shell
	