#! /bin/bash

echo $1 | egrep "([^ ]*) .*\1.*\1"
