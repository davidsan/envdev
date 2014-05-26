#! /usr/bin/perl -n
BEGIN{
	$count=0;
}
$count+=scalar (split /\s/);
END{
	print $count;
}
