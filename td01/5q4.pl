#! /usr/bin/perl -nl
use warnings;
BEGIN{
	my $count=0;
}
$count++;
END{
	print $count;
}
