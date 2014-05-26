#! /usr/bin/perl -snl

#use warnings;

BEGIN{
	$words=0;
	$chars=0;
	$lines=0;
}
$words+=scalar (split /\s/);
$chars+=scalar (split //);
$lines++;

END{
	if($w == 1)
	{
		print $words;
	}
	elsif($c == 1)
	{
		print $chars;
	}
	elsif($l == 1)
	{
		print $lines;
	}
	else
	{
		print "$lines\t$words\t$chars";
	}
}
