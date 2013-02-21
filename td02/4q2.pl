#! /usr/bin/perl

$user=`whoami`;
chomp($user);
print "\033[31m";
print "Bonjour ", $user,", bienvenue sur ",`hostname`;
print "\033[39m";

print "\n";
