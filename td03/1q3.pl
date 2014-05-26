#! /usr/bin/perl -s

use strict;
use warnings;

my ($fn, $fh, $l, $acc);
my @fortunes;
my %hash = ();
our $number;

use constant DEBUG => 0;

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

if($number>@fortunes){
	$number=@fortunes;
}

for (my $i = 0; $i < $number; $i++) {
	my $r;
	while(){
		$r=int(rand(@fortunes));
		if(!$hash{$r}){
			$hash{$r}=1; # something different of zero
			last;
		}else{
			print "$r is already used..\n" if DEBUG;
		}
	}
	print $fortunes[$r]."\n";
}
