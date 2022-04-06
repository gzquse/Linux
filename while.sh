#!/bin/bash
i=1
while [ $i -le 30 ]
do
	if[ $i -le 9 ]
	then
		user=test0$i
	else
	user=test$i
	fi
	
	if id -u $user &>/dev/null
	then
	userdel -r $user
	else
	echo "$user is not exists..."
	let i++
done
