:: https://gist.github.com/GreepTheSheep/d95921bc9cb10287c39611bd429d9273

@echo off

:: Set here your path to 7-Zip, including 7z.exe
SET zip="C:\Program Files\7-Zip\7z.exe"
SET plugins="%UserProfile%\OpenplanetTurbo\Plugins"
SET name="Only Music"

IF EXIST %name%.op (
    del %name%.op
)
%zip% a -mx1 -tzip %name%.op info.toml src

SET is_locked=true
echo:
echo Waiting for file to be unlocked. (Ctrl + C to cancel)

:check_lock
    :: Check if original plugin file is still used by trackmania
    2>nul (
        >>%plugins%\%name%.op echo off
    ) && SET is_locked=false
    
    :: Wait for a short time and try again
    if %is_locked% == true (
        pathping 127.0.0.1 -n -q 1 -p 100 > NUL
        goto :check_lock
    )

copy %name%.op %plugins%