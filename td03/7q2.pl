#!/usr/bin/perl -nals


BEGIN{
    my %hash=();
    my $d;
    print "$date";
}
$,=" ";
$"=" ";


#print $F[3];
if($date==undef || $F[3]=~/$date/){
    push @{$hash{$F[0]}}, $F[6];
}


END{
    foreach my $k ($date? sort (keys %hash): (keys %hash)){
	print "$k : ";
	foreach(@{$hash{$k}}){
	    print "$_";
	}
    }
}
