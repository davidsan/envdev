#! /usr/bin/perl

use strict;
use warnings;

my $s=0;
my $t=0;
my @userinput=<STDIN>;

foreach (@userinput){
    chomp;
    if ($_ eq 'serviette'){
	$s+=1;
    }elsif($_ eq 'torchon'){
	$t+=1;
    }else{
	print "error"
    }
}
print "\n";
print "$s serviette(s)\n";
print "$t torchon(s)\n"


