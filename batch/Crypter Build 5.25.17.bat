::PROGRAM HEADER::
::****************************************************
::*Program......: Crypter.bat                        *
::*Written By...: Joshua Ciffer                      *
::*Date.........: 5/25/2017                          *
::*Version......: Pre-Alpha                          *
::****************************************************

::Debug List::
REM All user inputs crash when a space or return is entered.
REM Not all CMD Commands work in the debug menu.
REM when you go to another menu from the main menu, then go back to the main menu, and press enter, you go back to that last menu you were at.
REM Add ability to turn on an off expansions and extensiosn in the debug menu
REM Add to the help menu with instructions.
REM Fix the god damn encryption and decryption menus.
REM Fix Debug Goto Menu

::START OF PROGRAM::
::Program Initialization::
:ProgramInitialization
	@Echo off
	Cls
	Title Initializing Crypter...
	Color 1F
	SetLocal EnableExtensions
	SetLocal EnableDelayedExpansion
	Set SaveFile=pm
	Cls
	Goto :MainMenu
::Fatal Error Prevention
	Goto :FatalErrorPrevention
	
::Main Menu::
:MainMenu
	Cls
	Title Main Menu
	Echo Crypter Version: 5.25.2017
	Echo   _____              __         
	Echo  / ___/_____ _____  / /____ ____
	Echo / /__/ __/ // / _ \/ __/ -_) __/
	Echo \___/_/  \_/ / /__/\__/\__/_/   
	Echo         /___/_/                 
	Echo.
	Echo -Type "Encrypt" to go to the Encryption Menu.
	Echo -Type "Decrypt" to go to the Decryption Menu.
	Echo -Type "Help" for instructions.
	Echo -Type "Options" for other settings and debugging.
	Echo -Type "About" for credits.
	Echo -Type "Exit" to close the program.
	Echo.
	Set /P MainMenu=Enter an option: 
	If /I %MainMenu%==Encrypt (
			Goto :EncryptionMenu 
		) Else If /I %MainMenu%==Decrypt (
			Goto :DecryptionMenu
		) Else If /I %MainMenu%==Help (
			Goto :HelpMenu
		) Else If /I %MainMenu%==Options (
			Goto :Options
		) Else If /I %MainMenu%==About (
			Goto :About
		) Else If /I %MainMenu%==Exit (
			Exit
		) Else (
			Cls
			Title Main Menu Error^^!
			Echo    ____                   __  
			Echo   / __/__________  ____  / /  
			Echo  / _// __/ __/ _ \/ __/ /_/   
			Echo /___/_/ /_/  \___/_/   (_^)    
			Echo.
			Echo Error^^! Enter one of the given options. Press any key to return to the Main Menu...
			Pause >nul
			Cls
			Goto :MainMenu
		)
::Fatal Error Prevention
	Goto :FatalErrorPrevention

::Encryption Menu::
:EncryptionMenu
	Cls
	Title Encryption Menu
	Echo       ____                       __  _             __  ___             
	Echo      / __/__  __________ _____  / /_(_)__  ___    /  ^|/  /__ ___  __ __
    Echo     / _// _ \/ __/ __/ // / _ \/ __/ / _ \/ _ \  / /^|_/ / -_) _ \/ // /
    Echo    /___/_//_/\__/_/  \_/ / /__/\__/_/\___/_//_/ /_/  /_/\__/_//_/\_,_/ 
    Echo                     /___/_/  
	Echo.
	Echo -What would you like to Encrypt?
	Echo -Type "Text" to Encrypt strings of text.
	Echo -Type "Files" to Encrypt files.
	Echo.
	Set /P EncryptionMenu=Enter an option: 
	If /I %EncryptionMenu%==Text (
		Goto :TextEncryption
	) Else If /I %EncryptionMenu%==Files (
		Goto :FilesEncryption
	) Else (
		Cls
		Title Encryption Menu Error^^!
		Echo    ____                   __  
		Echo   / __/__________  ____  / /  
		Echo  / _// __/ __/ _ \/ __/ /_/   
		Echo /___/_/ /_/  \___/_/   (_^)    
		Echo.
		Echo Error^^! Enter one of the given options. Press any key to return to the Encryption Menu...
		Pause >nul
		Cls
		Goto :EncryptionMenu
	)
::Fatal Error Prevention
	Goto :FatalErrorPrevention	

:TextEncryption

:FilesEncryption
	Pause
	Pause
	(set CHAR[a]=UDFM45) & (set CHAR[b]=H21DGF) & (set CHAR[c]=FDH56D) & (set CHAR[d]=FGS546) & (set CHAR[e]=JUK4JH)
	(set CHAR[f]=ERG54S) & (set CHAR[g]=T5H4FD) & (set CHAR[h]=RG641G) & (set CHAR[i]=RG4F4D) & (set CHAR[j]=RT56F6)
	(set CHAR[k]=VCBC3B) & (set CHAR[l]=F8G9GF) & (set CHAR[m]=FD4CJS) & (set CHAR[n]=G423FG) & (set CHAR[o]=F45GC2)
	(set CHAR[p]=TH5DF5) & (set CHAR[q]=CV4F6R) & (set CHAR[r]=XF64TS) & (set CHAR[s]=X78DGT) & (set CHAR[t]=TH74SJ)
	(set CHAR[u]=BCX6DF) & (set CHAR[v]=FG65SD) & (set CHAR[w]=4KL45D) & (set CHAR[x]=GFH3F2) & (set CHAR[y]=GH56GF)
	(set CHAR[z]=45T1FG) & (set CHAR[1]=D4G23D) & (set CHAR[2]=GB56FG) & (set CHAR[3]=SF45GF) & (set CHAR[4]=P4FF12) 
	(set CHAR[5]=F6DFG1) & (set CHAR[6]=56FG4G) & (set CHAR[7]=USGFDG) & (set CHAR[8]=FKHFDG) & (set CHAR[9]=IFGJH6) 
	(set CHAR[0]=87H8G7) & (set CHAR[@]=G25GHF) & (set CHAR[#]=45FGFH) & (set CHAR[$]=75FG45) & (set CHAR[*]=54GDH5)
	(set CHAR[(]=45F465) & (set CHAR[.]=HG56FG) & (set CHAR[,]=DF56H4) & (set CHAR[-]=F5JHFH) & (set CHAR[ ]=SGF4HF)
	(set CHAR[\]=45GH45) & (set CHAR[/]=56H45G)
	Echo.
	Set /P String=Enter a string to Encrypt: 
	Set %String%==%Char%
	
	Echo %Char%
	Pause
	Cls
	Goto :MainMenu

::Fatal Error Prevention
	Goto :FatalErrorPrevention

::Decryption Menu::
:DecryptionMenu
	Cls
	Title Decrypt Menu

::Loop
set savefile=on
::set Decrypt=Nothing
	(set CHAR[UDFM45]=a) & (set CHAR[H21DGF]=b) & (set CHAR[FDH56D]=c) & (set CHAR[FGS546]=d) & (set CHAR[JUK4JH]=e)
	(set CHAR[ERG54S]=f) & (set CHAR[T5H4FD]=g) & (set CHAR[RG641G]=h) & (set CHAR[RG4F4D]=i) & (set CHAR[RT56F6]=j)
	(set CHAR[VCBC3B]=k) & (set CHAR[F8G9GF]=l) & (set CHAR[FD4CJS]=m) & (set CHAR[G423FG]=n) & (set CHAR[F45GC2]=o)
	(set CHAR[TH5DF5]=p) & (set CHAR[CV4F6R]=q) & (set CHAR[XF64TS]=r) & (set CHAR[X78DGT]=s) & (set CHAR[TH74SJ]=t)
	(set CHAR[BCX6DF]=u) & (set CHAR[FG65SD]=v) & (set CHAR[4KL45D]=w) & (set CHAR[GFH3F2]=x) & (set CHAR[GH56GF]=y)
	(set CHAR[45T1FG]=z) & (set CHAR[D4G23D]=1) & (set CHAR[GB56FG]=2) & (set CHAR[SF45GF]=3) & (set CHAR[P4FF12]=4)
	(set CHAR[F6DFG1]=5) & (set CHAR[56FG4G]=6) & (set CHAR[USGFDG]=7) & (set CHAR[FKHFDG]=8) & (set CHAR[IFGJH6]=9)
	(set CHAR[87H8G7]=0) & (set CHAR[G25GHF]=@) & (set CHAR[45FGFH]=#) & (set CHAR[75FG45]=$) & (set CHAR[54GDH5]=*)
	(set CHAR[45F465]=() & (set CHAR[HG56FG]=.) & (set CHAR[DF56H4]=,) & (set CHAR[F5JHFH]=-) & (set CHAR[SGF4HF]= )
	(set CHAR[45GH45]=\) & (set CHAR[56H45G]=/)
	echo Enter a string to decrypt:
	set /p Decrypt=
	cls
	set Decrypt2=%Decrypt%
	set "DecryptOut="
:decrypt2
	set char=%Decrypt2:~0,6%
	set Decrypt2=%Decrypt2:~3%
	set DecryptOut=%DecryptOut%!CHAR[%char%]!
	if not "%Decrypt2%"=="" goto decrypt2
	echo Input string: %Decrypt%
	echo.
	echo Output string: %DecryptOut%
	set string=%DecryptOut%
	set temp_str=%string%
	set str_len=0
::Fatal Error Prevention
	Goto :FatalErrorPrevention

::Help Menu::
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
	Goto :FatalErrorPrevention

::Options Menu::
:Options
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
	Echo -Type "Goto" to goto a specified section of the program.
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
		Goto :DebugMenu
	) Else If /I %DebugMenu%==On (
		@Echo on
		Goto :DebugMenu
	) Else If /I %DebugMenu%==EE (
		SetLocal ENABLEEXTENSIONS
		Goto :DebugMenu
	) Else If /I %DebugMenu%==DE (
		SetLocal DISABLEEXTENSIONS
		Goto :DebugMenu
	) Else If /I %DebugMenu%==EDE (
		SetLocal ENABLEDELAYEDEXPANSION
		Goto :DebugMenu
	) Else If /I %DebugMenu%==DDE (
		SetLocal DISABLEDELAYEDEXPANSION
		Goto :DebugMenu
	) Else If /I %DebugMenu%==Goto (
		Goto :DebugGoto
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
	Goto :FatalErrorPrevention

:DebugGoto
	Echo.
	Echo -----Program Outline-----
	Echo -ProgramInitialization
	Echo -MainMenu
	Echo -EncryptionMenu
	Echo -TextEncryption
	Echo -FilesEncryption
	Echo -DecryptionMenu
	Echo -HelpMenu
	Echo -DebugPassword
	Echo -DebugMenu
	Echo -DebugCMD
	Echo -DebugPS
	Echo -About
	Echo -FatalErrorPrevention
	Echo.
	Set /P %DebugGoto%=Which section of the program do you want to goto: 
	Cls
	Echo %DebugGoto%
	Pause
	Goto %DebugGoto%
		
:DebugCMD
	Cls
	Title Debug Command Prompt
	Echo -----Debug Menu Command Prompt-----
	Echo -Type "Debug" to return to the Debug Menu.
	Echo -Type "Menu" to return to the Main Menu.
	Echo -Type "Initialize" to Re-Initialize the program.
	Echo -Type any Command Prompt Batch command to run that command.
	Echo.
	Set /P CMD=Enter a command: 
	If /I %CMD%==Debug Goto :Debug
	If /I %CMD%==Menu Goto :MainMenu
	If /I %CMD%==Initialize (
		Goto :Initialization
	) Else (
		%CMD%
		Echo.
		Pause
		Goto :DebugCMD
	)
::Fatal Error Prevention
	Goto :FatalErrorPrevention
	
:DebugPS
	Cls
	Title Debug Power Shell
	
::About::
:About
	Cls
	Title About
	Echo    ___   __             __ 
	Echo   / _ ^| / /  ___  __ __/ /_
	Echo  / __ ^|/ _ \/ _ \/ // / __/
	Echo /_/ ^|_/_.__/\___/\_,_/\__/                 
	Echo.
	Echo -Program Version: 5.25.2017
	Echo -Programming By: Joshua Ciffer
	Echo -Programming Resources: https://www.ss64.com/nt/
	Echo 	-Batch Commands Guide
	Echo -ASCII Text By: https://www.Patorjk.com/Software/Taag/ 
	Echo 	-Font: Small Slant
    Echo.
	Echo Press any key to return to the Main Menu...
	Pause >nul
	Cls
	Goto :MainMenu
::Fatal Error Prevention
	Goto :FatalErrorPrevention
	
::Fatal Error Prevention::
:FatalErrorPrevention
	Else (
		Cls
		Title FATAL ERROR^^!
		Echo    ____                   __  
		Echo   / __/__________  ____  / /  
		Echo  / _// __/ __/ _ \/ __/ /_/   
		Echo /___/_/ /_/  \___/_/   (_^)    
		Echo.
		Echo An unhandled exeption has occoured. Press any key to restart the program... 
		Pause >nul
		Cls
		Goto :ProgramInitialization
		Pause
		Exit
	)

::END OF PROGRAM::