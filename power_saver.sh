#!/bin/bash

ip li 
echo "Enter the id of the Network Card starting with \"wl\":"
read id
echo "Press 1 to turn ON Power Save mode or Press 2 to turn it OFF:"
read choice
if [ $choice -eq 1 ]
then
    sudo iw $id set power_save on
    sudo iw $id get power_save
else
    sudo iw $id set power_save off
    sudo iw $id get power_save
fi
