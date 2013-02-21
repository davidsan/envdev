#! /usr/bin/perl

@tab=split / /, $ARGV[0];
print $tab[$ARGV[1]-1];

print ${split / /, $ARGV[0]}[$ARGV[1]–1];
