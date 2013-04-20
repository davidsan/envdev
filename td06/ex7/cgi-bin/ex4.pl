#!/usr/bin/perl -w -l
use strict;
use CGI ':standard';
my $rob = CGI->new;
if (scalar ($rob->param) > 0 && !$rob->param('name') eq "") {
    # creation du cookie
my $cook = $rob->cookie ( -name => "utilisateur",
-value => $rob->param('name') );
print $rob->header(-cookie=>$cook);
print $rob->start_html('Gestion de formulaire');
print "Votre nom est: ", $rob->em($rob->param('name')), $rob->hr; }
else {
my $cookie_value = $rob ->cookie('utilisateur');
print $rob->header();
print ( $rob->start_html('Gestion de formulaire'), $rob->h1('Gestion de formulaire'), $rob->start_form(-method=>"GET", -action=>""), "Quel est votre nom ? ", $rob->textfield(-name=>'name', -value=>$cookie_value), $rob->submit,
            $rob->end_form,
            $rob->hr );
}
print $rob->end_html();
