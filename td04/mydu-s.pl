#!/usr/bin/perl -l
my $size=0;
if(-d $ARGV[0]){
  foreach (<$ARGV[0]/*>){
      my @t=stat;
      $size+=$t[7];
  }
}

print $size;
