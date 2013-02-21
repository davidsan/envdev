#! /bin/bash

phrase=$1
n=$2

set $phrase
i=1
while [ $i -lt $n ]; do
    shift
    i=$((i+1))
done
echo $1
