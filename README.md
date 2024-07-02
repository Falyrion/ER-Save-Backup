# ER-Save-Backup

A very simple Batch Script to generate backups for Eldenring savegame files.

- [Set up](#setup)
- [How to use](#howtouse)
- [How it works](#howitworks)
- [How to revert a save](#howtorevert)

<a name="setup"></a>
# ✨ How to set up

1. Download the [Batch File](ER-Savefile-Backup.bat)
2. Save it at a location of your liking
3. Right click the file and select `Edit with Editor`
4. Edit the config section described in the file

<a name="howtouse"></a>
# ✨ How to use

Double-click the Batch File to create a new backup of your save file. 1 Save Files can be generated per minute.

<a name="howitworks"></a>
# ✨ How it works

When you execute the script, it will take a copy of your local save file and stores it in a folder called `backups` in your Eldenring Save File Folder (by default this is `C:\Users\<yourusername>\AppData\Roaming\EldenRing`). Backup Files will get a suffix, describing the date and time of its creation. The format for this is `yyyymmdd_hhmm`.

<a name="howtorevert"></a>
# ✨ How to revert a save

If you want to re-use a save-file from an older date, search for it in the Folder `backups`. Save files are named after the date and time it was created. The format is `yyyymmdd_hhmm`. Remove this date suffix and place the file in your default Save Game Folder (by default this is `C:\Users\<yourusername>\AppData\Roaming\EldenRing\<yoursteamid>`).
