# DJunker
Prompt you to remove old files or random files from your system to help keep it clean and de-junked.

## System requirements
Currently only works on Macs, since that's the file structure I'm using for the code.

## Current capabilities
* Hard-coded to look in the Downloads directory, since that seems to be the most cluttered for me. I'll be adding
code to make it look in other directories too. You can hard-code it to look in the directory of your choice.
* Randomly chooses between giving you a random file or the oldest file.
* Moves a file to TRASH if you want to delete it.

## TODO:
* Give the least recently opened file.
* Enable sweeping multiple directories.
* This currently only works when user runs the exec file. Need to make it an involuntary prompt.

## Bugs:
* The mv to trash command won't work for files that have spaces in their names.
