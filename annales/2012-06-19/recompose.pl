#!/usr/bin/perl -n
#use warnings;
BEGIN{
	our $buf="";
}

my @tab=split /\s+/, $_;

	if (80-length($buf) > length($tab[2])+1){
		$buf.=$tab[2]." ";
	}else{
		print $buf;
		$word=$tab[2];
		@sw=split //, $word;
		$n=80-length($buf);
		for (my $var = 0; $var < $n; $var++) {
			print $sw[$var];
		}
		$nw="";
		for (my $var = 0; $var < length($word)-$n; $var++){
			$nw.=$sw[$var];
		}
		$buf=$nw;
		print "\n";
	}

END{
	print $buf."\n";
}