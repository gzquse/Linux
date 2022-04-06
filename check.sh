#!/bin/bash
sh -n $1 2>/tmp/err
if [ $? -eq "0" ]
then 
    cat /tmp/err
    read -p "Please input q to exit" n
    if [ -z $n ] # 是否为空
    then
        vim $1
        exit
    fi
    if[ $n == "q" ]
    then
        exit
    else
        vim $1
        exit
    fi
fi
