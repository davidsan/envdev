#!/usr/bin/perl

$target = pop;
$source = @ARGV? shift: "-";
open INPUT, $source;

@s = stat INPUT;
$mode = $s[2];

$omode = sprintf "%03o", $mode;
$pmode = substr $omode, -3;
print "begin $pmode $target\n";
while (<INPUT>){
    print pack "u", $_;
}
print "`\nend\n";
