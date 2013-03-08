#!/usr/bin/perl -ln
@tab=$_=~ /([^:]+:\/\/)([^\/]*)(\/.*)\?(.*)/; 

print "protocol: $tab[0]"; 
print "server: $tab[1]"; 
print "file: $tab[2]"; 

@args=split "&",$tab[3]; 
print "arguments:"; 
foreach(@args){
    $_ =~ /([^=]*)=(.*)/; 
    print "  ", $1, " = ", $2;
}
