cd "%appdata%\.minecraft"

taskkill /f /im MinecraftTweakerUpdater.exe
taskkill /f /im MinecraftLauncher.exe

del options.txt
del optionsof.txt
del launcher_profiles.json
del launcher_log.txt
del unins000.exe
del unins000.dat
del MinecraftTweakerUpdater.exe

ren options.txt.old options.txt
ren optionsof.txt.old optionsof.txt
ren launcher_profiles.json.old launcher_profiles.json
ren launcher_log.txt.old launcher_log.txt

pause
