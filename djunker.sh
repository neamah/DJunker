#!/bin/bash
echo Hello $USER

# The target file
FILE=

# Generate a random bit
RAND=$(gshuf -i0-1 -n1)

# Randomly: Either give an old file, or give a random file

if [ $RAND = 0 ]; then
    echo "Here's a RANDOM file. Do you want to delete it?"
    FILE=$(ls ~/Downloads | gshuf -n 1)
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


