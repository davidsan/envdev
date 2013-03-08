#!/usr/bin/perl -l

$ARGV[0]=~/^([^\/]*\/)+(.+)/;

if($ARGV[1]){
    $suffix=$ARGV[1];
}

$2=~/^(.*)$ARGV[1]/;
print $1;
