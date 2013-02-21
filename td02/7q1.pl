 perl -nale '
push @{$hash{$F[0]}}, $F[-4];
END{ $,=" ";
foreach (keys %hash){
print "$_ : ", @{$hash{$_}};
}}' apachelog


