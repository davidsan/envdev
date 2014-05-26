#! /usr/bin/perl -s

use strict;
use warnings;
my ($fn, $fh, $l, $acc, @fortunes);
our $number;

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

if(!$number){
	$number=1;
}
for (my $i = 0; $i < $number; $i++) {
	print $fortunes[int(rand(@fortunes))]."\n";
}
