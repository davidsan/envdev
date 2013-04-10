#!/usr/bin/perl -w -l
use strict;
use Tk;
our $cpt = 0;
my $mw_ref = MainWindow -> new(-title => "Dessin");
my $dessin = $mw_ref -> Canvas (-width => 1000,
                                -height => 500,
                                -background => 'white') -> pack;
my @id = ();
$mw_ref -> repeat (1 => sub {
    my $x = int(rand 950);
    my $y = int(rand 450);
    my $one=$dessin -> createOval ($x,$y,$x+3,$y+3,-fill=>"black", -tags=>$cpt++);
   # push @id, $one;
    
    $dessin->bind($cpt, '<Enter>' => sub {
    	$dessin->delete($one);

    	});
    
    });
# todo evenement de suppresion

#$dessin->bind('<Button-1>' => sub {
#	print "ok";
#	$dessin->delete(pop(@id));
	 
	#$dessin->itemconfigure('red',-fill =>"red");
	
#	});


MainLoop;
