@echo off
setlocal
:: Author: Joshua Ciffer
:: Version: 03/17/2018
:: This file is the main command that calls subscripts and functions for the Crypter program.

:: Program version.
set version=3.17.18

:: The name of this file.
set parent=%0

:: The command to execute.
set command=%1

:: Options and command arguments.
set arg1=%2
set arg2=%3
set arg3=%4
set arg4=%5
set arg5=%6
set arg6=%7
set arg7=%8
set arg8=%9

echo arg0=%parent% arg1=%command% arg2=%arg1% arg3=%arg2% arg4=%arg3% arg5=%arg4% arg6=%arg5% arg7=%arg6% arg8=%arg7% arg9=%arg8%
	
:: Determines command behavior based on what command line arguments were passed.
:parseArgs
	if "%command%"=="" (
		call :help
	) else if /i "%command%"=="help" (
		call :help
	) else if /i "%command%"=="encrypt" (
		call encrypt.bat %arg1% %arg2% %arg3% %arg4% %arg5% %arg6% %arg7% %arg8%
	) else if /i "%command%"=="decrypt" (
		call decrypt.bat %arg1% %arg2% %arg3% %arg4% %arg5% %arg6% %arg7% %arg8%
	) else (
		echo.
		echo Unrecognized command.
		call :help
	)
	goto:eof
	
:help
	echo.
	echo Usage: Crypter ^<command^> [^<options^>] [args]
	echo.
	echo Commands:
	echo 	Encrypt
	echo 		Usage: Crypter Encrypt [^<options^>] [args]		
	echo 		Options:
	echo 			-f 	Encrypts a text file.
	echo 			-s 	Saves encrypted output to a specefied file.
	echo 			-h 	Displays command usage help.
	echo 	Decrypt
	echo 		Usage: Crypter Decrypt [^<options^>] [args]
	echo 		Options:
	echo 			-h 	Displays command usage help.
	echo 	Help	Displays information about command usage.
	echo 		Usage: Crypter Help
	echo About
	echo 	Written by: Joshua Ciffer
	echo 	Version: %version%
	echo 	Source Code: https://github.com/Joshua-Ciffer/Crypter
	goto:eof

endlocal