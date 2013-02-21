#! /usr/bin/perl -l

$phrase=$ARGV[0];
$n=$ARGV[1];


@mot = split(" ",$phrase);

print $mot[$n-1];
