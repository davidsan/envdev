#!/usr/bin/perl -l

open(IN, "<$ARGV[0]");
while(<IN>){
    chomp;
    @line=split / /;
    $mat[$line[0]][$line[1]]=$line[2];
}

$,=" ";
foreach $l (@mat){
    print @{$l};
}

