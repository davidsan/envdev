#!/usr/bin/perl -nla


BEGIN{
    my %hash=();
   
}
$,=" ";
$"=" ";

push @{$hash{$F[0]}}, $F[6];


END{
    print "end";
    foreach my $k (keys %hash){
	print "$k : ";
	foreach(@{$hash{$k}}){
	    print "$_";
	}
    }
}
