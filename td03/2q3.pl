#! /usr/bin/perl -nls

#use strict;
our $u, $hash, @tab;

if ($u){
    $hash{$_}++;
}else{
    push @tab, $_;
}

END{
    $t=$t//" ";
    sub trinum{
	@ta=split /$t/, $a;
	@tb=split /$t/, $b;
	return $ta[$k]-$tb[$k];
    }

    sub trialpha{    
	@ta=split /$t/, $a;
	@tb=split /$t/, $b;
	return $ta[$k]cmp$tb[$k];
    }

    @tab=keys%hash if($u);

    if($n){
	if($r){
	    print foreach reverse sort {&trinum} @tab;
	}else{
	    print foreach sort {&trinum} @tab;
	}
    }
    else{
	if($r){
	    print foreach reverse sort {&trialpha} @tab;
	}else{
	    print foreach sort {&trialpha} @tab;
	}
    }
}
