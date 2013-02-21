#! /usr/bin/perl -nal -F';'

# shift
$nom=shift @F;
$prenom=shift @F;
$somme=0;
$somme+=$_ foreach @F;
#print $somme;
$somme/=@F;


print ("$nom;$prenom;$somme");

