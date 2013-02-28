#!/usr/bin/perl -l

foreach $f (@ARGV){
    if(-f $f){
	$hd=`head -n1 $f`;
	if($hd=~/^#!\S*\/perl/){
	    chmod 0700, $f;
	}
    }
}
