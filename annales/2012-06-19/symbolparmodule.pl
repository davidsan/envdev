#!/usr/bin/perl -nl

BEGIN{
	my %hash=();
}

if ($_=~m/\[(.*)\]$/){
	$hash{$1}++;
}else{
	$hash{kernel}++;
}

END{
	foreach (keys %hash){
		print "$_ : $hash{$_}";
	}
}