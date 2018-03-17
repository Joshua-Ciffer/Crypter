@echo off
setlocal
:: Author: Joshua Ciffer
:: Version: 03/17/2018

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