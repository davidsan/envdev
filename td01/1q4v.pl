#!/usr/bin/perl -l
use warnings;
$chaine=$ARGV[0];
$n=$ARGV[1];

@tab= split / /,$chaine;
print $tab[$n-1];
