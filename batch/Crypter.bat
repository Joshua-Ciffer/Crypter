@echo off
setlocal
:: Author: Joshua Ciffer
:: Version: 03/16/2018

:: Debug List
REM User Input crashes when " are entered

set version=3.17.18

title Crypter %version%
color 1F
cls

:MainMenu
	cls
	echo Crypter Version: %version%
	echo   _____              __
	echo  / ___/_____ _____  / /____ ____
	echo / /__/ __/ // / _ \/ __/ -_) __/
	echo \___/_/  \_/ / /__/\__/\__/_/
	echo         /___/_/
	echo.
	echo -Type "Encrypt" to go to the Encryption Menu.
	echo -Type "Decrypt" to go to the Decryption Menu.
	echo -Type "Help" for instructions.
	echo -Type "Options" for other settings and debugging.
	echo -Type "About" for credits.
	echo -Type "exit" to close the program.
	echo.
	Set /P MainMenu=Enter an option:
	if /I "%MainMenu%"=="Encrypt" (
		Set "MainMenu="
		goto :EncryptionMenu
	) else if /I "%MainMenu%"=="Decrypt" (
		Set "MainMenu="
		goto :DecryptionMenu
	) else if /I "%MainMenu%"=="Help" (
		Set "MainMenu="
		goto :Help
	) else if /I "%MainMenu%"=="Options" (
		Set "MainMenu="
		goto :Options
	) else if /I "%MainMenu%"=="About" (
		Set "MainMenu="
		goto :About
	) else if /I "%MainMenu%"=="exit" (
		Set "MainMenu="
		exit
	) else (
		Set "MainMenu="
		cls
		title Main Menu Error^^!
		echo    ____                   __
		echo   / __/__________  ____  / /
		echo  / _// __/ __/ _ \/ __/ /_/
		echo /___/_/ /_/  \___/_/   (_^)
		echo.
		echo Error^^! Enter one of the given options. Press any key to return to the Main Menu...
		pause >nul
		cls
		goto :MainMenu
	)

:EncryptionMenu
	cls
	title Encryption Menu
	echo       ____                       __  _             __  ___
	echo      / __/__  __________ _____  / /_(_)__  ___    /  ^|/  /__ ___  __ __
	echo     / _// _ \/ __/ __/ // / _ \/ __/ / _ \/ _ \  / /^|_/ / -_) _ \/ // /
	echo    /___/_//_/\__/_/  \_/ / /__/\__/_/\___/_//_/ /_/  /_/\__/_//_/\_,_/
	echo                     /___/_/
	echo.
	echo -Type "Back" to return to the Main Menu.
	echo -Type "Text" to Encrypt text.
	echo -Type "Files" to Encrypt files.
	echo.
	Set /P EncryptionMenu=What would you like to Encrypt?:
	if /I "%EncryptionMenu%"=="Back" (
		Set "EncryptionMenu="
		goto :MainMenu
	) else if /I "%EncryptionMenu%"=="Text" (
		Set "EncryptionMenu="
		goto :TextEncryption
	) else if /I "%EncryptionMenu%"=="Files" (
		Set "EncryptionMenu="
		goto :FilesEncryption
	) else (
		Set "EncryptionMenu="
		cls
		title Encryption Menu Error^^!
		echo    ____                   __
		echo   / __/__________  ____  / /
		echo  / _// __/ __/ _ \/ __/ /_/
		echo /___/_/ /_/  \___/_/   (_^)
		echo.
		echo Error^^! Enter one of the given options. Press any key to return to the Encryption Menu...
		pause >nul
		cls
		goto :EncryptionMenu
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
	::echo %InputString%
	echo.
	pause
	goto :TextEncryption


:FilesEncryption

::Fatal Error Prevention
	goto :FatalErrorPrevention

:DecryptionMenu
	cls
	title Decryption Menu
	echo    ___                        __  _             __  ___
	echo   / _ \___ __________ _____  / /_(_)__  ___    /  ^|/  /__ ___  __ __
	echo  / // / -_) __/ __/ // / _ \/ __/ / _ \/ _ \  / /^|_/ / -_) _ \/ // /
	echo /____/\__/\__/_/  \_/ / /__/\__/_/\___/_//_/ /_/  /_/\__/_//_/\_,_/
	echo              	  /___/_/
	echo.
	echo -Type "Back" to return to the Main Menu.
	echo -Type "Text" to Decrypt text.
	echo -Type "Files" to Decrypt files.
	echo.
	Set /P DecryptionMenu=What would you like to Decrypt?:
	if /I "%DecryptionMenu%"=="Back" (
		Set "DecryptionMenu="
		goto :MainMenu
	) else if /I "%DecryptionMenu%"=="Text" (
		Set "DecryptionMenu="
		goto :TextDecryption
	) else if /I "%DecryptionMenu%"=="Files" (
		Set "DecryptionMenu="
		goto :FilesDecryption
	) else (
		Set "DecryptionMenu="
		cls
		title Decryption Menu Error^^!
		echo    ____                   __
		echo   / __/__________  ____  / /
		echo  / _// __/ __/ _ \/ __/ /_/
		echo /___/_/ /_/  \___/_/   (_^)
		echo.
		echo Error^^! Enter one of the given options. Press any key to return to the Decryption Menu...
		pause >nul
		cls
		goto :DecryptionMenu
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
	goto :FatalErrorPrevention

:Help
	cls
	title Help
	echo    __ __    __
	echo   / // /__ / /__
	echo  / _  / -_) / _ \
	echo /_//_/\__/_/ /__/
	echo           /_/
	echo.
	echo -
	echo -
	echo.
	echo Press any key to return to the Main Menu...
	pause >nul
	cls
	goto :MainMenu

:About
	cls
	title About
	echo    ___   __             __
	echo   / _ ^| / /  ___  __ __/ /_
	echo  / __ ^|/ _ \/ _ \/ // / __/
	echo /_/ ^|_/_.__/\___/\_,_/\__/
	echo.
	echo -Program Version: %version%
	echo -Programming By: Joshua Ciffer
	echo -Programming Resources: https://www.ss64.com/nt/
	echo 	-Batch Commands Guide
	echo -ASCII Text By: https://www.Patorjk.com/Software/Taag/
	echo 	-Font: Small Slant
	echo.
	echo Press any key to return to the Main Menu...
	pause >nul
	cls
	goto :MainMenu

endlocal