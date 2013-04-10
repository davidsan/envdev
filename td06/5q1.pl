#!/usr/bin/perl
use Tk;
$top = MainWindow->new();
$canvas = $top->Canvas(-width => 300, -height => 300, -bg=>"white")->pack();
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
                          -fill => 'yellow');
          $canvas->create('rectangle',
                          3*(20*$j+10),
                          3*10*$i,
                          3*(20*$j+20),
                          3*(10*$i+10),
                          -fill => '#556600');
      }
  }
MainLoop();
