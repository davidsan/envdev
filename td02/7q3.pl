#! /usr/bin/perl -nal

push @{$hash{$F[-4]}}, $F[0];

END{
    $,=" ";
    foreach (keys %hash){
	print "$_ : @{$hash{$_}}";
    }
}
