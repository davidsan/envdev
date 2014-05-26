#! /usr/bin/perl -nl
BEGIN{
	our $num=shift @ARGV;
}
if($_=~/$num\s*(\w*)\s*(\w*)/){
	print $1, " ", $2;
}