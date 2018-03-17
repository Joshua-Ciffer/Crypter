::****************************************************
::*Program......: Program Initialization.bat         *
::*Written By...: Joshua Ciffer                      *
::*Date.........: 5/24/2017                          *
::*Build........: 5.24.17.2                          *
::****************************************************
::Sub-Assembly::
@Echo off
:ProgramInitialization
Echo ProgramInitialization
Goto :
:MainMenu
Echo MainMenu
Goto :
:EncryptionMenu

:TextEncryption

:FilesEncryption

:DecryptionMenu

:HelpMenu

:DebugPassowrd

:DebugMenu

:DebugGoto

:DebugCMD

:DebugPS

:About

:FatalErrorPrevention

REM

::Program Initialization:: (Program Initialization.bat FINAL Build: 5.24.17.2)
:ProgramInitialization
	@Echo off
	Cls
	Title Initializing Crypter...
	Color 1F
	SetLocal EnableExtensions
	SetLocal EnableDelayedExpansion
	Set SaveFile=pm
	Cls
	Goto :MainMenu
::Fatal Error Prevention
	Goto :FatalErrorPrevention