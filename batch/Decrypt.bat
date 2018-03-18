@echo off
setlocal
:: Author: Joshua Ciffer
:: Version: 03/18/2018
:: This file executes commands to decrypt text.

:: Options and command line arguments.
set arg1=%1
set arg2=%2
set arg3=%3
set arg4=%4
set arg5=%5

:: The method of text input.  Determined by command argument.
:: -string sets inputMode=string
:: -file sets inputMode=file
set inputMode=

:: The path of the input file.  Only used if -file is used.
set inputPath=

:: Determines whether or not decrypted output will be saved to a file.  Determined by command argument.
:: -save sets saveOutput=true
:: No argument sets saveOutput=false
set saveOutput=

:: The path of the output file.  Only used if -save is used.
set outputPath=

:: Determines command behavior based on what command line arguments were passed.
:parseArgs
(
	if /i "%arg1%"=="" (
		call :help
	) else if /i "%arg1%"=="-help" (
		if /i "%arg2%"=="" (
			call :help
		) else (
			call :incorrectOptionUse
		)
	) else if /i "%arg1%"=="-string" (
		set inputMode=string
		if /i "%arg2%"=="" (
			set saveOutput=false
			java -cp ../bin src.crypter.Main
		) else if /i "%arg2%"=="-save" (
			set saveOutput=true
			if /i "%arg3%"=="" (
				call :incorrectOptionUse
			) else (
				set outputPath=%arg3%
				java -cp ../bin src.crypter.Main
			)
		) else (
			call :incorrectOptionUse
		)
	) else if /i "%arg1%"=="-file" (
		set inputMode=file
		if /i "%arg2%"=="" (
			call :incorrectOptionUse
		) else (
			if /i "%arg3%"=="-save" (
				if /i "%arg4%"=="" (
					call :incorrectOptionUse
				) else (
					java -cp ../bin src.crypter.Main
				)
			) else (
				java -cp ../bin src.crypter.Main
			)
		)
	) else (
		call :incorrectOptionUse
	)
	goto :eof
)

:: Displays command usage information.
:help
(
	echo.
	echo Usage: Crypter Decrypt [-help] ^| [-string ^| [-file input-path]] [-save output-path]
	echo.
	echo Options:
	echo 	-help		Displays command usage help.
	echo 	-string		Decrypts an inputted string of text.
	echo 	-file		Decrypts a specefied text file.
	echo 	-save		Saves decrypted output to a specefied file.
	echo About
	echo 	Written by: Joshua Ciffer
	echo 	Version: %version%
	echo 	Source Code: https://github.com/Joshua-Ciffer/Crypter
	goto :eof
)

:: Called when incorrect options are called.
:incorrectOptionUse
(
	echo.
	echo Incorrect use of options.  Please refer to the command usage.
	call :help
	goto :eof
)

:: End of file.
:eof
(
	exit /b %ERRORLEVEL%
)
	
endlocal