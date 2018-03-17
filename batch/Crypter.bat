@echo off
setlocal
:: Author: Joshua Ciffer
:: Version: 03/17/2018

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


:Help
	echo usage: Crypter <command> [<options>] [args]

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
:eof
	exit 0