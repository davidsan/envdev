#! /usr/bin/perl -nal
BEGIN{
    our $d=shift;
}
my $dp=$F[3];
$dp=~ s/:.*//;

push @{$hash{$dp}}, $F[-4];

END{
    $,=" ";
    foreach (keys %hash){
	print "$_ : @{$hash{$_}}" if ($_ =~/$d/);
    }
}
