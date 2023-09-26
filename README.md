# Windows System File Checker Verifier

This is a script that automates the **SFC**, and **DISM repair** commands that are built into windows.  
Those commands essentially scans through and repairs windows system files.  

## How to use
1. Download the "Windows Integrity Verifier.bat" file from [the releases page](https://github.com/JakeCarterDPM/WindowsVerifier/releases).
2. Right click on the **"Windows Integrity Verifier.bat"** file, and run the file as an administrator.
3. Follow the prompts.

## FAQ

Q: How do I extract files from zip?  
A: In Windows, you can right click on a zip and click **"Extract all"**  

Q: Does it need to be in administrator mode?  
A: Yes, as window's SFC (System File Checker) tool requires administrator permissions. More info here: [https://support.microsoft.com/en-us/topic/use-the-system-file-checker-tool-to-repair-missing-or-corrupted-system-files](https://support.microsoft.com/en-us/topic/use-the-system-file-checker-tool-to-repair-missing-or-corrupted-system-files-79aa86cb-ca52-166a-92a3-966e85d4094e)  

Q: Why did I make this?  
A: I can never remember the full DISM command, and this saves me from typing out two full commands. Now I only need to do it within 2 key presses!  
