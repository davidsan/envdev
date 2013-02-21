#! /usr/bin/perl -l


#use strict;
use diagnostics;
diagnostics::enable;

my $f;
my @fortune;
$/="%";
foreach $f (@ARGV){
    open F, $f;
    while (<F>){
	$_=~ s/%//;
	$fortune[$.]=$_;

    }
    close F;
}

print $fortune[rand(@fortune-1)+1];
