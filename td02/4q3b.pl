#! /usr/bin/perl -l
$df=`df`;
@tab=split /\m/, $df;
for $l (@tab){
    if ($l =~/^.*(\d+)\%/){
	if ($1 >= 90){
	    print "\033[1;31m $l \033[0m";
	}
    }else{
	print $l
    }
}
