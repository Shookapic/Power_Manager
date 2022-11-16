#!/bin/bash

echo "Press 1 to turn ON Power Save mode or Press 2 to turn it OFF:"
read choice
if [ $choice -eq 1 ]
then
    sudo iw wlo1 set power_save on
    echo "Power Save -> ON"
else
    sudo iw wlo1 set power_save off
    echo "Power Save -> OFF"
fi
