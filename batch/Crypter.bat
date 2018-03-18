@echo off
setlocal
:: Author: Joshua Ciffer
:: Version: 03/17/2018
:: This file is the main command that calls subscripts and functions for the Crypter program.

:: To Be Implemented:
:: 		Allow user to specify encryption key from their own file with a command line argument.

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

:: Determines command behavior based on what command line arguments were passed.
:parseArgs
(
	if /i "%command%"=="" (
		call :help
	) else if /i "%command%"=="help" (
		call :help
	) else if /i "%command%"=="encrypt" (
		call encrypt.bat %arg1% %arg2% %arg3% %arg4% %arg5%
	) else if /i "%command%"=="decrypt" (
		call decrypt.bat %arg1% %arg2% %arg3% %arg4% %arg5% %arg6% %arg7% %arg8%
	) else (
		call :unrecognizedCommand
	)
	goto :eof
)
	
:: Displays command usage information.
:help
(
	echo.
	echo Usage: Crypter ^<command^> [^<options^>] [args]
	echo.
	echo Commands:
	echo 	Encrypt
	echo 	Decrypt
	echo 	Help
	echo.
	echo About
	echo 	Written by: Joshua Ciffer
	echo 	Version: %version%
	echo 	Source Code: https://github.com/Joshua-Ciffer/Crypter
	goto :eof
)
	
:unrecognizedCommand
(
	echo.
	echo Unrecognized command.  Please refer to the command usage.
	call :help
	goto :eof
)

:eof
(
	exit /b %ERRORLEVEL%
)
	
endlocal