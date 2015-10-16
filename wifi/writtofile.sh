#!/bin/sh

OP=$1

if [ "$1" == "-a" ]; then
	ID=$2
	FIRST=$3
	LAST=$4
	AGE=$5
	echo "$ID,$FIRST,$LAST,$AGE" >> users.dat
	echo "User Added"
elif [ "$1" == "-l" ]; then
	cat users.dat
fi
