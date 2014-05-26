#! /usr/bin/perl -nl
use strict;
use warnings;
BEGIN{
	my $t=0; # torchons
	my $s=0; # serviettes
}

if ($_ =~ /^torchon$/){
	$t++;
}elsif ($_ =~/^serviette$/){
	$s++;
}else{
	print STDERR "unrecognized entry : ", $_;
}
END{
	print "torchons : ", $t;
	print "serviettes : ", $s;
}
