@echo off
setlocal
:: Author: Joshua Ciffer
:: Version: 03/18/2018
:: This file is the main command that calls subscripts and functions for the Crypter program.

:: To Be Implemented:
:: 		Allow user to specify encryption key from their own file with a command line argument.

:: Program version.
set _version=3.18.18

:: The name of this file.
set _parent=%0

:: The command to execute.
set _command=%1

:: Options and command arguments.
set _arg1=%2
set _arg2=%3
set _arg3=%4
set _arg4=%5
set _arg5=%6

:: Determines command behavior based on what command line arguments were passed.
:parseArgs
(
	if /i "%_command%"=="" (
		call :help
	) else if /i "%_command%"=="help" (
		call :help
	) else if /i "%_command%"=="encrypt" (
		call encrypt %_arg1% %_arg2% %_arg3% %_arg4% %_arg5%
	) else if /i "%command%"=="decrypt" (
		call decrypt %_arg1% %_arg2% %_arg3% %_arg4% %_arg5%
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
	echo About
	echo 	Written by: Joshua Ciffer
	echo 	Version: %_version%
	echo 	Source Code: https://github.com/Joshua-Ciffer/Crypter
	goto :eof
)

:: Called when an incorrect command is called.
:unrecognizedCommand
(
	echo.
	echo Unrecognized command.  Please refer to the command usage.
	call :help
	goto :eof
)

:: End of file.
:eof
(
	exit /b %ERRORLEVEL%
)

endlocal