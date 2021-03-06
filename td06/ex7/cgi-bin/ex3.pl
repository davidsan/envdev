#!/usr/bin/perl -wls
use strict;
use LWP::UserAgent; use HTML::Form;
our ($user);
# check that the user name is given on the command line
(defined $user and !$user eq '') or die "$0: incorrect user name\n";
# definition of the web user agent accepting cookies
my $bot = LWP::UserAgent -> new (
agent => 'Mozilla/5.0 (X11; U; Linux x86_64; en-US; rv:1.7.6) '. 'Gecko/20050512 Firefox',
requests_redirectable => ['GET', 'HEAD', 'POST'],
);
# web page we want to access
my $url = "http://localhost:8000/cgi-bin/ex2.pl";
my $response = $bot -> get ($url);
$response -> is_success or die $response -> status_line;
# get the all the forms appearing on the login web page
my @forms = HTML::Form->parse($response->decoded_content, $response->base);
# set the values of the login form (first form we got)
$forms[0]->find_input('name')->value($user);
# send the request to connect
$response = $bot -> request( $forms[0]->click); $response -> is_success or die $response -> status_line;
print $response->decoded_content();
