#!/usr/bin/perl -n


@tab=split / /;

foreach (@tab){
	$r=int (rand (5))+1;
	system("tput setaf $r");
	print "$_ ";
}