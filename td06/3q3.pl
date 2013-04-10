#!/usr/bin/perl
use Net::FTP;
$ftpobject=Net::FTP->new("132.227.68.60");
$ftpobject->login("anonymous","");
$ftpobject->put($ARGV[0]);
