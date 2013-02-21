#! /bin/bash

sed -rn '/\\begin\{[^}]*\}/, /\\end\{[^}]*\}/' -p $1
