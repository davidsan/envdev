#! /usr/bin/perl -nl

use warnings;

BEGIN{
	my %hash=();
}
while ($_ =~ m/href="([^"]*)"/g){
	$hash{$1}++;
}

END{
	foreach (keys %hash){
		print $_, " : ", $hash{$_};
	}
}