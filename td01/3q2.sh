#! /bin/bash

find $1 -type f -exec grep "$2" {} \;
