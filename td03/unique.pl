#! /usr/bin/perl -n
BEGIN{
	my %hash=();
}

$hash{$_}++;

END{
	print keys %hash;
}
