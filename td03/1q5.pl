#! /usr/bin/perl -nal

@chiffres=grep{/\d+/} @F;
@mots=grep{/\w+/} @F;
$s+=$_ foreach (@chiffres);
print "somme : ", $s;
$,=" ";
print "mots :", @mots;
