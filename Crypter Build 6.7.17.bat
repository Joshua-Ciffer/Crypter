::PROGRAM HEADER::
::****************************************************
::*Program......: Crypter.bat                        *
::*Written By...: Joshua Ciffer                      *
::*Date.........: 6/7/2017                           *
::*Version......: Alpha                              *
::****************************************************

::Debug List::
REM User Input crashes when " are entered

::START OF PROGRAM::
:ProgramInitialization
	@Echo off
	Title Initializing Crypter...
	Color 1F
	SetLocal EnableExtensions
	SetLocal EnableDelayedExpansion
	Cls
	Goto :MainMenu

:MainMenu
	Cls
	Title Main Menu
	Echo Crypter Version: 6.7.2017
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
	If /I "%MainMenu%"=="Encrypt" (
		Set "MainMenu="
		Goto :EncryptionMenu
	) Else If /I "%MainMenu%"=="Decrypt" (
		Set "MainMenu="
		Goto :DecryptionMenu
	) Else If /I "%MainMenu%"=="Help" (
		Set "MainMenu="
		Goto :Help
	) Else If /I "%MainMenu%"=="Options" (
		Set "MainMenu="
		Goto :Options
	) Else If /I "%MainMenu%"=="About" (
		Set "MainMenu="
		Goto :About
	) Else If /I "%MainMenu%"=="Exit" (
		Set "MainMenu="
		Exit
	) Else (
		Set "MainMenu="
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

:EncryptionMenu
	Cls
	Title Encryption Menu
	Echo       ____                       __  _             __  ___
	Echo      / __/__  __________ _____  / /_(_)__  ___    /  ^|/  /__ ___  __ __
	Echo     / _// _ \/ __/ __/ // / _ \/ __/ / _ \/ _ \  / /^|_/ / -_) _ \/ // /
	Echo    /___/_//_/\__/_/  \_/ / /__/\__/_/\___/_//_/ /_/  /_/\__/_//_/\_,_/
	Echo                     /___/_/
	Echo.
	Echo -Type "Back" to return to the Main Menu.
	Echo -Type "Text" to Encrypt text.
	Echo -Type "Files" to Encrypt files.
	Echo.
	Set /P EncryptionMenu=What would you like to Encrypt?:
	If /I "%EncryptionMenu%"=="Back" (
		Set "EncryptionMenu="
		Goto :MainMenu
	) Else If /I "%EncryptionMenu%"=="Text" (
		Set "EncryptionMenu="
		Goto :TextEncryption
	) Else If /I "%EncryptionMenu%"=="Files" (
		Set "EncryptionMenu="
		Goto :FilesEncryption
	) Else (
		Set "EncryptionMenu="
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
	Echo -Type "Back" to return to the Main Menu.
	Echo -Type "Text" to Decrypt text.
	Echo -Type "Files" to Decrypt files.
	Echo.
	Set /P DecryptionMenu=What would you like to Decrypt?:
	If /I "%DecryptionMenu%"=="Back" (
		Set "DecryptionMenu="
		Goto :MainMenu
	) Else If /I "%DecryptionMenu%"=="Text" (
		Set "DecryptionMenu="
		Goto :TextDecryption
	) Else If /I "%DecryptionMenu%"=="Files" (
		Set "DecryptionMenu="
		Goto :FilesDecryption
	) Else (
		Set "DecryptionMenu="
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

:Help
	Cls
	Title Help
	Echo    __ __    __
	Echo   / // /__ / /__
	Echo  / _  / -_) / _ \
	Echo /_//_/\__/_/ /__/
	Echo           /_/
	Echo.
	Echo -
	Echo -
	Echo.
	Echo Press any key to return to the Main Menu...
	Pause >nul
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
	If /I "%Options%"=="Back" (
		Set "Options="
		Goto :MainMenu
	) Else If /I "%Options%"=="Initialize" (
		Set "Options="
		Goto :ProgramInitialization
	) Else If /I "%Options%"=="Off" (
		Set "Options="
		Echo.
		Echo Echo turned off. Press any key to return to Options...
		Pause >nul
		@Echo off
		Goto :Options
	) Else If /I "%Options%"=="On" (
		Set "Options="
		Echo.
		Echo Echo turned on. Press any key to return to Options...
		Pause >nul
		@Echo on
		Goto :Options
	) Else If /I "%Options%"=="EE" (
		Set "Options="
		Echo.
		Echo Extensions Enabled. Press any key to return to Options...
		Pause >nul
		SetLocal EnableExtensions
		Goto :Options
	) Else If /I "%Options%"=="DE" (
		Set "Options="
		Echo.
		Echo Extensions Disabled. Press any key to return to Options...
		Pause >nul
		EndLocal
		Goto :Options
	) Else If /I "%Options%"=="EDE" (
		Set "Options="
		Echo.
		Echo Delayed Expansion Enabled. Press any key to return to Options...
		Pause >nul
		SetLocal EnableDelayedExpansion
		Goto :Options
	) Else If /I "%Options%"=="DDE" (
		Set "Options="
		Echo.
		Echo Delayed Expansion Disabled. Press any key to return to Options...
		Pause >nul
		SetLocal DisableDelayedExpansion
		Goto :Options
	) Else If /I "%Options%"=="Goto" (
		Set "Options="
		Goto :Goto
	) Else If /I "%Options%"=="CMD" (
		Set "Options="
		Goto :CMD
	) Else If /I "%Options%"=="PS" (
		Set "Options="
		Goto :PS
	) Else If /I "%Options%"=="Exit" (
		Set "Options="
		Exit
	) Else (
		Set "Options="
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
	Echo -Help
	Echo -Options
	Echo -Goto
	Echo -CMD
	Echo -PS
	Echo -About
	Echo -FatalErrorPrevention
	Echo.
	Set /P Goto=Which section of the program do you want to goto?:
	If /I "%Goto%"=="ProgramInitialization" (
		Echo.
		Echo Press any key to jump to %Goto%...
		Pause >nul
		Goto :%Goto%
		Set "Goto="
	) Else If /I "%Goto%"=="MainMenu" (
		Echo.
		Echo Press any key to jump to %Goto%...
		Pause >nul
		Goto :%Goto%
		Set "Goto="
	) Else If /I "%Goto%"=="EncryptionMenu" (
		Echo.
		Echo Press any key to jump to %Goto%...
		Pause >nul
		Goto :%Goto%
		Set "Goto="
	) Else If /I "%Goto%"=="TextEncryption" (
		Echo.
		Echo Press any key to jump to %Goto%...
		Pause >nul
		Goto :%Goto%
		Set "Goto="
	) Else If /I "%Goto%"=="FilesEncryption" (
		Echo.
		Echo Press any key to jump to %Goto%...
		Pause >nul
		Goto :%Goto%
		Set "Goto="
	) Else If /I "%Goto%"=="DecryptionMenu" (
		Echo.
		Echo Press any key to jump to %Goto%...
		Pause >nul
		Goto :%Goto%
		Set "Goto="
	) Else If /I "%Goto%"=="TextDecryption" (
		Echo.
		Echo Press any key to jump to %Goto%...
		Pause >nul
		Goto :%Goto%
		Set "Goto="
	) Else If /I "%Goto%"=="FilesDecryption" (
		Echo.
		Echo Press any key to jump to %Goto%...
		Pause >nul
		Goto :%Goto%
		Set "Goto="
	) Else If /I "%Goto%"=="Help" (
		Echo.
		Echo Press any key to jump to %Goto%...
		Pause >nul
		Goto :%Goto%
		Set "Goto="
	) Else If /I "%Goto%"=="Options" (
		Echo.
		Echo Press any key to jump to %Goto%...
		Pause >nul
		Goto :%Goto%
		Set "Goto="
	) Else If /I "%Goto%"=="Goto" (
		Echo.
		Echo Press any key to jump to %Goto%...
		Pause >nul
		Goto :%Goto%
		Set "Goto="
	) Else If /I "%Goto%"=="CMD" (
		Echo.
		Echo Press any key to jump to %Goto%...
		Pause >nul
		Goto :%Goto%
		Set "Goto="
	) Else If /I "%Goto%"=="PS" (
		Echo.
		Echo Press any key to jump to %Goto%...
		Pause >nul
		Goto :%Goto%
		Set "Goto="
	) Else If /I "%Goto%"=="About" (
		Echo.
		Echo Press any key to jump to %Goto%...
		Pause >nul
		Goto :%Goto%
		Set "Goto="
	) Else If /I "%Goto%"=="FatalErrorPrevention" (
		Echo.
		Echo Press any key to jump to %Goto%...
		Pause >nul
		Goto :%Goto%
		Set "Goto="
	) Else (
		Set "Options="
		Echo.
		Echo Error^^! The section you entered doesn't exist. Press any key to return to Options...
		Pause >nul
		Cls
		Goto :Options
	)

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
		Set "CMD="
		Goto :Options
	) Else (
		Set "CMD="
		Echo.
		%CMD%
		Echo.
		Pause
		Goto :CMD
	)

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
		Set "PS="
		Goto :Options
	) Else (
		Set "PS="
		Echo.
		PowerShell %PS%
		Echo.
		Pause
		Goto :PS
	)

:About
	Cls
	Title About
	Echo    ___   __             __
	Echo   / _ ^| / /  ___  __ __/ /_
	Echo  / __ ^|/ _ \/ _ \/ // / __/
	Echo /_/ ^|_/_.__/\___/\_,_/\__/
	Echo.
	Echo -Program Version: 6.7.2017
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
		Echo An unhandled exception has occurred. Press any key to restart the program...
		Pause >nul
		Cls
		Goto :ProgramInitialization
		Pause
		Exit
	)

::END OF PROGRAM::