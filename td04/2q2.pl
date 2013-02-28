#!/usr/bin/perl -l

foreach $f (glob "*"){
    if(-f $f){
	$hd=`head -n1 $f`;
	if($hd=~/^#![\S]*/){
	    chmod 0700, $f;
	}
    }
}
