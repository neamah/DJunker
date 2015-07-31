#!/bin/bash
echo Hello $USER 

# Generate a random bit
RAND=$(gshuf -i0-1 -n1)

# Randomly: Either give an old file, or give a random file

if [ $RAND = 0 ]; then
    echo "Here's a random file. Do you need it?"
    ls ~/Downloads | gshuf -n 1
else 
    echo "Here's a really old file! Do you still need it?"
    cd ../../Downloads
    ls -tr1 | head -1
fi 


