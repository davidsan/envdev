#! /usr/bin/perl -n
BEGIN{
	$count=0;
}
$count+=length $_;
END{
	print $count;
}
