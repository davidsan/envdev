#! /usr/bin/perl -nl

BEGIN{
	$t=0; # torchons
	$s=0; # serviettes
}

if ($_ =~ /^torchon$/){
	$t++;
}elsif ($_ =~/^serviette$/){
	$s++;
}

END{
	print "torchons : ", $t;
	print "serviettes : ", $s;
}
