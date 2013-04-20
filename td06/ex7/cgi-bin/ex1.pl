#!/usr/bin/perl

use CGI qw/:standard/;

my $q = CGI->new;

print $q->header();

print $q->start_html('Gestion de formulaire'),
	$q->h1('Gestion de formulaire'),
	$q->start_form(-method=>"GET", -action=>""), "Quel est votre nom ? ",
  $q->textfield('name'),
  $q->submit,
  $q->end_form,
  $q->hr,
  $q->end_html();
