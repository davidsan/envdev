#! /bin/bash

cat $1 | sed -e '/\/\*/','/\*\//d' -e 's|//.*$||'
