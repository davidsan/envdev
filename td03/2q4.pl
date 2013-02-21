#! /usr/bin/perl -nl

@matches = $_ =~/<a href="([^"]+)">/g;

foreach (@matches){
    $hash{$_}++;
}


END{
    print "$_ $hash{$_}" foreach keys %hash;

}
