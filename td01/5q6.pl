#! /usr/bin/perl -nl
use warnings;

BEGIN{
	my $count=0;
}
my @a=split /:/, $_;
$count++ if $a[0]=~/^$a[4]$/;

END{
	print $count;
}
