#!/usr/bin/perl

my $n=shift @ARGV;
@array=('a'..'z', 'A'..'Z', '0'..'9');


for (my $var = 0; $var < $n; $var++) {
	$r=int(rand(@array));
	print $array[$r];
}

