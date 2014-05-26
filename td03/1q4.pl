#! /usr/bin/perl -nl

BEGIN{
	my $sum=0;
}

@tab=split /\s/;

foreach (@tab){
	if ($_=~/\d+/){
		$sum+=$_;
	}else{
		print "NaN : $_";
	}
}

END{
	print $sum;
}
