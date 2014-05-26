#! /usr/bin/perl -nl
# man nl

BEGIN{
	$count=1;
}
if($_=~/^$/){
	print;
}else{
	print "     $count  $_";
	$count++;
}
