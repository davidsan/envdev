#! /bin/bash

sed -E 's/('$1')/'`tput setaf 1`'\1'`tput setaf sig 0`'/' 
