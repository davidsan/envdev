#! /usr/bin/perl

use strict;

open (F1, "<$ARGV[0]") or die ("error");
open (F2, "<$ARGV[1]") or die ("error");

while(1){
    my $l1=<F1>;
    my $l2=<F2>;
    last unless ($l1 || $l2);
    print $l1, "\t", $l2;
}
close F1;
close F2;
       
