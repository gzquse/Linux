#!/bin/bash
read -p "Please enter a character, press enter to continue:" KEY
case "$KEY" in
	[a-z]|[A-Z])
		echo "input is letter"
		;;
	[0-9])
		echo "input is number"
		;;
	*)
		echo "Input is other"
esac
