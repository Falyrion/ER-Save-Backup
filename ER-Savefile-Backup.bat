@echo off
setlocal enableDelayedExpansion

:: --------------------------------------------------------------------------
:: Config
:: --------------------------------------------------------------------------

:: Set savegame directory
SET savegame_dir=C:\Users\yourusername\AppData\Roaming\EldenRing

:: Set steam ID
:: -> This is the name of the folder inside your savegame directory
SET steam_id=12345678912345678

:: Files to backup
:: -> Use "sl2" if you only want to save vanilla
:: -> Use "co2" if you only want to save seemless coop mod
:: -> Use "sl2 co2" if you want to save both
SET files_to_save=co2

:: --------------------------------------------------------------------------
:: Do not modify code past this point
:: --------------------------------------------------------------------------

@REM Define variables
SET backup_path=%savegame_dir%\backups
SET suffix=%date:~-4%%date:~3,2%%date:~0,2%_%time:~0,2%%time:~3,2%

@REM Create dir
if not exist %backup_path% (
    mkdir %backup_path%
)

@REM Copy files loop
for %%a in (%files_to_save%) do (
    @REM Set file path
    SET "in_path=%savegame_dir%\%steam_id%\ER0000.%%a"

    @REM Copy files
    if exist !in_path! (
        copy !in_path! %backup_path%\ER0000_%suffix%.%%a
    )
)

@REM pause