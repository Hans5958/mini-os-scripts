taskkill /f /im discord.exe
del /f /q "%userprofile%\AppData\Roaming\BetterDiscord\*.json"
"%userprofile%\AppData\Local\Discord\Update.exe" --processStart Discord.exe