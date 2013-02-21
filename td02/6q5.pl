#! /usr/bin/perl 
# arg: chaine file0 file1...


foreach $f (@ARGV){
    if($f=~/^toto/){
	open F, $f;
	while(<F>){
	    my $str=$_;
	    $str=~s/chaine/tutu/g;
	    print $str;#$str;
	}
    }
    else{
	print "no";
    }
}
