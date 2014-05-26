#! /usr/bin/perl -n
BEGIN{
	my $data="";
}

$data.=$_;

END{
	$str=pack ("u", $data);
	$str=~s/^.//;
	$str=~s/`/A/g;
	$str=~tr/ -_/A-Za-z0-9+/;
	print $str;
}