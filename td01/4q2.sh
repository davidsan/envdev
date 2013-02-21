#! /bin/bash

sed -r -e 's/\\begin{[^{]*}(\[[^]]*\])?//'
-e 's/\\end{[^}]*}//' $1
