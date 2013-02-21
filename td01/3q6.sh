#! /bin/bash

if grep -E "(.)\1\1" ; then
    echo ok
else
    echo ko
fi
