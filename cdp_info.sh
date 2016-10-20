#!/bin/bash

INT=$1

if [ -z $INT ]; then
	echo "No interface was declared!"
	exit 1
else
	sudo tcpdump -nn -v -i $INT -s 1500 -c 1 'ether[20:2] == 0x2000'
fi
