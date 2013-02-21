#! /usr/bin/perl -l -s

use strict;
use diagnostics;
diagnostics::enable;

my $f;
my @fortune;
my $i;
our $number;

$/="%";
foreach $f (@ARGV){
    open F, $f;
    while (<F>){
	$_=~ s/%//;
	$fortune[$.]=$_;

    }
    close F;
}

#for ($i=0; $i<$number; $i++){
for ($i=0; $i< $number; $i++){
    print $fortune[rand(@fortune-1)+1];
}

$cit=rand (@fortune-1)+1);
print $fortune[$cit];
delete $fortune[$cit];
@fortune=grep{defined} @fortune;
