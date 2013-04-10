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
        $canvas->create('oval',
                        3*20*$j,
                        3*10*$i,
                        3*(20*$j+10),
                        3*(10*$i+10),
                        -fill => $couleur[$cpt++ % 3]);
        $canvas->create('rectangle',
                        3*(20*$j+10),
                        3*10*$i,
                        3*(20*$j+20),
                        3*(10*$i+10),
                        -fill => $couleur[$cpt++ % 3]);
      }
  }
MainLoop();
