#!/usr/bin/perl
use Net::DNS;
open RESOLV,"/etc/resolv.conf";
@servers = <RESOLV>;
@servers=grep {/nameserver/} @servers;
s/[ˆ[:blank:]]*// foreach (@servers);
chomp foreach (@servers);
foreach $host (@ARGV) {
    lookupaddress($host,@servers);
}
# only slightly modified from example in the Net::DNS manpage
sub lookupaddress{
    my($hostname)= shift;
    foreach $server (@servers)
    {
        my $res = Net::DNS::Resolver->new;
        # $res->nameservers($server);
        my $packet = $res->query($hostname);
        if (!$packet) {
             warn "Unable to lookup data for $hostname from",
             "$server!\n$res->errorstring\n";
        }
        else
        {
             foreach my $toto ($packet->answer)
             {
                 print "found from DNS server ($server): ",
                 $toto->{address},"\n";
             }
        }
    }
}
