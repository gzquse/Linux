#!/bin/bash
read -p "输入目录" DIR
[ -d $DIR  ] && ls $DIR || echo "$DIR is not exists"
