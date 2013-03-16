#! /usr/bin/perl -ln
use Data::Dumper
our(%data, $section);
next if /^\*$/;
$section = $1 if /^\[(\w+)\]/;
%{$data{$section}}{$1}=$2 if /^([^=}+])=(.*)$/;
END{
	print Dumper(\%data);
}
