package auxlib;

use strict;
use warnings;

sub new {
    my $self = {};
    $self->{partie} = (());
    bless($self);
    return $self;
}
sub generate {
    my $n = shift;

    for (my $i = 0; $i < $n; $i++) {
	for (my $j = 0; $j < $n; $j++) {
		# tirage
		my $percent=int(rand(100));
		my $case;
		if($percent < 15){
			$case="mine";
		}else{
			$case="vide"
		}
		# set case
		push @{$self->{partie}[$i]}, $case;
	}
    }
    return $self->{partie};
}


sub explorefrom {
	my $ligne=shift;
	my $colonne=shift;
	my @res=();
	# FIXME : dépassement du plateau
	if($self->{partie}[$ligne+1][$colonne]=="vide"){ # bas
		$self->{partie}[$ligne+1][$colonne]=="vide_vue";
		my @tmp=(($ligne+1, $colonne));
		push @tmp, explorefrom($ligne+1, $colonne);
		@res=union @res, @tmp;
	}
	if($self->{partie}[$ligne-1][$colonne]=="vide"){ # haut
		$self->{partie}[$ligne-1][$colonne]=="vide_vue";
		my @tmp=(($ligne-1, $colonne));
		push @tmp, explorefrom($ligne-s1, $colonne);
		@res=union @res, @tmp;
	}
	if($self->{partie}[$ligne][$colonne+1]=="vide"){ # gauche
		$self->{partie}[$ligne][$colonne+1]=="vide_vue";
		my @tmp=(($ligne, $colonne+1));
		push @tmp, explorefrom($ligne, $colonne+1);
		@res=union @res, @tmp;
	}
	if($self->{partie}[$ligne][$colonne-1]=="vide"){ # droite
		$self->{partie}[$ligne][$colonne-1]=="vide_vue";
		my @tmp=(($ligne, $colonne-1));
		push @tmp, explorefrom($ligne, $colonne-1);
		@res=union @res, @tmp;
	}
	return @res;
}

sub union{
	my @a=shift;
	my @b=shift;
	my @union = ();
	foreach $e (@a) { $union{$e} = 1 }
	foreach $e (@b) { $union{$e} = 1 }
	return keys %union;
}

1;