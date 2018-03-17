@echo off
setlocal
:: Author: Joshua Ciffer
:: Version: 03/17/2018
:: This file executes commands to encrypt text.

echo Inside encrypt.bat

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

:: Determines whether or not encrypted output will be saved to a file.  Determined by command argument.
:: -save sets saveOutput=true
:: No argument sets saveOutput=false
set saveOutput=

:: The path of the input file.  Only used if -file is used.
set inputPath=

:: The path of the output file.  Only used if -save is used.
set outputPath=

set error=

:: Determines command behavior based on what command line arguments were passed.
:parseArgs (
	echo arg0=%0 arg1=%1 arg2=%2 arg3=%3 arg4=%4
	echo test4
	if /i "%arg1%"=="" (
		call :help
		echo test3
	) else if /i "%arg1%"=="-help" (
		if /i "%arg2%"=="" (
			call :help
		) else (
			call :incorrectOptionUse
		)
		echo test1
	) else if /i "%arg1%"=="-string" (
		set inputMode=string
		if /i "%arg2%"=="-save" (
			if /i "%arg4%"="" (
				set saveOutput=true
				set outputPath=%~f3
				:: Encrypt
			) else (
				call :incorrectOptionUse
			)
		) else (
			if /i "%arg2%"=="" (
				set saveOutput=false
				:: Encrypt
			) else (
				call :incorrectOptionUse
			)
		)
		echo test2
	) else if /i "%arg1%"=="-file" (
		set inputMode=file
		set inputPath=%~f2
		if /i "%arg3%"=="-save" (
			if /i "%arg5%"="" (
				set saveOutput=true
				set outputPath=%~f4
				:: Encrypt
			) else (
				call :incorrectOptionUse
			)
		) else (
			if /i "%arg%3"=="" (
				set saveOutput=false
				:: Encrypt
			) else (
				call :incorrectOptionUse
			)
		)
	) else (
		call :incorrectOptionUse
	)
	goto :eof
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

:incorrectOptionUse
	echo.
	echo Incorrect usage of options.  Please refer to the command usage.
	call :help
	goto :eof
	
:help
	echo.
	echo Usage: Crypter Encrypt [-help] ^| [-string ^| [-file input-path]] [-save output-path]
	echo.
	echo Options:
	echo 	-help 		Displays command usage help.
	echo 	-string 	Encrypts an inputted string of text.
	echo 	-file 		Encrypts a specefied text file.
	echo 	-save 		Saves encrypted output to a specefied file.
	echo About
	echo 	Written by: Joshua Ciffer
	echo 	Version: %version%
	echo 	Source Code: https://github.com/Joshua-Ciffer/Crypter
	goto :eof

:eof (
	if /i "%error%"=="" (
		exit /b 0
	) else (
		exit /b %error%
	)
)	
endlocal