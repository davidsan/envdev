#! /usr/bin/perl -nal
BEGIN{
    our $ip=shift;
}
push @{$hash{$F[0]}}, $F[-4];

END{
    $,=" ";
    foreach (keys %hash){
	print "$_ : @{$hash{$_}}" if ($_ =~/$ip/);
    }
}
