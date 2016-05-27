@ECHO OFF
/. gemaakt door eric braad dit is voor alle SAH medewerkers bewerken mag maar als men het wil
/. verkopen graag laten weten op ericbr@studentaanhuis.nl ( ook voor verzoeken & verbeteringen )
set versienummer=v3.6
title Student aan huis versie %versienummer% by eric
color 0a
IF "%PROCESSOR_ARCHITECTURE%"=="x86" (set bit=x86) else (set bit=x64)
set "windows="
VER | find  " 5.1." > nul && set windows=XP
VER | find  " 5.2." > nul && set windows=XP 64-Bit or Server 2003 or Server 2003 R2 
VER | find  " 6.0." > nul && set windows=Vista or server 2008
VER | find  " 6.1." > nul && set windows=Win7 or server 2008 R2
VER | find  " 6.2." > nul && set windows=Windows 8
VER | find  " 6.3." > nul && set windows=Server 2012 R2 or Windows 8.1
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
echo    _____ __            __           __                    __  __      _     
echo   / ___// /___  ______/ /__  ____  / /_____ _____ _____  / / / /_  __(_)____
echo   \__ \/ __/ / / / __  / _ \/ __ \/ __/ __ `/ __ `/ __ \/ /_/ / / / / / ___/
echo  ___/ / /_/ /_/ / /_/ /  __/ / / / /_/ /_/ / /_/ / / / / __  / /_/ / (__  ) 
echo /____/\__/\__,_/\__,_/\___/_/ /_/\__/\__,_/\__,_/_/ /_/_/ /_/\__,_/_/____/   
echo.                                                                   
Echo     %bit% processor architecture 			versie %versienummer%
echo     %windows%		Made by EricTheDreamer
echo     %internet%
echo.
Echo   .-.     .-.     .-.     .-.     .-.     .-.     .-.     .-.     .-. 
Echo .'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `._.'   `.
echo.
echo 		1. Microsoft Office installeren
echo 		2. Anti-Virus programma installeren
echo      		3. Drivers installeren
echo 		4. Overige software installeren
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
if /i "%choice%"=="u" goto updateSOFTWARE
if /i "%choice%"=="x" exit
if not "%choice%"=="" ECHO "%choice%" Is niet een geldige optie
Pause
Goto :ReturnToBaseLine
pause
:updateSOFTWARE
cls
echo Check ftp://ftp.stuntelsaanhuis.nl/ voor een nieuwe versie
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
echo \___/                                                           \___/
echo /   \                                                           /   \
echo \___/        Terug(Z)                                           \___/
echo /   \___     Afsluiten(X)                                    ___/   \
echo \___/   \___     ___     ___     ___     ___     ___     ___/   \___/
echo /   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \
echo \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/
echo     \___/   \___/   \___/   \___/   \___/   \___/   \___/   \___/
echo.
set /p choice=Nummer : 
if /i "%choice%"=="1" goto :o3
if /i "%choice%"=="2" goto :o7
if /i "%choice%"=="3" goto :o10BITCHECK
if /i "%choice%"=="4" goto :o10hs
if /i "%choice%"=="5" goto :o13BITCHECK
if /i "%choice%"=="6" goto :o13hs
if /i "%choice%"=="7" goto :o13hb
if /i "%choice%"=="z" goto :ReturnToBaseLine
if /i "%choice%"=="x" exit
if not "%choice%"=="" ECHO "%choice%" Is niet een geldige optie
Pause
goto :Office
:o3
cls
start /d "..\Microsoft Office 2003 Pro NL\" SETUP.EXE
goto :office
:o7
cls
start /d "..\Microsoft Office 2007 Enterprise NL\" SETUP.EXE
goto :office
:o10BITCHECK
cls
IF "%bit%"=="x86" (goto :o10a) else (goto :o10b)
:o10a
cls
start /d "..\Microsoft Office 2010 Pro Plus (x86 x64) NL\Office Pro Plus 2010 32 NL\" SETUP.EXE
goto :office
:o10b
cls
start /d "..\Microsoft Office 2010 Pro Plus (x86 x64) NL\Office Pro Plus 2010 64 NL\" SETUP.EXE
goto :office
:o10hs
cls
start /d "..\Office 2010 Student en Home install DVD\" setup.exe
goto :office
:o13BITCHECK
cls
IF "%bit%"=="x86" (goto :o13a) else (goto :o13b)
:o13a
cls
start /d "..\Microsoft Office 2013 professional plus x86 x64 NL\x86\" SETUP.EXE
goto :office
:o13b
cls
start /d "..\Microsoft Office 2013 professional plus x86 x64 NL\x64\" SETUP.EXE
goto :office
:o13hs
cls
start /d "..\MS Office 2013 SL NL\" Setup.X86.nl-NL_HomeStudentRetail.exe
goto :office
:o13hb
cls
start /d "..\Microsoft Office 2013 Home & Business\" Setup.X64.nl-NL_HomeBusinessRetail.exe
goto :office
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
echo  `.   `.                                                         .'   .' 
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
set /p choice=Nummer : 
if /i "%choice%"=="1" goto :a15BITCHECK
if /i "%choice%"=="2" goto :avast15
if /i "%choice%"=="3" goto :MalwareBytes
if /i "%choice%"=="4" goto :BullG
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
goto :Anti
:a15b
cls
start /d "..\Avg\" avg_isct_x64_all_2015_5577a8546.exe
goto :Anti
:avast15
cls
echo -- SETUP NOT VALID -- // hieronder is geen officele setup // 
start /d "..\Avast! Pro Antivirus 2015 - 10.0.2206\" AvastProAntivirus2015-10.0.2206-BRSHARES.exe
goto :Anti
:Malwarebytes 
cls
start /d "..\Malwarebytes Anti-Malware Premium 2.0.4.1028 Final + Keys [ATOM]\" mbam-setup-2.0.4.1028.exe
goto :Anti
:BullG
cls
Echo ---Internet Verbinding Vereist---
Start /d "..\BullGuard\" BullGuardDownloader.exe
Goto :Anti
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
set /p choice=Nummer : 
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
set /p choice=Nummer : 
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
echo ::      2. Winrar 5.01 (company licence)                     ::
echo ::      3. Tweak                                             ::
echo ::      4. Windows Live Essenials                            ::
echo ::      5. Ccleaner                                          ::
echo ::      6. XBMC                                              ::
echo ::                                                           ::
echo ::      Terug(Z)                                             ::
echo ::      Afsluiten(X)                                         ::
echo ::                                                           ::
echo ::                                                           ::
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
set /p choice=Nummer : 
if /i "%choice%"=="1" goto :adblock
if /i "%choice%"=="2" goto :winrar1
if /i "%choice%"=="3" goto :Tweak
if /i "%choice%"=="4" goto :WLE
if /i "%choice%"=="5" goto :cleanersetup
if /i "%choice%"=="6" goto :XBMCSETUP
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
goto :Installerz
:TOOLZMENU
color 0d
cls
echo.
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo ::                      Toolz Menu                           ::
echo ::                                                           ::
echo ::      1. Hirens Boot 15.2                                  ::
echo ::      2. Hack Wachtwoorden ( Slashblade )                  ::
echo ::      3. PCI DataBase                                      ::
echo ::      4. Delete ALL Temp                                   ::
echo ::      5. WSUServer                                         ::
echo ::                                                           ::
echo ::      Terug(Z)                                             ::
echo ::      Afsluiten(X)                                         ::
echo ::                                                           ::
echo ::                                                           ::
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo :::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
echo.
set /p choice=Nummer : 
if /i "%choice%"=="1" goto :hirensboot
if /i "%choice%"=="2" goto :SLASHBLADE2
if /i "%choice%"=="3" goto :pcidatabaseWhat
if /i "%choice%"=="4" goto :DTEMP
if /i "%choice%"=="5" goto :WSUServer
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
if /i "%ANSWER%"=="Z" goto :TOOLZMENU
goto :pcidatabaseWhat
:pcidatabasedev
cls
echo          Zoek het onbekende apparaat op. klik op details.
echo Zoek het hardware id en typ het 4 cijferige nummer hieronder in.
Start devmgmt.msc
echo.
set /p SC= DEV Nummer : 
start "" /b "iexplore.exe" http://www.pcidatabase.com/search.php?device_search_str=%SC% 
goto :TOOLZMENU
:pcidatabaseven
cls
echo          Zoek het onbekende apparaat op. klik op details.
echo Zoek het hardware id en typ het 4 cijferige nummer hieronder in.
Start devmgmt.msc
echo.
set /p SC= VEN Nummer : 
start "" /b "iexplore.exe" http://www.pcidatabase.com/search.php?vendor_search_str=%SC%
goto :TOOLZMENU
:WLE
cls
start /d "..\Windows Live\" WindowsLive.exe
goto :Installerz
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
set /p choice=Nummer : 
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