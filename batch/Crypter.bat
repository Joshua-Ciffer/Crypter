@echo off
setlocal
:: Author: Joshua Ciffer
:: Version: 03/17/2018

set version=3.17.18
title Crypter %version%

:Help
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