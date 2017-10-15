#!/usr/bin/env bash


if [ "$1" == "1" ]; then
    export NUMBER="ONE"
elif [ "$1" == "2" ]; then
    export NUMBER="TWO"
elif [ "$1" == "3" ]; then
    export NUMBER="THREE"
else
    export NUMBER="MANY"
fi