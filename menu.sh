#!/bin/env bash

# Path to the options file
options_file="/home/theprimate/scripts/commands.txt"

# Read options from the file into an array

# Use rofi to display the options and get user selection
selected_option=$(cat $options_file| awk -F ']' '{ print $1 }' | rofi -dmenu -i -p "Who do you want to chat with?" -l 5 -normal-window)

echo $selected_option | python /home/theprimate/scripts/extract.py | xargs -I {} bash -c "{}"

