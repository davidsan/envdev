#!/usr/bin/perl -l

$l1="hello world";
@db=(\$l1);

print ${$db[0]};
