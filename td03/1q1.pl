#! /usr/bin/perl

use strict;
use warnings;
my ($fn, $fh, $l, $acc, @fortunes);

foreach $fn (@ARGV){
	open $fh, $fn or die "error";
	while($l=<$fh>){
		if($l=~/^%$/){
			push @fortunes, $acc;
			$acc="";
		}else{
			$acc.=$l;
		}
	}
}

print $fortunes[int(rand(@fortunes))];

