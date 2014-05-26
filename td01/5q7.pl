#! /usr/bin/perl -nl

BEGIN{
	my $sum=0;
}

@tab=split /\s/;

foreach (@tab){
	$sum+=$_;
}

END{
	print $sum;
}
