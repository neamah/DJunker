#!/bin/bash
echo Hello $USER

# The target file
FILE=

# Target sweep directory
# TODO: Don't hard-code this directory. Search "smartly"
DIRNAME=Downloads
DIRPATH=~/Downloads

# Trash directory
TRASH=~/.Trash

# Generate a random bit
RAND=$(gshuf -i0-1 -n1)

# Randomly: Either give an old file, or give a random file

if [ $RAND = 0 ]; then
    echo "Here's a RANDOM file. Do you want to delete it?"
    FILE=$(ls $DIRPATH | gshuf -n 1)
else
    echo "Here's a really OLD file! Do you want to delete it?"
    cd ../../Downloads
    FILE=$(ls -tr1 | head -1)
    cd ../Projects/DJunker
fi

echo $FILE

select ANS in "Yes" "No" "Later"; do
    case $ANS in
        Yes )
        echo "Okay! It's now in Trash :-) ";
        mv $DIRPATH/$FILE $TRASH;
        break;;
        No ) echo "Okay, we're keeping the file!"; break;;
        Later ) echo "You said LATER"; break;;
    esac
done

echo "Thanks for the sweep!"
