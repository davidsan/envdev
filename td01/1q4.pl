#! /usr/bin/perl -l


use warnings;

@a=split /\s/, "@ARGV[0]";
print "@a";
$toto=@a[$ARGV[1]-1];

print $toto;
