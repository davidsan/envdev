package Eratosthene;
use Exporter;
@Export = (&new, &crible);

sub new{
	my $self=shift;
	my $n=shift;
	return bless { liste_a_traiter=>[2..$n], premier=>[]};
}

sub crible{
	my $self=shift;
	foreach my $n (0..@{$self->{liste_a_traiter}}-1){
		if (exists $self->{liste_a_traiter}[$n]){	
			push @{$self->{premier}}, $n;	
			foreach my $i (($n+1)..@{$self->{liste_a_traiter}}){
				delete $self->{liste_a_traiter}[$i] 
				if $self->{liste_a_traiter}[$i] % $self->{liste_a_traiter}[$n]==0;
			}
		}
	}
	return $self->{liste_a_traiter};
}

1;