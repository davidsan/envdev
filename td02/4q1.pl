#! /usr/bin/perl

$user=`whoami`;
chomp($user);
print "Bonjour ", $user,", bienvenue sur ",`hostname`;
