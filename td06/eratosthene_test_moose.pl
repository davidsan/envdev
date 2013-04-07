#!/usr/bin/perl -l
use eratosthene;


$obj1=Eratosthene->new(liste_a_traiter => [2..100]);
$obj1=Eratosthene->new(100);


for (@{$obj1->crible}){
	print if /\d+/;
}
