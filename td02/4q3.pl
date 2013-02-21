#! /usr/bin/perl

$percent=90;
foreach (`df`){
    @array=split (" ", $_) ;
    $res=$array[2]/($array[2]+$array[3]+1)*100;
#    print $res;
    for($i=0; $i<@array;$i++){
	print "\033[31m" if($i==8 && $res>90);
	print "$array[$i]\t";
	print "\033[39m";
    }
    print "\n";
}
