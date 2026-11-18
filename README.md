> [!CAUTION]
> Please note that this worm was made for educational and research purposes. I do not condone pranking your friends with Wurst or using it maliciously as doing that constitutes as a [cybercrime](https://www.cps.gov.uk/prosecution-guidance/cybercrime-prosecution-guidance).
> I am not responsible for any of your decisions.
# Wurst worm
This is a self-made worm/malware that targets \*.cht (Perchat chat) files.

How it works is that it kills Perchat before recursively finding \*.cht (Perchat chat) files, starting from the directory where it was executed from. When it finds a cht file it adds its own message to the chat.
```
this is wurst, a cool program -Wurst Fri 11/13/2026
check it out! -Wurst Fri 11/13/2026
(The source code for the worm)
-Wurst Fri 11/13/2026
```
After this, it writes a resource exhauster to the Startup folder. What this means is that every time you boot up into the computer, the resource exhauster runs and starves the computer of resources. When it's done writing the resource exhauster, it displays it's ASCII message. For more details, check out wurst-format.bat
## Why?
While programming Perchat, I used text to save chatlogs. Obviously, this is not the best decision as malware can self-replicate to these files or take information from them. Wurst is an example of this issue.

I am currently working on a fork(?) on Perchat titled Kolmitt which resolves these issues within the program.

## Blocking the worm
A fix I made is to check if it's Command Prompt and to check if the Command Prompt process is titled "Wurst". Although not foolproof and innocent programs going under that name can get blocked, it is pretty effective. Reminds me of Creeper and Reaper.
## Remediation
To remediate, try and stop the script from running. Once you stopped the script, use the command prompt to kill all of the tasks. If you cannot, boot up a Windows PE (e.g. Sergei Strelec) and delete the Mad.bat file from there. ***There is no need for you to factory reset your computer***.
I believe you can use WinRE aswell to remove the mad.bat script.

To remove the messages it sent, you edit them out using a program like notepad.
