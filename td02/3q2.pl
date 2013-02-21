#! /usr/bin/perl -nal -F';'

# shift
$nom=shift @F;
$prenom=shift @F;
$somme=0;
$somme+=$_ foreach @F;
#print $somme;
$somme/=@F;
BEGIN{
    %h=();
}
$h{"$nom;$prenom"}= $somme;

END{
    foreach $key (sort {$a <=> $b} keys %h) {
	print "$key;$h{$key}";
    }
}
