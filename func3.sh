#!/bin/bash
PING(){
  if ping -c2 $1 &> /dev/null
  then
     return 0
  else
     return 1
  fi
}
for i in {10..20}
do
  PING 127.0.0.$i
  if [$? -eq 0]
  then 
    echo "up"
  else
    echo "down"
  fi
done
