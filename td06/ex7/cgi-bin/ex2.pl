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
  $q->hr;

if (scalar ($q->param) > 0 && !$q->param('name') eq "") { print
        "Votre nom est: ", $q->em($q->param('name')),
        $q->hr;
}

print  $q->end_html();
