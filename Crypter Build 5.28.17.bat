::PROGRAM HEADER::
::****************************************************
::*Program......: Crypter.bat                        *
::*Written By...: Joshua Ciffer                      *
::*Date.........: 5/28/2017                          *
::*Version......: Pre-Alpha                          *
::****************************************************

::Debug List::
REM All user inputs crash when a space or return is entered.
REM when you go to another menu from the main menu, then go back to the main menu, and press enter, you go back to that last menu you were at.
REM Add ability to turn on an off expansions and extensiosn in the debug menu
REM Add to the help menu with instructions.
REM Fix the god damn encryption and decryption menus.

::START OF PROGRAM::
:ProgramInitialization
	@Echo off
	Title Initializing Crypter...
	Color 1F
	SetLocal EnableExtensions
	SetLocal EnableDelayedExpansions
	Cls
	Goto :MainMenu
	
:MainMenu
	Cls
	Title Main Menu
	Echo Crypter Version: 5.28.2017
	Echo   _____              __         
	Echo  / ___/_____ _____  / /____ ____
	Echo / /__/ __/ // / _ \/ __/ -_) __/
	Echo \___/_/  \_/ / /__/\__/\__/_/   
	Echo         /___/_/                 
	Echo.
	Echo -Type "Encrypt" to go to the Encryption Menu.
	Echo -Type "Decrypt" to go to the Decryption Menu.
	Echo -Type "Help" for instructions.
	Echo -Type "Options" for other settings.
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

:EncryptionMenu
	Cls
	Title Encryption Menu
	Echo       ____                       __  _             __  ___             
	Echo      / __/__  __________ _____  / /_(_)__  ___    /  ^|/  /__ ___  __ __
    Echo     / _// _ \/ __/ __/ // / _ \/ __/ / _ \/ _ \  / /^|_/ / -_) _ \/ // /
    Echo    /___/_//_/\__/_/  \_/ / /__/\__/_/\___/_//_/ /_/  /_/\__/_//_/\_,_/ 
    Echo                     /___/_/  
	Echo.
	Echo -Type "Text" to Encrypt text.
	Echo -Type "Files" to Encrypt files.
	Echo.
	Set /P EncryptionMenu=What would you like to Encrypt?: 
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
(set CHAR[a]=UDFM45) & (set CHAR[b]=H21DGF) & (set CHAR[c]=FDH56D) & (set CHAR[d]=FGS546) & (set CHAR[e]=JUK4JH)
(set CHAR[f]=ERG54S) & (set CHAR[g]=T5H4FD) & (set CHAR[h]=RG641G) & (set CHAR[i]=RG4F4D) & (set CHAR[j]=RT56F6)
(set CHAR[k]=VCBC3B) & (set CHAR[l]=F8G9GF) & (set CHAR[m]=FD4CJS) & (set CHAR[n]=G423FG) & (set CHAR[o]=F45GC2)
(set CHAR[p]=TH5DF5) & (set CHAR[q]=CV4F6R) & (set CHAR[r]=XF64TS) & (set CHAR[s]=X78DGT) & (set CHAR[t]=TH74SJ)
(set CHAR[u]=BCX6DF) & (set CHAR[v]=FG65SD) & (set CHAR[w]=4KL45D) & (set CHAR[x]=GFH3F2) & (set CHAR[y]=GH56GF)
(set CHAR[z]=45T1FG) & (set CHAR[1]=D4G23D) & (set CHAR[2]=GB56FG) & (set CHAR[3]=SF45GF) & (set CHAR[4]=P4FF12) 
(set CHAR[5]=F6DFG1) & (set CHAR[6]=56FG4G) & (set CHAR[7]=USGFDG) & (set CHAR[8]=FKHFDG) & (set CHAR[9]=IFGJH6) 
(set CHAR[0]=87H8G7) & (set CHAR[@]=G25GHF) & (set CHAR[#]=45FGFH) & (set CHAR[$]=75FG45) & (set CHAR[*]=54GDH5)
(set CHAR[(]=45F465) & (set CHAR[.]=HG56FG) & (set CHAR[,]=DF56H4) & (set CHAR[-]=F5JHFH) & (set CHAR[ ]=SGF4HF)
(set CHAR[\]=45GH45) & (set CHAR[/]=56H45G) & (set CHAR[ ]=JE93AD)
echo Enter a string to encrypt:
set /p Encrypt=
cls
set Encrypt2=%Encrypt%
set "EncryptOut="
set /p fuck="Dfdf:
cls
:encrypt2
set char=%Encrypt2:~0,1%
set Encrypt2=%Encrypt2:~1%
set EncryptOut=%EncryptOut%!CHAR[%char%]!
if not "%Encrypt2%"=="" goto encrypt2
echo Input string: %Encrypt%
echo.
echo Output string: %EncryptOut%
set string=%EncryptOut%
set temp_str=%string%
set str_len=0
:lengthloop
if defined temp_str (
set temp_str=%temp_str:~1%
set /A str_len += 1
goto lengthloop )
echo.
echo Output string is %str_len% characters long!
if "%savefile%"=="on" echo.%EncryptOut%>>%~d0%~p0encrypted.txt
echo.
pause
cls
goto mainmenu
	
	::Set %EncryptedInputString%=
	::Echo %InputString%
	Echo.
	Pause
	Goto :TextEncryption
	

:FilesEncryption

::Fatal Error Prevention
	Goto :FatalErrorPrevention

:DecryptionMenu
	Cls
	Title Decryption Menu
	Echo    ___                        __  _             __  ___             
	Echo   / _ \___ __________ _____  / /_(_)__  ___    /  ^|/  /__ ___  __ __
	Echo  / // / -_) __/ __/ // / _ \/ __/ / _ \/ _ \  / /^|_/ / -_) _ \/ // /
	Echo /____/\__/\__/_/  \_/ / /__/\__/_/\___/_//_/ /_/  /_/\__/_//_/\_,_/ 
	Echo              	  /___/_/                                            
	Echo.
	Echo -Type "Text" to Decrypt text.
	Echo -Type "Files" to Decrypt files.
	Echo.
	Set /P DecryptionMenu=What would you like to Decrypt?: 
	If /I %DecryptionMenu%==Text (
		Goto :TextDecryption
	) Else If /I %DecryptionMenu%==Files (
		Goto :FilesDecryption
	) Else (
		Cls
		Title Decryption Menu Error^^!
		Echo    ____                   __  
		Echo   / __/__________  ____  / /  
		Echo  / _// __/ __/ _ \/ __/ /_/   
		Echo /___/_/ /_/  \___/_/   (_^)    
		Echo.
		Echo Error^^! Enter one of the given options. Press any key to return to the Decryption Menu...
		Pause >nul
		Cls
		Goto :DecryptionMenu
	)
::Fatal Error Prevention
	Goto :FatalErrorPrevention	
	
:TextDecryption
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
:lengthloop
if defined temp_str (
set temp_str=%temp_str:~1%
set /A str_len += 1
goto lengthloop )
echo.
echo Output string is %str_len% characters long!
if "%savefile%"=="on" echo.%DecryptOut%>>%~d0%~p0decrypted.txt
echo.
pause
cls
goto mainmenu

:FilesDecryption

::Fatal Error Prevention
	Goto :FatalErrorPrevention
	
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

:Options
	Cls
	Title Options
	Echo   ____       __  _             
	Echo  / __ \___  / /_(_)__  ___  ___
	Echo / /_/ / _ \/ __/ / _ \/ _ \(_-^<
	Echo \____/ /__/\__/_/\___/_//_/___/
	Echo     /_/                        
	Echo.
	Echo -Type "Back" to return to the Main Menu.
	Echo -Type "Initialize" to restart the program.
	Echo -Type "Off" to turn Echo off.
	Echo -Type "On" to turn Echo on.	
	Echo -Type "EE" to Enable Extensions.
	Echo -Type "DE" to Disable Extensions.
	Echo -Type "EDE" to Enable Delayed Expansion.
	Echo -Type "DDE" to Disable Delayed Expansion.
	Echo -Type "Goto" to goto a specified section of the program.
	Echo -Type "CMD" to launch an instance of Command Prompt.
	Echo -Type "PS" to launch an instance of Power Shell.
	Echo -Type "Exit" to close the program.
	Echo.
	Set /P Options=Enter an option: 
	If /I %Options%==Back (
		Goto :MainMenu
	) Else If /I %Options%==Initialize (
		Goto :ProgramInitialization
	) Else If /I %Options%==Off (
		Echo.
		Echo Echo turned off. Press any key to return to Options...
		Pause >nul
		@Echo off
		Goto :Options
	) Else If /I %Options%==On (
		Echo.
		Echo Echo turned on. Press any key to return to Options...
		Pause >nul
		@Echo on
		Goto :Options
	) Else If /I %Options%==EE (
		Echo.
		Echo Extensiosn Enabled. Press any key to return to Options...
		Pause >nul
		SetLocal EnableExtensions
		Goto :Options
	) Else If /I %Options%==DE (
		Echo.
		Echo Extensions Disabled. Press any key to return to Options...
		Pause >nul
		EndLocal
		Goto :Options
	) Else If /I %Options%==EDE (
		Echo.
		Echo Delayed Expansion Enabled. Press any key to return to Options...
		Pause >nul
		SetLocal EnableDelayedExpansion
		Goto :Options
	) Else If /I %Options%==DDE (
		Echo.
		Echo Delayed Expansion Disabled. Press any key to return to Options...
		Pause >nul
		End.Local DisableDelayedExpansion
		Goto :Options
	) Else If /I %Options%==Goto (
		Goto :Goto
	) Else If /I %Options%==CMD (
		Goto :CMD
	) Else If /I %Options%==PS (
		Goto :PS
	) Else If /I %Options%==Exit (
		Exit
	) Else (
		Cls
		Title Options Error^^!
		Echo    ____                   __  
		Echo   / __/__________  ____  / /  
		Echo  / _// __/ __/ _ \/ __/ /_/   
		Echo /___/_/ /_/  \___/_/   (_^)    
		Echo.
		Echo Error^^! Enter one of the given options. Press any key to return to Options...
		Pause >nul
		Cls
		Goto :Options
	)
::Fatal Error Prevention
	Goto :FatalErrorPrevention

:Goto
	Echo.
	Echo Below is an outline of the sections of this program. 
	Echo.
	Echo -ProgramInitialization
	Echo -MainMenu
	Echo -EncryptionMenu
	Echo -TextEncryption
	Echo -FilesEncryption
	Echo -DecryptionMenu
	Echo -TextDecryption
	Echo -FilesDecryption
	Echo -HelpMenu
	Echo -Options
	Echo -Goto
	Echo -CMD
	Echo -PS
	Echo -About
	Echo -FatalErrorPrevention
	Echo.
	Set /P Goto=Which section of the program do you want to goto?: 
	Echo.
	Echo Press any key to jump to %Goto%...
	Pause >nul
	Goto :%Goto%
::Fatal Error Prevention
	Goto :FatalErrorPrevention
		
:CMD
	Cls
	Title CMD
	Echo   _______  ______ 
	Echo  / ___/  ^|/  / _ \
	Echo / /__/ /^|_/ / // /
	Echo \___/_/  /_/____/ 
    Echo.
	Echo -Type "Back" to return to Options.
	Echo -Type any Command Prompt Batch command to run that command.
	Echo.
	Set /P CMD=Enter a command: 
	If /I "%~1%CMD%"=="Back" (
		Goto :Options
	) Else (
		Echo.
		%CMD%
		Echo.
		Pause
		Goto :CMD
	)
::Fatal Error Prevention
	Goto :FatalErrorPrevention
	
:PS
	Cls
	Title PowerShell
	Echo    ___                     ______       ____
	Echo   / _ \___ _    _____ ____/ __/ /  ___ / / /
	Echo  / ___/ _ \ ^|/^|/ / -_) __/\ \/ _ \/ -_) / / 
	Echo /_/   \___/__,__/\__/_/ /___/_//_/\__/_/_/  
	Echo.
	Echo -Type "Back" to return to Options.
	Echo -Type any PowerShell command to run that command.
	Echo.
	Set /P PS=Enter a command: 
	If /I "%~1%PS%"=="Back" (
		Goto :Options
	) Else (
		Echo.
		PowerShell %PS%
		Echo.
		Pause
		Goto :PS
	)
::Fatal Error Prevention
	Goto :FatalErrorPrevention
	
:About
	Cls
	Title About
	Echo    ___   __             __ 
	Echo   / _ ^| / /  ___  __ __/ /_
	Echo  / __ ^|/ _ \/ _ \/ // / __/
	Echo /_/ ^|_/_.__/\___/\_,_/\__/                 
	Echo.
	Echo -Program Version: 5.28.2017
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