#!/usr/bin/perl
use Tk;
@couleur=('red','green','blue');
$top = MainWindow->new();
$canvas = $top->Canvas(-width => 300, -height => 300)->pack();
my ($i,$j);
for($i=0;$i<10;$i++)
  {
    for($j=0;$j<5;$j++)
      {
        $tmp=$couleur[$cpt++ % 3];
        $canvas->create('oval',
                        3*20*$j,
                        3*10*$i,
                        3*(20*$j+10),
                        3*(10*$i+10),
                        -fill => $tmp, -tag => [$tmp]);
        $tmp=$couleur[$cpt++ % 3];
        $canvas->create('rectangle',
                        3*(20*$j+10),
                        3*10*$i,
                        3*(20*$j+20),
                        3*(10*$i+10),
                        -fill => $tmp, -tag => [$tmp]);
      }
  }
$canvas->bind('blue', '<Button-1>' => sub {print "bleu\n"});
$canvas->bind('red', '<Button-1>' => sub {print "rouge\n"});
$canvas->bind('green', '<Button-1>' => sub {print "vert\n"});
MainLoop();
