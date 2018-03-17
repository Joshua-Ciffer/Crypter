::Written by Joshua Ciffer::
::Last Revised: 2/16/2017::
@Echo off
::Initialization::
:Initialization
@Echo off
Title Initializing Crypter...
Color
Cls
Echo Initializing Program...
SetLocal ENABLEEXTENSIONS
SetLocal ENABLEDELAYEDEXPANSION
Set SaveFile=pm
Sleep 10
Cls
Title Crypter Initialized
Echo Program Initialization complete. Press any key to initialize the Encryption Key.
Echo.
Pause
Cls
Goto :EncryptionKey
::Fatal Error Prevention
Else (
Cls
Title FATAL ERROR!
Echo Something went wrong... Press any key to Re-Initialize the program.
Echo.
Pause
Cls
Goto :Initialization
Pause
Exit
)