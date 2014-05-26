#! /usr/bin/perl -n
BEGIN{
	$count=0;
}
$count++;
END{
	print $count;
}
