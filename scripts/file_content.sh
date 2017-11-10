#!/usr/bin/env bash

FILE=/etc/test_file2

echo "Test File" > $FILE

echo "./command arg1 arg2 arg3 > output" >> $FILE
echo "pwd" >> $FILE
echo "sudo rm -rf /" >> $FILE