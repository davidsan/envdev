#!/usr/bin/perl -nl

BEGIN{
	%hash=();

}

@words=split /\s/;

foreach (@words){
	m/^(.)/;
	#push @{$hash{$1}}, $_;
	$hash{$1}{$_}++;
}

END{
	foreach (keys %hash){
		print $_;
		foreach (keys %{$hash{$_}}){
			print "\t".$_;
		}
	}
}