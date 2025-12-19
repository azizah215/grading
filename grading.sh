#!/bin/bash

pass=0
fail=0

read sid
read a
read b
read c

sum=`expr $a + $b + $c`
per=`expr $sum \* 100 / 300`

if [ $per -ge 80 ]
then
 gr=A+
elif [ $per -ge 70 ]
then
 gr=A
elif [ $per -ge 60 ]
then
 gr=B
elif [ $per -ge 40 ]
then
 gr=C
else
 gr=F
fi

if [ "$gr" = "F" ]
then
 fail=`expr $fail + 1`
else
 pass=`expr $pass + 1`
fi

echo student $sid
echo total $sum
echo percentage $per
echo grade $gr
echo pass $pass
echo fail $fail
