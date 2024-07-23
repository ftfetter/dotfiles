#!/bin/zsh

if [[ "$(hyprctl monitors)" =~ "\s\(ID [1-9]+[0-9]*\)" ]]; then
	if [[ $1 == "open" ]]; then
		hyprctl keyword monitor "eDP-1,1920x1080,1920x0,1"
	else
		hyprctl keyword monitor "eDP-1,disable"
	fi
fi
