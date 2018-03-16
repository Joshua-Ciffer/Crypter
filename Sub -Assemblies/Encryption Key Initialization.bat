::****************************************************
::*Program......: Encryption Key Initialization.bat  *
::*Written By...: Joshua Ciffer                      *
::*Date.........: 2/17/2017                          *
::*Build........: 2.17.2017.3                        *
::****************************************************
@echo off

REM Add encryption key, menu, ability to add/change cyphers

::Encryption Key Initialization:: (Encryption Key Initialization.bat Build: 2.17.17.3)
:EncryptionKey
Title Initializing Encryption Key...
Echo Initializing Encryption Key...
Cls
Echo *Encryption key should go here*
Pause
Set (set CHAR[a]=UDFM45) & (set CHAR[b]=H21DGF) & (set CHAR[c]=FDH56D) & (set CHAR[d]=FGS546) & (set CHAR[e]=JUK4JH)
Set (set CHAR[f]=ERG54S) & (set CHAR[g]=T5H4FD) & (set CHAR[h]=RG641G) & (set CHAR[i]=RG4F4D) & (set CHAR[j]=RT56F6)
Set (set CHAR[k]=VCBC3B) & (set CHAR[l]=F8G9GF) & (set CHAR[m]=FD4CJS) & (set CHAR[n]=G423FG) & (set CHAR[o]=F45GC2)
Set (set CHAR[p]=TH5DF5) & (set CHAR[q]=CV4F6R) & (set CHAR[r]=XF64TS) & (set CHAR[s]=X78DGT) & (set CHAR[t]=TH74SJ)
Set (set CHAR[u]=BCX6DF) & (set CHAR[v]=FG65SD) & (set CHAR[w]=4KL45D) & (set CHAR[x]=GFH3F2) & (set CHAR[y]=GH56GF)
Set (set CHAR[z]=45T1FG) & (set CHAR[1]=D4G23D) & (set CHAR[2]=GB56FG) & (set CHAR[3]=SF45GF) & (set CHAR[4]=P4FF12)
Set (set CHAR[5]=F6DFG1) & (set CHAR[6]=56FG4G) & (set CHAR[7]=USGFDG) & (set CHAR[8]=FKHFDG) & (set CHAR[9]=IFGJH6)
Set (set CHAR[0]=87H8G7) & (set CHAR[ ]=FSJ39N)
Cls
Title Encryption Key Initialized
Echo Encryption Key Initialized. Continue to the Main Menu.
Echo.
Pause
Cls
Goto :MainMenu
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