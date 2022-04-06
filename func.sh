#!/bin/bash
PING(){
  for l in {200..254};do
    if ping -c -1 -W 1 192.168.0.$l &> /dev/null; then
      echo "192.168.0.$l" is up"
    else 
      echo "down"
    fi
   done
}
PING

